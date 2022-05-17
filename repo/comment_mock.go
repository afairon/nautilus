package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type CommentRepositoryMock struct {
	mock.Mock
}

func (m *CommentRepositoryMock) CreateTripComment(ctx context.Context, comment *model.TripComment) (*model.TripComment, error) {
	args := m.Called(ctx, comment)

	var r0 *model.TripComment
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(*model.TripComment)
	}

	var r1 error
	v1 := args.Get(1)
	if v1 != nil {
		r1 = v1.(error)
	}

	return r0, r1
}

func (m *CommentRepositoryMock) CreateHotelComment(ctx context.Context, comment *model.HotelComment) (*model.HotelComment, error) {
	args := m.Called(ctx, comment)

	var r0 *model.HotelComment
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(*model.HotelComment)
	}

	var r1 error
	v1 := args.Get(1)
	if v1 != nil {
		r1 = v1.(error)
	}

	return r0, r1
}

func (m *CommentRepositoryMock) CreateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) (*model.LiveaboardComment, error) {
	args := m.Called(ctx, comment)

	var r0 *model.LiveaboardComment
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(*model.LiveaboardComment)
	}

	var r1 error
	v1 := args.Get(1)
	if v1 != nil {
		r1 = v1.(error)
	}

	return r0, r1
}

func (m *CommentRepositoryMock) FindTripComment(ctx context.Context, id uint64) (*model.TripComment, error) {
	args := m.Called(ctx, id)

	var r0 *model.TripComment
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(*model.TripComment)
	}

	var r1 error
	v1 := args.Get(1)
	if v1 != nil {
		r1 = v1.(error)
	}

	return r0, r1
}

func (m *CommentRepositoryMock) FindHotelComment(ctx context.Context, id uint64) (*model.HotelComment, error) {
	args := m.Called(ctx, id)

	var r0 *model.HotelComment
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(*model.HotelComment)
	}

	var r1 error
	v1 := args.Get(1)
	if v1 != nil {
		r1 = v1.(error)
	}

	return r0, r1
}

func (m *CommentRepositoryMock) FindLiveaboardComment(ctx context.Context, id uint64) (*model.LiveaboardComment, error) {
	args := m.Called(ctx, id)

	var r0 *model.LiveaboardComment
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(*model.LiveaboardComment)
	}

	var r1 error
	v1 := args.Get(1)
	if v1 != nil {
		r1 = v1.(error)
	}

	return r0, r1
}

func (m *CommentRepositoryMock) UpdateTripComment(ctx context.Context, comment *model.TripComment) error {
	args := m.Called(ctx, comment)

	var r0 error
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(error)
	}

	return r0
}

func (m *CommentRepositoryMock) UpdateHotelComment(ctx context.Context, comment *model.HotelComment) error {
	args := m.Called(ctx, comment)

	var r0 error
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(error)
	}

	return r0
}

func (m *CommentRepositoryMock) UpdateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error {
	args := m.Called(ctx, comment)

	var r0 error
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(error)
	}

	return r0
}

func (m *CommentRepositoryMock) DeleteTripComment(ctx context.Context, comment *model.TripComment) error {
	args := m.Called(ctx, comment)

	var r0 error
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(error)
	}

	return r0
}

func (m *CommentRepositoryMock) DeleteHotelComment(ctx context.Context, comment *model.HotelComment) error {
	args := m.Called(ctx, comment)

	var r0 error
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(error)
	}

	return r0
}

func (m *CommentRepositoryMock) DeleteLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error {
	args := m.Called(ctx, comment)

	var r0 error
	v0 := args.Get(0)
	if v0 != nil {
		r0 = v0.(error)
	}

	return r0
}
