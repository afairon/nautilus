package server

import (
	"time"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/grpc"
)

// CreateGRPCServer returns a gRPC server with services.
func CreateGRPCServer() *grpc.Server {
	// gRPC options
	opts := []grpc.ServerOption{
		grpc.MaxRecvMsgSize(8 * 1024 * 1024),
		grpc.MaxSendMsgSize(8 * 1024 * 1024),
		grpc.ConnectionTimeout(120 * time.Second),
	}

	// Create gRPC server
	server := grpc.NewServer(opts...)

	// Registers services to server
	registerServices(server)

	return server
}

// registerServices registers services to gRPC.
func registerServices(server *grpc.Server) {
	pb.RegisterAccountServer(server, &service.AccountService{})
}
