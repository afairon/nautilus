package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type tripServiceMock struct {
	mock.Mock
}

func NewTripServiceMock() *tripServiceMock {
	return &tripServiceMock{}
}

func (m *tripServiceMock) ListValidTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Trip); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
