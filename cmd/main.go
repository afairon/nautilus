package main

import (
	"flag"
	"fmt"
	"log"
	"net"

	"github.com/afairon/nautilus/db"
	"github.com/afairon/nautilus/server"
)

var (
	Commit string
	Time   string
)

func main() {
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

	flag.Parse()

	fmt.Printf("Nautilus Server\nCommit: %s\nBuilt Time: %s\n", Commit, Time)

	if *flagPGUser == "" {
		log.Fatal("error: postgres user not provided")
	}

	if *flagPGPassword == "" {
		log.Fatal("error: postgres password not provided")
	}

	if *flagPGDBName == "" {
		log.Fatal("error: postgres database name not provided")
	}

	err := db.Connect(*flagPGHost, *flagPGPort, *flagPGUser, *flagPGPassword, *flagPGDBName)
	if err != nil {
		log.Fatalf("error: %v", err)
	}
	defer db.Close()

	addr := fmt.Sprintf("%s:%d", *flagBindAddr, *flagGRPCPort)
	lis, err := net.Listen("tcp", addr)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	grpcServer := server.CreateGRPCServer()

	if *flagGRPCWeb {
		grpcWebServer := server.CreateGRPCWebServer(grpcServer, *flagHTTPAddr, *flagHTTPPort)

		log.Printf("gRPC Web server listening at %v\n", grpcWebServer.Addr)

		go grpcWebServer.ListenAndServe()
	}

	log.Printf("gRPC server listening at %v\n", lis.Addr())
	if err = grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
