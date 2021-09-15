package main

import (
	"flag"
	"fmt"
	"log"
	"net"

	"github.com/afairon/nautilus/server"
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

	flag.Parse()

	fmt.Printf("Nautilus Server\nCheckout: %s\nBuilt Time: %s\n", Checkout, Time)

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
