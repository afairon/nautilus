package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type amentiyServiceMock struct {
	mock.Mock
}

func NewAmenityServiceMock() *amentiyServiceMock {
	return &amentiyServiceMock{}
}

func (m *amentiyServiceMock) ListAmenities(ctx context.Context, limit, offset uint64) ([]*model.Amenity, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Amenity); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
