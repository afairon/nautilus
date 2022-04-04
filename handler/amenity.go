package handler

import (
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
)

type AmenityHandler struct {
	amenityService service.AmenityService
}

func NewAmenityHandler(amenityService service.AmenityService) *AmenityHandler {
	return &AmenityHandler{
		amenityService: amenityService,
	}
}

func (handler *AmenityHandler) ListAmenities(req *pb.ListAmenitiesRequest, srv pb.AmenityService_ListAmenitiesServer) error {
	ctx := srv.Context()

	amenities, err := handler.amenityService.ListAmenities(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		return err
	}

	for _, amenity := range amenities {
		resp := &pb.ListAmenitiesResponse{
			Amenities: amenity.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}
