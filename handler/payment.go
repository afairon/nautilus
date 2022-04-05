package handler

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/protobuf/types/known/emptypb"
)

// PaymentHandler implements the Payment rpc interface.
type PaymentHandler struct {
	paymentService service.PaymentService
}

func NewPaymentHandler(paymentService service.PaymentService) *PaymentHandler {
	return &PaymentHandler{
		paymentService: paymentService,
	}
}

func (handler *PaymentHandler) MakePayment(ctx context.Context, req *pb.MakePaymentRequest) (*emptypb.Empty, error) {
	err := handler.paymentService.MakePayment(ctx, req.GetPayment())

	if err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}
