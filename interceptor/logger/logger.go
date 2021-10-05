package logger

import (
	"context"
	"time"

	"github.com/afairon/nautilus/logger"
	"google.golang.org/grpc"
)

// UnaryInterceptor intercepts unary requests and pass it to the handler.
func UnaryServerInterceptor() grpc.UnaryServerInterceptor {
	return func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
		start := time.Now()

		resp, err := handler(ctx, req)
		entry := logger.NewGRPCEntry(info.FullMethod, start)
		if err != nil {
			entry.Error(err)
			return nil, err
		}

		entry.Info(info.FullMethod)

		return resp, nil
	}
}

// StreamServerInterceptor intercepts streaming requests and pass it to the handler.
func StreamServerInterceptor() grpc.StreamServerInterceptor {
	return func(srv interface{}, stream grpc.ServerStream, info *grpc.StreamServerInfo, handler grpc.StreamHandler) error {
		start := time.Now()

		err := handler(srv, stream)
		entry := logger.NewGRPCEntry(info.FullMethod, start)
		if err != nil {
			entry.Error(err)
			return err
		}

		entry.Info(info.FullMethod)

		return nil
	}
}
