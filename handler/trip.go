package handler

import (
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// HotelHandler implements the HotelService rpc interface.
type TripHandler struct {
	tripService service.TripService
}

func NewTripHandler(tripService service.TripService) *TripHandler {
	return &TripHandler{
		tripService: tripService,
	}
}

func (handler *TripHandler) ListValidTrips(req *pb.ListValidTripsRequest, srv pb.TripService_ListValidTripsServer) error {
	ctx := srv.Context()

	trips, err := handler.tripService.ListValidTrips(ctx, req.GetLimit(), req.GetOffset())

	if err != nil {
		return err
	}

	if len(trips) == 0 {
		return status.Error(codes.NotFound, "ListValidTrips: not found")
	}

	for _, trip := range trips {
		resp := &pb.ListValidTripsResponse{
			Trip: trip.GetProtoWithTemplate(),
		}

		srv.Send(resp)
	}

	return nil
}
