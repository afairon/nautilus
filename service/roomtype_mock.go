package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type roomTypeServiceMock struct {
	mock.Mock
}

func NewRoomTypeServiceMock() *reservationServiceMock {
	return &reservationServiceMock{}
}

func (m *reservationServiceMock) GetRoomType(ctx context.Context, roomTypeId uint64) (*model.RoomType, error) {
	args := m.Called(ctx, roomTypeId)
	if v, ok := args.Get(0).(*model.RoomType); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *reservationServiceMock) ListRoomTypesByHotelAndTrip(ctx context.Context, hotelId, tripId, limit, offset uint64) ([]*model.RoomType, error) {
	args := m.Called(ctx, hotelId, tripId, limit, offset)
	if v, ok := args.Get(0).([]*model.RoomType); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *reservationServiceMock) ListRoomTypesByLiveaboardAndTrip(ctx context.Context, liveaboardId, tripId, limit, offset uint64) ([]*model.RoomType, error) {
	args := m.Called(ctx, liveaboardId, tripId, limit, offset)
	if v, ok := args.Get(0).([]*model.RoomType); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *reservationServiceMock) ListRoomsOfReservation(ctx context.Context, reservationId uint64) ([]*model.ReservationRoomType, error) {
	args := m.Called(ctx, reservationId)
	if v, ok := args.Get(0).([]*model.ReservationRoomType); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
