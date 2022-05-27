package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type hotelServiceMock struct {
	mock.Mock
}

func NewHotelServiceMock() *hotelServiceMock {
	return &hotelServiceMock{}
}

func (m *hotelServiceMock) GetHotel(ctx context.Context, id uint64) (*model.Hotel, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Hotel); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}
