package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type diverServiceMock struct {
	mock.Mock
}

func NewDiverServiceMock() *diverServiceMock {
	return &diverServiceMock{}
}

func (m *diverServiceMock) ListReservationsWithTrips(ctx context.Context, limit, offset uint64) ([]*model.Reservation, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Reservation); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *diverServiceMock) GetAgencyAccountNumberByTrip(ctx context.Context, tripId uint64) (string, error) {
	args := m.Called(ctx, tripId)
	return args.String(0), args.Error(1)
}
