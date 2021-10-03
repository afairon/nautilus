package main

import (
	"flag"
	"fmt"
	"net"
	"os"
	"time"

	"github.com/afairon/nautilus/db"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/internal/media/fs"
	"github.com/afairon/nautilus/internal/media/s3"
	"github.com/afairon/nautilus/logger"
	"github.com/afairon/nautilus/server"
	"github.com/afairon/nautilus/session"
	log "github.com/sirupsen/logrus"
)

var (
	Commit string
	Time   string
)

func main() {
	// Flag definitions
	flagBindAddr := flag.String("bind_addr", "0.0.0.0", "address to bind the server to")
	flagGRPCPort := flag.Int("grpc_port", 50051, "gRPC port to listen on")

	flagGRPCWeb := flag.Bool("grpc_web", false, "enable gRPC web")
	flagHTTPAddr := flag.String("http_addr", "127.0.0.1", "http address to bind the server to")
	flagHTTPPort := flag.Int("http_port", 8080, "http port to listen on")

	flagPGHost := flag.String("pg_host", "127.0.0.1", "postgres host")
	flagPGPort := flag.Int("pg_port", 5432, "postgres port")
	flagPGUser := flag.String("pg_user", "", "the user to be connected to the database")
	flagPGPassword := flag.String("pg_password", "", "the password of the user")
	flagPGDBName := flag.String("pg_dbname", "", "the name of the database to be connected")

	flagSecret := flag.String("secret", "", "jwt secret key")

	flagS3 := flag.Bool("s3", false, "use s3 as backend object storage")
	flagDataPath := flag.String("data", "data", "path of data directory")
	flagDataRootURL := flag.String("root", "", "root url")

	flagVerbose := flag.Bool("verbose", false, "output log to stdout")
	flagLogOutput := flag.String("output", "grpc.log", "log output file")

	// Parse arguments
	flag.Parse()

	fmt.Printf("Nautilus Server\nCommit: %s\nBuilt Time: %s\n", Commit, Time)

	if *flagSecret == "" {
		fmt.Fprintln(os.Stderr, "error: jwt secret key empty")
		os.Exit(1)
	}

	if *flagPGUser == "" {
		fmt.Fprintln(os.Stderr, "error: postgres user not provided")
		os.Exit(1)
	}

	if *flagPGPassword == "" {
		fmt.Fprintln(os.Stderr, "error: postgres password not provided")
		os.Exit(1)
	}

	if *flagPGDBName == "" {
		fmt.Fprintln(os.Stderr, "error: postgres database name not provided")
		os.Exit(1)
	}

	// Setup logger
	if *flagVerbose {
		logger.Setup("")
	} else {
		logger.Setup(*flagLogOutput)
	}

	// Connect to postgres.
	db, err := db.Connect(*flagPGHost, *flagPGPort, *flagPGUser, *flagPGPassword, *flagPGDBName)
	if err != nil {
		log.Fatal("error: ", err)
	}
	defer db.Close()

	// Session manager
	sessionManager := session.NewJWTManager(*flagSecret, 1*time.Hour)

	// Object storage interface
	var mediaStorage media.Store

	// Choose object storage backend.
	if *flagS3 {
		mediaStorage = s3.NewStore()
		log.Info("Using S3 object storage backend.")
	} else {
		mediaStorage = fs.NewStore(*flagDataPath, *flagDataRootURL)
		log.Info("Using FS object storage backend.")
	}

	addr := fmt.Sprintf("%s:%d", *flagBindAddr, *flagGRPCPort)
	lis, err := net.Listen("tcp", addr)
	if err != nil {
		log.Fatal("failed to listen: ", err)
	}
	defer lis.Close()

	// Create grpc server.
	grpcServer := server.CreateGRPCServer(db, sessionManager, mediaStorage)

	if *flagGRPCWeb {
		// grpc web enabled
		// Create grpc web server.
		grpcWebServer := server.CreateGRPCWebServer(grpcServer, *flagHTTPAddr, *flagHTTPPort)

		log.Info("gRPC Web server listening at ", grpcWebServer.Addr)

		// Run grpc web in a goroutine.
		go grpcWebServer.ListenAndServe()
	}

	// Run grpc server.
	log.Info("gRPC server listening at ", lis.Addr())
	if err = grpcServer.Serve(lis); err != nil {
		log.Fatal("failed to serve:", err)
	}
}
