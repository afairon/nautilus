package handler

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// ReservationHandler implements the Reservation rpc interface.
type ReservationHandler struct {
	service service.ReservationService
}

// NewReservationHandler creates a new ReservationHandler.
func NewReservationHandler(service service.ReservationService) *ReservationHandler {
	return &ReservationHandler{
		service: service,
	}
}

// Create handles reservation creation. It delegates the comment creation to reservationService.
func (handler *ReservationHandler) CreateReservation(ctx context.Context, req *pb.CreateReservationRequest) (*pb.Reservation, error) {
	reservation, err := handler.service.CreateReservation(ctx, req.Reservation)
	if err != nil {
		return nil, err
	}

	return reservation, nil
}

// GetReservation retrieves reservation by id.
func (handler *ReservationHandler) GetReservation(ctx context.Context, req *pb.GetReservationRequest) (*pb.Reservation, error) {
	return nil, status.Error(codes.Unimplemented, "GetReservation unimplemented")
}
