package server

import (
	"crypto/tls"
	"time"

	"github.com/afairon/nautilus/config"
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
	"google.golang.org/grpc/credentials"
)

const (
	maxRecvMsgSize    = 8 * 1024 * 1024
	maxSendMsgSize    = 8 * 1024 * 1024
	connectionTimeout = 120 * time.Second
)

func loadTLSCredentials(conf *config.SSL) (credentials.TransportCredentials, error) {
	// Load server's certificate and private key
	serverCert, err := tls.LoadX509KeyPair(conf.Certificate, conf.Key)
	if err != nil {
		return nil, err
	}

	config := &tls.Config{
		Certificates: []tls.Certificate{serverCert},
		ClientAuth:   tls.NoClientCert,
	}

	return credentials.NewTLS(config), nil
}

// CreateGRPCServer returns a gRPC server with services.
func CreateGRPCServer(conf *config.GRPC, db *sqlx.DB, session session.Session, mediaStorage media.Store) (*grpc.Server, error) {
	// gRPC options
	var opts []grpc.ServerOption

	// Check if ssl is enabled
	if conf.SSL != nil {
		// Use TLS
		tlsCredentials, err := loadTLSCredentials(conf.SSL)
		if err != nil {
			return nil, err
		}

		opts = []grpc.ServerOption{
			grpc.Creds(tlsCredentials),
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
	} else {
		opts = []grpc.ServerOption{
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
	}

	// Create gRPC server
	server := grpc.NewServer(opts...)

	// Registers services to server
	registerServices(server, db, session, mediaStorage)

	return server, nil
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
