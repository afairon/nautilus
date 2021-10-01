package interceptor

import (
	"context"

	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc"
)

// Interceptor manages services, sessions and permissions.
type Interceptor struct {
	session session.Session
}

// NewInterceptor creates a new interceptor with session management.
func NewInterceptor(sessionManager session.Session) *Interceptor {
	return &Interceptor{
		session: sessionManager,
	}
}

// UnaryInterceptor intercepts unary requests and pass it to the
// handler.
func (interceptor *Interceptor) UnaryInterceptor(
	ctx context.Context,
	req interface{},
	info *grpc.UnaryServerInfo,
	handler grpc.UnaryHandler,
) (interface{}, error) {
	return handler(ctx, req)
}

// StreamInterceptor intercepts streaming requests and pass it to the
// handler.
func (interceptor *Interceptor) StreamInterceptor(
	srv interface{},
	stream grpc.ServerStream,
	info *grpc.StreamServerInfo,
	handler grpc.StreamHandler,
) error {
	return handler(srv, stream)
}
