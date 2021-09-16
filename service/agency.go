package service

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type AgencyService struct{}

func AddDiveMaster(ctx context.Context, req *pb.AddDiveMasterRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddDiveMaster unimplemented")
}

func AddStaff(context.Context, *pb.AddStaffRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddStaff unimplemented")
}
