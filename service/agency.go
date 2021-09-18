package service

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type AgencyService struct{}

func (s *AgencyService) AddDiveMaster(ctx context.Context, req *pb.AddDiveMasterRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddDiveMaster unimplemented")
}

func (s *AgencyService) AddStaff(ctx context.Context, req *pb.AddStaffRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddStaff unimplemented")
}

func (s *AgencyService) AddTripTemplate(ctx context.Context, req *pb.AddTripTemplateRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddTripTemplate unimplemented")
}

func (s *AgencyService) AddTrip(ctx context.Context, req *pb.AddTripRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddTripTemplate unimplemented")
}

func (s *AgencyService) AddDivingBoat(ctx context.Context, req *pb.AddDivingBoatRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddDivingBoat unimplemented")
}

func (s *AgencyService) AddHotel(ctx context.Context, req *pb.AddHotelRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddHotel unimplemented")
}

func (s *AgencyService) AddLiveaboard(ctx context.Context, req *pb.AddLiveaboardRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddLiveaboard unimplemented")
}
