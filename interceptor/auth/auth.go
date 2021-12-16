package auth

import (
	"context"

	"github.com/afairon/nautilus/interceptor"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

// accessRoles defines the permission and roles for different services.
// Services that are available to everyone should not be defined in here.
var accessRoles = map[string][]pb.AccountType{
	"/agency.AgencyService/AddDiveMaster":               {pb.AGENCY},
	"/agency.AgencyService/AddHotel":                    {pb.AGENCY},
	"/agency.AgencyService/AddTrip":                     {pb.AGENCY},
	"/agency.AgencyService/AddDivingBoat":               {pb.AGENCY},
	"/agency.AgencyService/AddStaff":                    {pb.AGENCY},
	"/comment.CommentService/CreateComment":             {pb.DIVER},
	"/reservation.ReservationService/CreateReservation": {pb.DIVER},
	"/reservation.ReservationService/GetReservation":    {pb.AGENCY, pb.DIVER},
}

// AuthFunc is a function type authorizing users to access certain services.
type AuthFunc func(ctx context.Context, service string) (context.Context, error)

// UnaryInterceptor intercepts unary requests and pass it to the handler.
func UnaryServerInterceptor(auth AuthFunc) grpc.UnaryServerInterceptor {
	return func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
		ctx, err := auth(ctx, info.FullMethod)
		if err != nil {
			return nil, err
		}

		return handler(ctx, req)
	}
}

// StreamServerInterceptor intercepts streaming requests and pass it to the handler.
func StreamServerInterceptor(auth AuthFunc) grpc.StreamServerInterceptor {
	return func(srv interface{}, stream grpc.ServerStream, info *grpc.StreamServerInfo, handler grpc.StreamHandler) error {
		// Wrapper allows to modify streaming context.
		wrappedStream := interceptor.WrapServerStream(stream)

		ctx := stream.Context()
		ctx, err := auth(ctx, info.FullMethod)
		if err != nil {
			return err
		}
		wrappedStream.WrappedContext = ctx

		return handler(srv, wrappedStream)
	}
}

// Authorization returns a function which grants the user the access to use the service.
// The function will check in the accessRoles map which service is public and private,
// and who has access to it.
func Authorization(s session.Session) AuthFunc {
	return func(ctx context.Context, method string) (context.Context, error) {
		accessibleRoles, ok := accessRoles[method]
		if !ok {
			// everyone can access
			return ctx, nil
		}

		md, ok := metadata.FromIncomingContext(ctx)
		if !ok {
			return nil, status.Error(codes.Unauthenticated, "auth: metadata is not provided")
		}

		token := md["authorization"]
		if len(token) == 0 {
			return nil, status.Error(codes.Unauthenticated, "auth: authorization token is not provided")
		}

		account, err := s.Get(token[0])
		if err != nil {
			return nil, status.Error(codes.Unauthenticated, "auth: invalid token")
		}

		if account.GetAccount() == nil {
			return nil, status.Error(codes.Unauthenticated, "auth: invalid token")
		}

		for _, role := range accessibleRoles {
			if role == account.GetAccount().GetType() {
				ctx = context.WithValue(ctx, session.User, account)
				return ctx, nil
			}
		}

		return nil, status.Error(codes.PermissionDenied, "auth: no permission to access this service")
	}
}
