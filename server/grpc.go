package server

import (
	"time"

	"github.com/afairon/nautilus/handler"
	"github.com/afairon/nautilus/interceptor/auth"
	"github.com/afairon/nautilus/interceptor/logger"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/service"
	"github.com/afairon/nautilus/session"
	"github.com/jmoiron/sqlx"
	"google.golang.org/grpc"
)

const (
	maxRecvMsgSize    = 8 * 1024 * 1024
	maxSendMsgSize    = 8 * 1024 * 1024
	connectionTimeout = 120 * time.Second
)

// CreateGRPCServer returns a gRPC server with services.
func CreateGRPCServer(db *sqlx.DB, session session.Session, mediaStorage media.Store) *grpc.Server {

	// gRPC options
	opts := []grpc.ServerOption{
		grpc.MaxRecvMsgSize(maxRecvMsgSize),
		grpc.MaxSendMsgSize(maxSendMsgSize),
		grpc.ConnectionTimeout(connectionTimeout),
		grpc.ChainUnaryInterceptor(
			logger.UnaryServerInterceptor(),
			auth.UnaryServerInterceptor(auth.Authorization(session)),
		),
		grpc.ChainStreamInterceptor(
			logger.StreamServerInterceptor(),
			auth.StreamServerInterceptor(auth.Authorization(session)),
		),
	}

	// Create gRPC server
	server := grpc.NewServer(opts...)

	// Registers services to server
	registerServices(server, db, session, mediaStorage)

	return server
}

// registerServices registers services to gRPC.
func registerServices(server *grpc.Server, db *sqlx.DB, session session.Session, media media.Store) {
	repo := repo.NewRepo(db)

	accountService := service.NewAccountService(repo, session, media)
	agencyService := service.NewAgencyService(repo, session, media)
	reservationService := service.NewReservationService(repo)
	commentService := service.NewCommentService(repo)

	pb.RegisterAccountServer(server, handler.NewAccountHandler(accountService))
	pb.RegisterAgencyServiceServer(server, handler.NewAgencyHandler(agencyService))
	pb.RegisterReservationServiceServer(server, handler.NewReservationHandler(reservationService))
	pb.RegisterCommentServiceServer(server, handler.NewCommentHandler(commentService))
}
