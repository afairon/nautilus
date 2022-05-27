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
	"gorm.io/gorm"
)

func TestHotelGetHotel(t *testing.T) {
	type hotelGetHotelTestCases struct {
		name           string
		expectedError  error
		expectedOutput *model.Hotel
	}

	testCases := []hotelGetHotelTestCases{
		{
			name:          "successful",
			expectedError: nil,
			expectedOutput: &model.Hotel{
				Model: gorm.Model{
					ID: 1,
				},
			},
		},
		{
			name:          "fail",
			expectedError: errors.New(""),
		},
	}

	req := &pb.GetHotelRequest{
		Id: 1,
	}
	ctx := context.Background()

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			hotelService := service.NewHotelServiceMock()
			hotelService.On("GetHotel", ctx, req.Id).Return(c.expectedOutput, c.expectedError)
			hotelHandler := handler.NewHotelHandler(hotelService)

			//Act
			resp, err := hotelHandler.GetHotel(ctx, req)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
				assert.Nil(t, resp)
			} else {
				assert.NoError(t, err)
				assert.Equal(t, int(c.expectedOutput.ID), int(resp.Hotel.Id))
			}
		})
	}
}
