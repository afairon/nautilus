package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type liveaboardServiceMock struct {
	mock.Mock
}

func NewLiveaboardServiceMock() *liveaboardServiceMock {
	return &liveaboardServiceMock{}
}

func (m *liveaboardServiceMock) GetLiveaboard(ctx context.Context, id uint64) (*model.Liveaboard, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Liveaboard); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
