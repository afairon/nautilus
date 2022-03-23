package handler

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
)

// LiveaboardHandler implements the LiveaboardService rpc interface.
type LiveaboardHandler struct {
	liveaboardService service.LiveaboardService
}

func NewLiveaboardHandler(liveaboardService service.LiveaboardService) *LiveaboardHandler {
	return &LiveaboardHandler{
		liveaboardService: liveaboardService,
	}
}

func (handler *LiveaboardHandler) GetLiveaboard(ctx context.Context, req *pb.GetLiveaboardRequest) (*pb.GetLiveaboardResponse, error) {
	liveaboard, err := handler.liveaboardService.GetLiveaboard(ctx, req.GetId())

	if err != nil {
		return nil, err
	}

	// TODO return address of liveaboard too
	resp := &pb.GetLiveaboardResponse{
		Liveaboard: &pb.Liveaboard{
			Id:            uint64(liveaboard.ID),
			Name:          liveaboard.Name,
			Description:   liveaboard.Description,
			Length:        float32(liveaboard.Length),
			Width:         float32(liveaboard.Width),
			TotalCapacity: liveaboard.TotalCapacity,
			DiverRooms:    liveaboard.DiverRooms,
			StaffRooms:    liveaboard.StaffRooms,
			CreatedAt:     &liveaboard.CreatedAt,
			UpdatedAt:     &liveaboard.UpdatedAt,
		},
	}

	if len(liveaboard.Images) > 0 {
		resp.Liveaboard.Images = make([]*pb.File, 0, len(liveaboard.Images))
		for _, link := range liveaboard.Images {
			file := &pb.File{
				Link: link,
			}
			resp.Liveaboard.Images = append(resp.Liveaboard.Images, file)
		}
	}

	return resp, err
}
