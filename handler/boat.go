package handler

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
)

// BoatHandler implements the BoatService rpc interface.
type BoatHandler struct {
	boatService service.BoatService
}

func NewBoatHandler(boatService service.BoatService) *BoatHandler {
	return &BoatHandler{
		boatService: boatService,
	}
}

func (handler *BoatHandler) GetBoat(ctx context.Context, req *pb.GetBoatRequest) (*pb.GetBoatResponse, error) {
	boat, err := handler.boatService.GetBoat(ctx, req.Id)

	if err != nil {
		return nil, err
	}

	resp := &pb.GetBoatResponse{
		Boat: boat.GetProto(),
	}

	return resp, err
}
