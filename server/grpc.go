package server

import (
	"time"

	"github.com/afairon/nautilus/interceptor"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/afairon/nautilus/session"
	"github.com/afairon/nautilus/store"
	"github.com/jmoiron/sqlx"
	"google.golang.org/grpc"
)

// CreateGRPCServer returns a gRPC server with services.
func CreateGRPCServer(db *sqlx.DB, sessionManager session.Session, mediaStorage media.Store) *grpc.Server {
	// Create interceptor.
	interceptor := interceptor.NewInterceptor(sessionManager)

	// gRPC options
	opts := []grpc.ServerOption{
		grpc.MaxRecvMsgSize(8 * 1024 * 1024),
		grpc.MaxSendMsgSize(8 * 1024 * 1024),
		grpc.ConnectionTimeout(120 * time.Second),
		grpc.UnaryInterceptor(interceptor.UnaryInterceptor),
		grpc.StreamInterceptor(interceptor.StreamInterceptor),
	}

	// Create gRPC server
	server := grpc.NewServer(opts...)

	// Registers services to server
	registerServices(server, db, sessionManager, mediaStorage)

	return server
}

// registerServices registers services to gRPC.
func registerServices(server *grpc.Server, db *sqlx.DB, sessionManager session.Session, mediaStorage media.Store) {
	store := store.NewStore(db)
	pb.RegisterAccountServer(server, &service.AccountService{Store: store, Session: sessionManager, Media: mediaStorage})
}
