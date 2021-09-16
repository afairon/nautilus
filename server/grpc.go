package server

import (
	"time"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	_ "github.com/lib/pq"
	"google.golang.org/grpc"
)

func CreateGRPCServer() *grpc.Server {
	opts := []grpc.ServerOption{
		grpc.MaxRecvMsgSize(8 * 1024 * 1024),
		grpc.MaxSendMsgSize(8 * 1024 * 1024),
		grpc.ConnectionTimeout(120 * time.Second),
	}

	server := grpc.NewServer(opts...)

	registerServices(server)

	return server
}

func registerServices(server *grpc.Server) {
	pb.RegisterAccountServer(server, &service.AccountService{})
	pb.RegisterAgencyServiceServer(server, &service.AgencyService{})
}
