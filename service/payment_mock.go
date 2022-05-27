package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type paymentServiceMock struct {
	mock.Mock
}

func NewPaymentServiceMock() *paymentServiceMock {
	return &paymentServiceMock{}
}

func (m *paymentServiceMock) MakePayment(ctx context.Context, payment *model.Payment) error {
	args := m.Called(ctx, payment)
	return args.Error(0)
}

func (m *paymentServiceMock) GetPaymentByReservation(ctx context.Context, reservationId uint64) (*model.Payment, error) {
	args := m.Called(ctx, reservationId)
	if v, ok := args.Get(0).(*model.Payment); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *paymentServiceMock) UpdatePaymentSlip(ctx context.Context, payment *model.Payment) error {
	args := m.Called(ctx, payment)
	return args.Error(0)
}

func (m *paymentServiceMock) UpdatePaymentStatus(ctx context.Context, payment *model.Payment) error {
	args := m.Called(ctx, payment)
	return args.Error(0)
}
