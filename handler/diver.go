package handler

import (
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type DiverHandler struct {
	diverService service.DiverService
}

func NewDiverHandler(diverservice service.DiverService) *DiverHandler {
	return &DiverHandler{
		diverService: diverservice,
	}
}

func (handler *DiverHandler) ListReservationAndBookedTrips(req *pb.ListReservationsWithTripsRequest, srv pb.DiverService_ListReservationsWithTripsServer) error {
	ctx := srv.Context()

	reservations, err := handler.diverService.ListReservationsWithTrips(ctx, req.GetLimit(), req.GetOffset())

	if err != nil {
		return err
	}

	if len(reservations) == 0 {
		return status.Error(codes.NotFound, "ListTrips: not found")
	}

	for _, reservation := range reservations {
		resp := &pb.ListReservationsWithTripsResponse{
			Trip:        reservation.Trip.GetProto(),
			Reservation: reservation.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}
