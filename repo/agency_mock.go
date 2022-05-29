package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type AgencyRepositoryMock struct {
	mock.Mock
}

func (m *AgencyRepositoryMock) Create(ctx context.Context, agency *model.Agency) (*model.Agency, error) {
	args := m.Called(ctx, agency)
	if v, ok := args.Get(0).(*model.Agency); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) Update(ctx context.Context, agency *model.Agency) error {
	args := m.Called(ctx, agency)
	return args.Error(1)
}

func (m *AgencyRepositoryMock) CreateDiveMaster(ctx context.Context, diveMaster *model.DiveMaster) (*model.DiveMaster, error) {
	args := m.Called(ctx, diveMaster)
	if v, ok := args.Get(0).(*model.DiveMaster); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateHotel(ctx context.Context, hotel *model.Hotel) (*model.Hotel, error) {
	args := m.Called(ctx, hotel)
	if v, ok := args.Get(0).(*model.Hotel); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateRoomType(ctx context.Context, roomType *model.RoomType, isHotel bool) (*model.RoomType, error) {
	args := m.Called(ctx, roomType)
	if v, ok := args.Get(0).(*model.RoomType); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateAmenity(ctx context.Context, amenity *model.Amenity) (*model.Amenity, error) {
	args := m.Called(ctx, amenity)
	if v, ok := args.Get(0).(*model.Amenity); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateTripTemplate(ctx context.Context, tripTemplate *model.TripTemplate) (*model.TripTemplate, error) {
	args := m.Called(ctx, tripTemplate)
	if v, ok := args.Get(0).(*model.TripTemplate); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateTrip(ctx context.Context, trip *model.Trip) (*model.Trip, error) {
	args := m.Called(ctx, trip)
	if v, ok := args.Get(0).(*model.Trip); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateDiveMasterTripLink(ctx context.Context, diveMasterTripLink *model.DiveMasterTrip) (*model.DiveMasterTrip, error) {
	args := m.Called(ctx, diveMasterTripLink)
	if v, ok := args.Get(0).(*model.DiveMasterTrip); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateBoat(ctx context.Context, divingBoat *model.Boat) (*model.Boat, error) {
	args := m.Called(ctx, divingBoat)
	if v, ok := args.Get(0).(*model.Boat); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateStaff(ctx context.Context, staff *model.Staff) (*model.Staff, error) {
	args := m.Called(ctx, staff)
	if v, ok := args.Get(0).(*model.Staff); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) (*model.Liveaboard, error) {
	args := m.Called(ctx, liveaboard)
	if v, ok := args.Get(0).(*model.Liveaboard); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) CreateAddress(ctx context.Context, address *model.Address) (*model.Address, error) {
	args := m.Called(ctx, address)
	if v, ok := args.Get(0).(*model.Address); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) Get(ctx context.Context, id uint64) (*model.Agency, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Agency); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *AgencyRepositoryMock) List(ctx context.Context, limit, offset uint64) ([]*model.Agency, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Agency); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
