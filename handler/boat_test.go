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
)

func TestBoatGetBoat(t *testing.T) {
	ctx := context.Background()
	req := &pb.GetBoatRequest{
		Id: 1,
	}
	boat := &model.Boat{}
	t.Run("successful", func(t *testing.T) {
		//Arrange
		boatService := service.NewBoatServiceMock()
		boatService.On("GetBoat", ctx, req.Id).Return(boat, nil).Once()
		boatHandler := handler.NewBoatHandler(boatService)

		//Act
		_, err := boatHandler.GetBoat(ctx, req)

		//Assert
		assert.NoError(t, err)
		boatService.AssertExpectations(t)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		boatService := service.NewBoatServiceMock()
		boatService.On("GetBoat", ctx, req.Id).Return(nil, errors.New("")).Once()
		boatHandler := handler.NewBoatHandler(boatService)

		//Act
		_, err := boatHandler.GetBoat(ctx, req)

		//Assert
		assert.Error(t, err)
		boatService.AssertExpectations(t)
	})
}
