package handler

import (
	"context"

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

func (handler *DiverHandler) ListReservationsWithTrips(req *pb.ListReservationsWithTripsRequest, srv pb.DiverService_ListReservationsWithTripsServer) error {
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
			Trip:        reservation.Trip.GetProtoWithTemplate(),
			Reservation: reservation.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}

func (handler *DiverHandler) GetAgencyAccountNumberByTrip(ctx context.Context, req *pb.GetAgencyAccountNumberByTripRequest) (*pb.GetAgencyAccountNumberByTripResponse, error) {
	accountNumber, err := handler.diverService.GetAgencyAccountNumberByTrip(ctx, req.TripId)

	if err != nil {
		return nil, err
	}

	resp := &pb.GetAgencyAccountNumberByTripResponse{
		AccountNumber: accountNumber,
	}

	return resp, nil
}
