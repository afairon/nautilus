package handler

import (
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type DiverHandler struct {
	diverService service.DiverService
}

func NewDiverHandler(diverservice service.DiverService) *DiverHandler {
	return &DiverHandler{
		diverService: diverservice,
	}
}

func (handler *DiverHandler) ListBookedTrips(req *pb.ListBookedTripsRequest, srv pb.DiverService_ListBookedTripsServer) error {
	ctx := srv.Context()

	trips, err := handler.diverService.ListBookedTrips(ctx, req.GetLimit(), req.GetOffset())

	if err != nil {
		return err
	}

	if len(trips) == 0 {
		return status.Error(codes.NotFound, "ListTrips: not found")
	}

	for _, trip := range trips {
		resp := &pb.ListBookedTripsResponse{
			Trip: trip.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}
