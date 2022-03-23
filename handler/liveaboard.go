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

}
