package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type HotelRoomTypeTripPriceRepositoryMock struct {
	mock.Mock
}

func (m *HotelRoomTypeTripPriceRepositoryMock) Create(ctx context.Context, roomTypePrice *model.HotelRoomTypeTripPrice) (*model.HotelRoomTypeTripPrice, error) {
	args := m.Called(ctx, roomTypePrice)
	if v, ok := args.Get(0).(*model.HotelRoomTypeTripPrice); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
