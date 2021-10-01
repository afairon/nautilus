package interceptor

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

// accessRoles defines the permission and roles for different services.
// Services that are available to everyone should not be defined in here.
var accessRoles = map[string][]pb.AccountType{}

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

// WrappedServerStream is a thin wrapper around grpc.ServerStream that allows modifying context.
type WrappedServerStream struct {
	grpc.ServerStream
	// WrappedContext is the wrapper's own Context. You can assign it.
	WrappedContext context.Context
}

// Context returns the wrapper's WrappedContext, overwriting the nested grpc.ServerStream.Context()
func (w *WrappedServerStream) Context() context.Context {
	return w.WrappedContext
}

// WrapServerStream returns a ServerStream that has the ability to overwrite context.
func WrapServerStream(stream grpc.ServerStream) *WrappedServerStream {
	if existing, ok := stream.(*WrappedServerStream); ok {
		return existing
	}
	return &WrappedServerStream{ServerStream: stream, WrappedContext: stream.Context()}
}

// UnaryInterceptor intercepts unary requests and pass it to the
// handler.
func (interceptor *Interceptor) UnaryInterceptor(
	ctx context.Context,
	req interface{},
	info *grpc.UnaryServerInfo,
	handler grpc.UnaryHandler,
) (interface{}, error) {
	account, err := interceptor.authorize(ctx, info.FullMethod)
	if err != nil {
		return nil, err
	}
	if account != nil {
		ctx = context.WithValue(ctx, session.User, account)
	}

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
	// Wrapper allows to modify streaming context.
	wrappedStream := WrapServerStream(stream)

	ctx := stream.Context()
	account, err := interceptor.authorize(ctx, info.FullMethod)
	if err != nil {
		return err
	}
	if account != nil {
		ctx = context.WithValue(ctx, session.User, account)
		wrappedStream.WrappedContext = ctx
	}

	return handler(srv, wrappedStream)
}

// authorize checks if the client has the authorization to access the service.
// If the client has the permission, the function returns the address of the account.
// Else it returns an error.
func (interceptor *Interceptor) authorize(ctx context.Context, method string) (*entity.Account, error) {
	accessibleRoles, ok := accessRoles[method]
	if !ok {
		// everyone can access
		return nil, nil
	}

	md, ok := metadata.FromIncomingContext(ctx)
	if !ok {
		return nil, status.Error(codes.Unauthenticated, "auth: metadata is not provided")
	}

	token := md["authorization"]
	if len(token) == 0 {
		return nil, status.Error(codes.Unauthenticated, "auth: authorization token is not provided")
	}

	account, err := interceptor.session.Get(token[0])
	if err != nil {
		return nil, status.Error(codes.Unauthenticated, "auth: invalid token")
	}

	for _, role := range accessibleRoles {
		if role == account.Type {
			return &account, nil
		}
	}

	return nil, status.Error(codes.PermissionDenied, "auth: no permission to access this service")
}
