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

func TestPaymentMakePayment(t *testing.T) {
	type paymentMakePaymentTestCase struct {
		name          string
		expectedError error
	}

	ctx := context.Background()
	req := &pb.MakePaymentRequest{
		Payment: &pb.Payment{},
	}
	modelPayment := model.Payment{}
	modelPayment.From(req.Payment)

	testCases := []paymentMakePaymentTestCase{
		{
			name:          "successful",
			expectedError: nil,
		},
		{
			name:          "fail",
			expectedError: errors.New(""),
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			paymentService := service.NewPaymentServiceMock()
			paymentService.On("MakePayment", ctx, &modelPayment).Return(c.expectedError)
			paymentHandler := handler.NewPaymentHandler(paymentService)

			//Act
			_, err := paymentHandler.MakePayment(ctx, req)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
			} else {
				assert.NoError(t, err)
			}
		})
	}
}

func TestPaymentUpdatePaymentSlip(t *testing.T) {
	type paymentUpdatePaymentSlipTestCase struct {
		name          string
		expectedError error
	}

	ctx := context.Background()
	req := &pb.UpdatePaymentRequest{
		Payment: &pb.Payment{},
	}
	modelPayment := model.Payment{}
	modelPayment.From(req.Payment)

	testCases := []paymentUpdatePaymentSlipTestCase{
		{
			name:          "successful",
			expectedError: nil,
		},
		{
			name:          "fail",
			expectedError: errors.New(""),
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			paymentService := service.NewPaymentServiceMock()
			paymentService.On("UpdatePaymentSlip", ctx, &modelPayment).Return(c.expectedError)
			paymentHandler := handler.NewPaymentHandler(paymentService)

			//Act
			_, err := paymentHandler.UpdatePaymentSlip(ctx, req)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
			} else {
				assert.NoError(t, err)
			}
		})
	}
}
