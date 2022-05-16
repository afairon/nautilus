package handler_test

import (
	"context"
	"errors"
	"testing"

	"github.com/afairon/nautilus/handler"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/stretchr/testify/assert"
)

func TestAgencyAddDiveMaster(t *testing.T) {
	t.Run("successful", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddDiveMasterRequest{
			DiveMaster: &pb.DiveMaster{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddDiveMaster", ctx, req.DiveMaster).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddDiveMaster(ctx, req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddDiveMasterRequest{
			DiveMaster: &pb.DiveMaster{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddDiveMaster", ctx, req.DiveMaster).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddDiveMaster(ctx, req)

		//Assert
		assert.Error(t, err)
	})
}
