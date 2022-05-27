package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type boatServiceMock struct {
	mock.Mock
}

func NewBoatServiceMock() *boatServiceMock {
	return &boatServiceMock{}
}

func (m *boatServiceMock) GetBoat(ctx context.Context, id uint64) (*model.Boat, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Boat); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}
