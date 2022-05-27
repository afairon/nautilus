package service

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/stretchr/testify/mock"
)

type reservationServiceMock struct {
	mock.Mock
}

func NewReservationServiceMock() *reservationServiceMock {
	return &reservationServiceMock{}
}

func (m *reservationServiceMock) CreateReservation(ctx context.Context, reservation *pb.Reservation) (*pb.Reservation, error) {
	args := m.Called(ctx, reservation)
	if v, ok := args.Get(0).(*pb.Reservation); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
