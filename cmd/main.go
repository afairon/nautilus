package main

import (
	"flag"
	"fmt"
	"log"
	"net"

	server "github.com/afairon/nautilus/server"
	"github.com/afairon/nautilus/server/db"
)

var (
	Checkout string
	Time     string
)

func main() {
	flagBindAddr := flag.String("bind_addr", "0.0.0.0", "address to bind the server to")
	flagGRPCPort := flag.Int("grpc_port", 50051, "gRPC port to listen on")

	flagGRPCWeb := flag.Bool("grpc_web", false, "enable gRPC web")
	flagHTTPAddr := flag.String("http_addr", "127.0.0.1", "http address to bind the server to")
	flagHTTPPort := flag.Int("http_port", 8080, "http port to listen on")

	flagDBHost := flag.String("db_host", "139.59.101.136", "database host")
	flagDBPort := flag.Int("db_port", 5432, "port of database")
	flagDBUser := flag.String("db_user", "boss", "the user to be connected to the database")
	flagDBPassword := flag.String("db_password", "IAmNewToLinux1@8259", "the password of the user")
	flagDBDBName := flag.String("db_name", "test", "the name of the database to be connected")

	flag.Parse()

	fmt.Printf("Nautilus Server\nCheckout: %s\nBuilt Time: %s\n", Checkout, Time)

	connStr := fmt.Sprintf("host=%s port=%d user=%s "+
		"password=%s dbname=%s sslmode=require",
		*flagDBHost, *flagDBPort, *flagDBUser, *flagDBPassword, *flagDBDBName)
	db := db.NewDB(connStr)

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
