package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type LiveaboardRoomTypeTripPriceRepositoryMock struct {
	mock.Mock
}

func (m *LiveaboardRoomTypeTripPriceRepositoryMock) Create(ctx context.Context, roomTypePrice *model.LiveaboardRoomTypeTripPrice) (*model.LiveaboardRoomTypeTripPrice, error) {
	args := m.Called(ctx, roomTypePrice)
	if v, ok := args.Get(0).(*model.LiveaboardRoomTypeTripPrice); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
