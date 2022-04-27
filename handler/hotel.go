package handler

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
)

// HotelHandler implements the HotelService rpc interface.
type HotelHandler struct {
	hotelService service.HotelService
}

func NewHotelHandler(hotelService service.HotelService) *HotelHandler {
	return &HotelHandler{
		hotelService: hotelService,
	}
}

func (handler *HotelHandler) GetHotel(ctx context.Context, req *pb.GetHotelRequest) (*pb.GetHotelResponse, error) {
	hotel, err := handler.hotelService.GetHotel(ctx, req.Id)

	if err != nil {
		return nil, err
	}

	resp := &pb.GetHotelResponse{
		Hotel: hotel.GetProto(),
	}

	return resp, err
}
