package handler

import (
	"context"

	"github.com/afairon/nautilus/model"
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
	payment := model.Payment{}
	payment.From(req.GetPayment())
	err := handler.paymentService.MakePayment(ctx, &payment)

	if err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *PaymentHandler) UpdatePaymentSlip(ctx context.Context, req *pb.UpdatePaymentRequest) (*emptypb.Empty, error) {
	payment := model.Payment{}
	payment.From(req.GetPayment())
	err := handler.paymentService.UpdatePaymentSlip(ctx, &payment)

	if err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *PaymentHandler) UpdatePaymentStatus(ctx context.Context, req *pb.UpdatePaymentStatusRequest) (*emptypb.Empty, error) {
	payment := model.Payment{}
	payment.From(req.GetPayment())
	err := handler.paymentService.UpdatePaymentStatus(ctx, &payment)

	if err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *PaymentHandler) GetPaymentByReservation(ctx context.Context, req *pb.GetPaymentByReservationRequest) (*pb.GetPaymentByReservationResponse, error) {
	payment, err := handler.paymentService.GetPaymentByReservation(ctx, req.GetReservationId())

	if err != nil {
		return nil, err
	}

	resp := &pb.GetPaymentByReservationResponse{
		Payment: payment.GetProto(),
	}

	return resp, nil
}
