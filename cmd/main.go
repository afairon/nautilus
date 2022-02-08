package main

import (
	"context"
	"flag"
	"fmt"
	"net"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/afairon/nautilus/config"
	"github.com/afairon/nautilus/db"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/internal/media/fs"
	"github.com/afairon/nautilus/internal/media/s3"
	"github.com/afairon/nautilus/logger"
	"github.com/afairon/nautilus/server"
	"github.com/afairon/nautilus/session"
	log "github.com/sirupsen/logrus"
	"google.golang.org/grpc"
)

var (
	Commit string
	Time   string
)

// run configures and runs the server.
func run(conf *config.Config) error {
	if conf.GetRedis() == nil {
		if conf.GetSession().Secret == "" {
			fmt.Fprintln(os.Stderr, "error: jwt secret key empty")
			os.Exit(1)
		}
	}

	if conf.GetPostgreSQL().User == "" {
		fmt.Fprintln(os.Stderr, "error: postgres user not provided")
		os.Exit(1)
	}

	if conf.GetPostgreSQL().Password == "" {
		fmt.Fprintln(os.Stderr, "error: postgres password not provided")
		os.Exit(1)
	}

	if conf.GetPostgreSQL().DBName == "" {
		fmt.Fprintln(os.Stderr, "error: postgres database name not provided")
		os.Exit(1)
	}

	// Connect to postgres.
	db2, err := db.InitGormStore("", "", "", "", 2, false)

	if err != nil {
		return err
	}

	// db, err := db.ConnectFromConfig(conf.GetPostgreSQL())
	// if err != nil {
	// 	return err
	// }
	// defer db.Close()

	// Session manager
	sessionManager := session.NewJWTManagerFromConfig(conf.GetSession())

	// Object storage interface
	var mediaStorage media.Store

	// Choose object storage backend.
	if conf.GetS3() != nil {
		log.Info("Using S3 object storage backend.")
		mediaStorage, err = s3.NewStoreFromConfig(conf.GetS3())
		if err != nil {
			return err
		}
	} else {
		log.Info("Using FS object storage backend.")
		mediaStorage = fs.NewStoreFromConfig(conf.GetFS())
	}

	addr := fmt.Sprintf("%s:%d", conf.GetGRPC().Address, conf.GetGRPC().Port)
	// lis, err := net.Listen("tcp", conf.GetGRPC().Address())
	lis, err := net.Listen("tcp", addr)
	if err != nil {
		return err
	}
	defer lis.Close()

	stop := make(chan os.Signal, 1)
	signal.Notify(stop, os.Interrupt, syscall.SIGINT, syscall.SIGTERM)

	// Create grpc server.
	grpcServer, err := server.CreateGRPCServer(conf.GetGRPC(), db2, sessionManager, mediaStorage)
	if err != nil {
		return err
	}

	log.Info("gRPC server listening at ", lis.Addr())

	// Run grpc server in a goroutine.
	go func() {
		if err = grpcServer.Serve(lis); err != nil && err != grpc.ErrServerStopped {
			log.Error("failed to serve: ", err)
		}
	}()

	// Check if grpc_web is enabled.
	if conf.GetHTTP().GRPCWeb {
		// grpc web enabled
		// Create grpc web server.
		httpServer := server.CreateGRPCWebServer(grpcServer, conf.GetHTTP().Address, conf.GetHTTP().Port)

		log.Info("gRPC Web server listening at ", httpServer.Addr)

		ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
		defer cancel()

		// Run grpc web in a goroutine.
		go func() {
			if conf.Server.HTTP.SSL != nil {
				if err := httpServer.ListenAndServeTLS(conf.GetHTTP().SSL.Certificate, conf.GetHTTP().SSL.Key); err != nil && err != http.ErrServerClosed {
					log.Error("failed to serve: ", err)
				}
			} else {
				if err := httpServer.ListenAndServe(); err != nil && err != http.ErrServerClosed {
					log.Error("failed to serve: ", err)
				}
			}
		}()

		<-stop
		httpServer.Shutdown(ctx)

	} else {
		<-stop
	}

	grpcServer.GracefulStop()

	return nil
}

func main() {
	// Flag definitions
	flagBindAddr := flag.String("bind_addr", "127.0.0.1", "address to bind the server to")
	flagGRPCPort := flag.Int("grpc_port", 50051, "gRPC port to listen on")

	flagGRPCWeb := flag.Bool("grpc_web", false, "enable gRPC web")
	flagHTTPAddr := flag.String("http_addr", "127.0.0.1", "http address to bind the server to")
	flagHTTPPort := flag.Int("http_port", 8080, "http port to listen on")

	flagPGHost := flag.String("pg_host", "127.0.0.1", "postgres host")
	flagPGPort := flag.Int("pg_port", 5432, "postgres port")
	flagPGUser := flag.String("pg_user", "", "the user to be connected to the database")
	flagPGPassword := flag.String("pg_password", "", "the password of the user")
	flagPGDBName := flag.String("pg_dbname", "", "the name of the database to be connected")
	flagPGSSL := flag.Bool("pg_ssl", false, "connect to postgres with ssl")

	flagSecret := flag.String("secret", "", "jwt secret key")
	flagSessionTimeout := flag.Int64("session_timeout", 3600, "session timeout")

	flagDataPath := flag.String("data", "storage", "path of data directory")
	flagDataBaseURL := flag.String("base", "", "base url for data storage")

	flagConfigFile := flag.String("config", "", "path to configuration file")

	flagVerbose := flag.Bool("verbose", false, "output log to stdout")
	flagLogOutput := flag.String("output", "grpc.log", "log output file")

	// Parse arguments
	flag.Parse()

	var conf *config.Config
	var err error

	fmt.Printf("Nautilus Server\nCommit: %s\nBuilt Time: %s\n", Commit, Time)

	// Application configuration
	if *flagConfigFile == "" {
		// Create configuration from command line arguments.
		conf = config.New()
		conf.SetGRPC(*flagBindAddr, *flagGRPCPort)
		conf.SetHTTP(*flagHTTPAddr, *flagHTTPPort, *flagGRPCWeb)
		conf.SetSession(*flagSecret, *flagSessionTimeout)
		conf.SetPostgreSQL(*flagPGHost, *flagPGPort, *flagPGUser, *flagPGPassword, *flagPGDBName, *flagPGSSL)
		conf.SetFS(*flagDataPath, *flagDataBaseURL)
		conf.SetLog(*flagLogOutput)
	} else {
		// Load configuration from file.
		conf, err = config.LoadConfig(*flagConfigFile)
		if err != nil {
			log.Fatal(err)
		}
	}

	// Setup logger
	if *flagVerbose {
		logger.Setup("")
	} else {
		logger.Setup(conf.GetLog().Path)
	}

	// Run server
	if err = run(conf); err != nil {
		log.Fatal(err)
	}
}
