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

type mockTripService_ListValidTripsServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockTripService_ListValidTripsServer) Send(trip *pb.ListValidTripsResponse) error {
	args := m.Called(trip)
	return args.Error(0)
}

func (m *mockTripService_ListValidTripsServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestTripListValidTrips(t *testing.T) {
	type tripListdValidTripsTestCase struct {
		name            string
		expectedError   error
		serviceResponse []*model.Trip
	}

	testCases := []tripListdValidTripsTestCase{
		{
			name:          "successful",
			expectedError: nil,
			serviceResponse: []*model.Trip{
				{}, {},
			},
		},
		{
			name:          "service fail",
			expectedError: errors.New(""),
		},
	}

	req := &pb.ListValidTripsRequest{
		Limit:  20,
		Offset: 0,
	}
	ctx := context.Background()

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			tripService := service.NewTripServiceMock()
			tripService.On("ListReservationsWithTrips", ctx, req.Limit, req.Offset).Return(c.serviceResponse, c.expectedError)
			srv := &mockTripService_ListValidTripsServer{}
			srv.On("Send", mock.AnythingOfType("*pb.ListValidTripsResponse")).Return(nil)
			srv.On("Context").Return(context.Background())
			handler := handler.NewDiverHandler(tripService)

			//Act
			err := handler.ListReservationsWithTrips(req, srv)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
			} else {
				assert.NoError(t, err)
				srv.AssertNumberOfCalls(t, "Send", len(c.serviceResponse))
			}
		})
	}

	t.Run("reservation not found", func(t *testing.T) {
		//Arrange
		diverService := service.NewDiverServiceMock()
		diverService.On("ListReservationsWithTrips", ctx, req.Limit, req.Offset).Return(nil, nil)
		srv := &mockDiverService_ListReservationsWithTripsServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListReservationsWithTripsResponse")).Return(nil)
		srv.On("Context").Return(context.Background())
		handler := handler.NewDiverHandler(diverService)

		//Act
		err := handler.ListReservationsWithTrips(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListReservationsWithTrips: not found"))
	})
}
