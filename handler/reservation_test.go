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

func TestReservationCreateReservation(t *testing.T) {
	type reservationCreateReservationTestCase struct {
		name             string
		expectedError    error
		expectedResponse *pb.CreateReservationResponse
		serviceResponse  *pb.Reservation
	}

	ctx := context.Background()
	req := &pb.CreateReservationRequest{
		Reservation: &pb.Reservation{},
	}

	testCases := []reservationCreateReservationTestCase{
		{
			name:             "successful",
			expectedError:    nil,
			expectedResponse: &pb.CreateReservationResponse{},
			serviceResponse:  &pb.Reservation{},
		},
		{
			name:          "fail",
			expectedError: errors.New(""),
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			reservationService := service.NewReservationServiceMock()
			reservationService.On("CreateReservation", ctx, req.Reservation).Return(c.serviceResponse, c.expectedError)
			reservationHandler := handler.NewReservationHandler(reservationService)

			//Act
			_, err := reservationHandler.CreateReservation(ctx, req)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
			} else {
				assert.NoError(t, err)
			}
		})
	}
}
