package auth

import (
	"context"

	"github.com/afairon/nautilus/interceptor"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

// accessRoles defines the permission and roles for different services.
// Services that are available to everyone should not be defined in here.
var accessRoles = map[string][]model.AccountType{
	"/account.Account/Update":                           {model.ADMIN, model.AGENCY, model.DIVER},
	"/account.Account/UpdateAccount":                    {model.ADMIN, model.AGENCY, model.DIVER},
	"/account.Account/GetProfile":                       {model.ADMIN, model.AGENCY, model.DIVER},
	"/agency.AgencyService/AddDiveMaster":               {model.AGENCY},
	"/agency.AgencyService/AddHotel":                    {model.AGENCY},
	"/agency.AgencyService/AddTrip":                     {model.AGENCY},
	"/agency.AgencyService/AddDivingBoat":               {model.AGENCY},
	"/agency.AgencyService/AddStaff":                    {model.AGENCY},
	"/agency.AgencyService/AddLiveaboard":               {model.AGENCY},
	"/agency.AgencyService/UpdateTrip":                  {model.AGENCY},
	"/agency.AgencyService/UpdateHotel":                 {model.AGENCY},
	"/agency.AgencyService/UpdateLiveaboard":            {model.AGENCY},
	"/agency.AgencyService/UpdateBoat":                  {model.AGENCY},
	"/agency.AgencyService/UpdateDiveMaster":            {model.AGENCY},
	"/agency.AgencyService/UpdateStaff":                 {model.AGENCY},
	"/agency.AgencyService/ListBoats":                   {model.AGENCY},
	"/agency.AgencyService/ListDiveMasters":             {model.AGENCY},
	"/agency.AgencyService/ListHotels":                  {model.AGENCY},
	"/agency.AgencyService/ListLiveaboards":             {model.AGENCY},
	"/agency.AgencyService/ListStaffs":                  {model.AGENCY},
	"/agency.AgencyService/ListTripTemplates":           {model.AGENCY},
	"/agency.AgencyService/ListTrips":                   {model.AGENCY},
	"/agency.AgencyService/ListTripsWithTemplates":      {model.AGENCY},
	"/agency.AgencyService/ListRoomTypes":               {model.AGENCY, model.DIVER},
	"/comment.CommentService/CreateComment":             {model.DIVER},
	"/reservation.ReservationService/CreateReservation": {model.DIVER},
	"/reservation.ReservationService/GetReservation":    {model.AGENCY, model.DIVER},
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
