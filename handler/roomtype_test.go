package handler_test

import (
	"context"
	"errors"
	"testing"

	"github.com/afairon/nautilus/handler"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type mockRoomTypeService_ListRoomTypesByTripServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockRoomTypeService_ListRoomTypesByTripServer) Send(roomType *pb.ListRoomTypesByTripResponse) error {
	args := m.Called(roomType)
	return args.Error(0)
}

func (m *mockRoomTypeService_ListRoomTypesByTripServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestRoomTypeListRoomTypesByTrip(t *testing.T) {
	type roomTypeListRoomTypesByTripTestCases struct {
		name            string
		expectedError   error
		serviceResponse []*model.RoomType
		req             *pb.ListRoomTypesByTripRequest
	}

	ctx := context.Background()
	testCases := []roomTypeListRoomTypesByTripTestCases{
		{
			name:          "successfully list hotel room types",
			expectedError: nil,
			serviceResponse: []*model.RoomType{
				{}, {},
			},
			req: &pb.ListRoomTypesByTripRequest{
				Id:     &pb.ListRoomTypesByTripRequest_HotelId{},
				TripId: 0,
				Limit:  20,
				Offset: 0,
			},
		},
		{
			name:          "fail listing hotel room types",
			expectedError: errors.New(""),
			req: &pb.ListRoomTypesByTripRequest{
				Id:     &pb.ListRoomTypesByTripRequest_HotelId{},
				TripId: 0,
				Limit:  20,
				Offset: 0,
			},
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			roomTypeService := service.NewRoomTypeServiceMock()
			roomTypeService.On("ListRoomTypesByHotelAndTrip", ctx, c.req.GetHotelId(), c.req.TripId, c.req.Limit, c.req.Offset).Return(c.serviceResponse, c.expectedError)
			srv := &mockRoomTypeService_ListRoomTypesByTripServer{}
			srv.On("Send", mock.AnythingOfType("*pb.ListRoomTypesByTripResponse")).Return(nil)
			srv.On("Context").Return(ctx)
			roomTypeHandler := handler.NewRoomTypeHandler(roomTypeService)

			//Act
			err := roomTypeHandler.ListRoomTypesByTrip(c.req, srv)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
			} else {
				assert.NoError(t, err)
			}
		})
	}

	testCases = []roomTypeListRoomTypesByTripTestCases{
		{
			name:          "successfully list liveaboard room types",
			expectedError: nil,
			serviceResponse: []*model.RoomType{
				{}, {},
			},
			req: &pb.ListRoomTypesByTripRequest{
				Id:     &pb.ListRoomTypesByTripRequest_LiveaboardId{},
				TripId: 0,
				Limit:  20,
				Offset: 0,
			},
		},
		{
			name:          "fail listing liveaboard room types",
			expectedError: errors.New(""),
			req: &pb.ListRoomTypesByTripRequest{
				Id:     &pb.ListRoomTypesByTripRequest_LiveaboardId{},
				TripId: 0,
				Limit:  20,
				Offset: 0,
			},
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			roomTypeService := service.NewRoomTypeServiceMock()
			roomTypeService.On("ListRoomTypesByLiveaboardAndTrip", ctx, c.req.GetLiveaboardId(), c.req.TripId, c.req.Limit, c.req.Offset).Return(c.serviceResponse, c.expectedError)
			srv := &mockRoomTypeService_ListRoomTypesByTripServer{}
			srv.On("Send", mock.AnythingOfType("*pb.ListRoomTypesByTripResponse")).Return(nil)
			srv.On("Context").Return(ctx)
			roomTypeHandler := handler.NewRoomTypeHandler(roomTypeService)

			//Act
			err := roomTypeHandler.ListRoomTypesByTrip(c.req, srv)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
			} else {
				assert.NoError(t, err)
			}
		})
	}
}

type mockRoomTypeService_ListRoomsOfReservationServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockRoomTypeService_ListRoomsOfReservationServer) Send(roomType *pb.ListRoomsOfReservationResponse) error {
	args := m.Called(roomType)
	return args.Error(0)
}

func (m *mockRoomTypeService_ListRoomsOfReservationServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestRoomTypeListRoomsOfReservation(t *testing.T) {
	type roomTypeListRoomsOfReservationTestCase struct {
		name            string
		expectedError   error
		serviceResponse []*model.ReservationRoomType
	}

	testCases := []roomTypeListRoomsOfReservationTestCase{
		{
			name:          "successful",
			expectedError: nil,
			serviceResponse: []*model.ReservationRoomType{
				{}, {},
			},
		},
		{
			name:          "service fail",
			expectedError: errors.New(""),
		},
	}

	req := &pb.ListRoomsOfReservationRequest{
		ReservationId: 2,
	}
	ctx := context.Background()

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			roomTypeService := service.NewRoomTypeServiceMock()
			roomTypeService.On("ListRoomsOfReservation", ctx, req.ReservationId).Return(c.serviceResponse, c.expectedError)
			srv := &mockRoomTypeService_ListRoomsOfReservationServer{}
			srv.On("Send", mock.AnythingOfType("*pb.ListRoomsOfReservationResponse")).Return(nil)
			srv.On("Context").Return(context.Background())
			handler := handler.NewRoomTypeHandler(roomTypeService)

			//Act
			err := handler.ListRoomsOfReservation(req, srv)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
			} else {
				assert.NoError(t, err)
				srv.AssertNumberOfCalls(t, "Send", len(c.serviceResponse))
			}
		})
	}

	req = &pb.ListRoomsOfReservationRequest{
		ReservationId: 2,
	}
	t.Run("room types not found", func(t *testing.T) {
		//Arrange
		roomTypeService := service.NewRoomTypeServiceMock()
		roomTypeService.On("ListRoomsOfReservation", ctx, req.ReservationId).Return(nil, nil)
		srv := &mockRoomTypeService_ListRoomsOfReservationServer{}
		srv.On("Context").Return(context.Background())
		handler := handler.NewRoomTypeHandler(roomTypeService)

		//Act
		err := handler.ListRoomsOfReservation(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListRoomsOfReservation: not found"))
	})
}
