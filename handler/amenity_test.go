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
)

type mockAmenityService_ListAmenitiesServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAmenityService_ListAmenitiesServer) Send(amenity *pb.ListAmenitiesResponse) error {
	args := m.Called(amenity)
	return args.Error(0)
}

func (m *mockAmenityService_ListAmenitiesServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAmenityListAmenities(t *testing.T) {
	req := &pb.ListAmenitiesRequest{
		Limit:  20,
		Offset: 0,
	}
	amenities := []*model.Amenity{
		{}, {}, {}, {}, {},
	}
	ctx := context.Background()
	t.Run("successful", func(t *testing.T) {
		//Arrange
		amenityService := service.NewAmenityServiceMock()
		amenityService.On("ListAmenities", ctx, req.Limit, req.Offset).Return(amenities, nil)
		srv := &mockAmenityService_ListAmenitiesServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListAmenitiesResponse")).Return(nil).Times(5)
		srv.On("Context").Return(context.Background())
		amenityHandler := handler.NewAmenityHandler(amenityService)

		//Act
		err := amenityHandler.ListAmenities(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertExpectations(t)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		amenityService := service.NewAmenityServiceMock()
		amenityService.On("ListAmenities", ctx, req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAmenityService_ListAmenitiesServer{}
		srv.On("Context").Return(context.Background())
		amenityHandler := handler.NewAmenityHandler(amenityService)

		//Act
		err := amenityHandler.ListAmenities(req, srv)

		//Assert
		assert.Error(t, err)
		srv.AssertExpectations(t)
	})
}
