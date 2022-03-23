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
	hotel, err := handler.hotelService.GetHotel(ctx, req.GetId())

	if err != nil {
		return nil, err
	}

	resp := &pb.GetHotelResponse{
		Hotel: &pb.Hotel{
			Id:          uint64(hotel.ID),
			Name:        hotel.Name,
			Description: hotel.Description,
			Stars:       hotel.Stars,
			Phone:       hotel.Phone,
			Address:     hotel.Address.GetProto(),
			CreatedAt:   &hotel.CreatedAt,
			UpdatedAt:   &hotel.UpdatedAt,
		},
	}

	if len(hotel.Images) > 0 {
		resp.Hotel.Images = make([]*pb.File, 0, len(hotel.Images))
		for _, link := range hotel.Images {
			file := &pb.File{
				Link: link,
			}
			resp.Hotel.Images = append(resp.Hotel.Images, file)
		}
	}

	return resp, err
}
