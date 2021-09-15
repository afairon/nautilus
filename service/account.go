package service

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type AccountService struct{}

func (s *AccountService) Create(ctx context.Context, req *pb.AccountRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "Create unimplemented")
}

func (s *AccountService) Login(ctx context.Context, req *pb.LoginRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "Login unimplemented")
}
