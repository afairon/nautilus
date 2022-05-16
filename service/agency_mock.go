package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/stretchr/testify/mock"
)

type agencyServiceMock struct {
	mock.Mock
}

func NewAgencyServiceMock() *agencyServiceMock {
	return &agencyServiceMock{}
}

func (m *agencyServiceMock) AddDiveMaster(ctx context.Context, diveMaster *pb.DiveMaster) error {
	args := m.Called(ctx, diveMaster)
	return args.Error(0)
}

func (m *agencyServiceMock) AddStaff(ctx context.Context, staff *pb.Staff) error {
	args := m.Called(ctx, staff)
	return args.Error(0)
}

func (m *agencyServiceMock) AddTripTemplate(ctx context.Context, tripTemplate *pb.AddTripTemplateRequest) error {
	args := m.Called(ctx, tripTemplate)
	return args.Error(0)
}

func (m *agencyServiceMock) AddTrip(ctx context.Context, trip *model.Trip, roomTypePrices []model.RoomTypeTripPrice) error {
	args := m.Called(ctx, trip, roomTypePrices)
	return args.Error(0)
}

func (m *agencyServiceMock) AddDivingBoat(ctx context.Context, boat *pb.Boat) error {
	args := m.Called(ctx, boat)
	return args.Error(0)
}

func (m *agencyServiceMock) AddHotel(ctx context.Context, hotel *pb.Hotel) error {
	args := m.Called(ctx, hotel)
	return args.Error(0)
}

func (m *agencyServiceMock) AddLiveaboard(ctx context.Context, liveaboard *pb.Liveaboard) error {
	args := m.Called(ctx, liveaboard)
	return args.Error(0)
}

func (m *agencyServiceMock) UpdateTrip(ctx context.Context, trip *model.Trip) error {
	args := m.Called(ctx, trip)
	return args.Error(0)
}

func (m *agencyServiceMock) UpdateHotel(ctx context.Context, hotel *model.Hotel) error {
	args := m.Called(ctx, hotel)
	return args.Error(0)
}

func (m *agencyServiceMock) UpdateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) error {
	args := m.Called(ctx, liveaboard)
	return args.Error(0)
}

func (m *agencyServiceMock) UpdateBoat(ctx context.Context, boat *model.Boat) error {
	args := m.Called(ctx, boat)
	return args.Error(0)
}

func (m *agencyServiceMock) UpdateDiveMaster(ctx context.Context, diveMaster *model.DiveMaster) error {
	args := m.Called(ctx, diveMaster)
	return args.Error(0)
}

func (m *agencyServiceMock) UpdateStaff(ctx context.Context, staff *model.Staff) error {
	args := m.Called(ctx, staff)
	return args.Error(0)
}

func (m *agencyServiceMock) UpdateTripTemplate(ctx context.Context, tripTemplate *model.TripTemplate) error {
	args := m.Called(ctx, tripTemplate)
	return args.Error(0)
}

func (m *agencyServiceMock) DeleteDiveMaster(ctx context.Context, diveMaster *model.DiveMaster) error {
	args := m.Called(ctx, diveMaster)
	return args.Error(0)
}

func (m *agencyServiceMock) DeleteDivingBoat(ctx context.Context, divingBoat *model.Boat) error {
	args := m.Called(ctx, divingBoat)
	return args.Error(0)
}

func (m *agencyServiceMock) DeleteHotel(ctx context.Context, hotel *model.Hotel) error {
	args := m.Called(ctx, hotel)
	return args.Error(0)
}

func (m *agencyServiceMock) DeleteLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) error {
	args := m.Called(ctx, liveaboard)
	return args.Error(0)
}

func (m *agencyServiceMock) DeleteStaff(ctx context.Context, staff *model.Staff) error {
	args := m.Called(ctx, staff)
	return args.Error(0)
}

func (m *agencyServiceMock) DeleteTripTemplate(ctx context.Context, tripTemplate *model.TripTemplate) error {
	args := m.Called(ctx, tripTemplate)
	return args.Error(0)
}

func (m *agencyServiceMock) DeleteTrip(ctx context.Context, trip *model.Trip) error {
	args := m.Called(ctx, trip)
	return args.Error(0)
}

func (m *agencyServiceMock) ListBoats(ctx context.Context, limit, offset uint64) ([]*model.Boat, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Boat); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListDiveMasters(ctx context.Context, limit, offset uint64) ([]*model.DiveMaster, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.DiveMaster); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListHotels(ctx context.Context, limit, offset uint64) ([]*model.Hotel, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Hotel); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListLiveaboards(ctx context.Context, limit, offset uint64) ([]*model.Liveaboard, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Liveaboard); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListStaffs(ctx context.Context, limit, offset uint64) ([]*model.Staff, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Staff); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListTripTemplates(ctx context.Context, limit, offset uint64) ([]*model.TripTemplate, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.TripTemplate); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Trip); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListTripsWithTemplates(ctx context.Context, limit, offset uint64) ([]*model.Trip, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Trip); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListRoomTypesByHotelID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error) {
	args := m.Called(ctx, id, limit, offset)
	if v, ok := args.Get(0).([]*model.RoomType); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) ListRoomTypesByLiveaboardID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error) {
	args := m.Called(ctx, id, limit, offset)
	if v, ok := args.Get(0).([]*model.RoomType); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) SearchTrips(ctx context.Context, searchTripsOptions *pb.SearchTripsOptions, limit, offset uint64) ([]*model.Trip, error) {
	args := m.Called(ctx, searchTripsOptions, limit, offset)
	if v, ok := args.Get(0).([]*model.Trip); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) GenerateCurrentTripsReport(ctx context.Context, limit, offset uint64) ([]*model.ReportTrip, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.ReportTrip); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) GenerateYearlyEndedTripsReport(ctx context.Context, years uint32, limit, offset uint64) ([][]*model.ReportTrip, error) {
	args := m.Called(ctx, years, limit, offset)
	if v, ok := args.Get(0).([][]*model.ReportTrip); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}

func (m *agencyServiceMock) GenerateIncomingTripsReport(ctx context.Context, weeks uint32, limit, offset uint64) ([]*model.ReportTrip, error) {
	args := m.Called(ctx, weeks, limit, offset)
	if v, ok := args.Get(0).([]*model.ReportTrip); ok {
		return v, args.Error(1)
	}
	return nil, args.Error(1)
}
