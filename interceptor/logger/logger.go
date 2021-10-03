package logger

import (
	"context"
	"path"
	"time"

	log "github.com/sirupsen/logrus"
	"google.golang.org/grpc"
)

// UnaryInterceptor intercepts unary requests and pass it to the handler.
func UnaryServerInterceptor() grpc.UnaryServerInterceptor {
	return func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
		start := time.Now()

		resp, err := handler(ctx, req)
		entry := newEntry(info.FullMethod, start)
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
		entry := newEntry(info.FullMethod, start)
		if err != nil {
			entry.Error(err)
			return err
		}

		entry.Info(info.FullMethod)

		return nil
	}
}

// newEntry creates a new log entry.
func newEntry(fullMethod string, start time.Time) *log.Entry {
	service := path.Dir(fullMethod)[1:]
	method := path.Base(fullMethod)

	return log.WithFields(log.Fields{
		"grpc.service": service,
		"grpc.method":  method,
		"elapsed":      time.Since(start),
	})
}
