package handler

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AccountHandler implements the Account rpc interface.
type AccountHandler struct {
	service service.AccountService
}

// NewAccountHandler creates a new AccountHandler.
func NewAccountHandler(service service.AccountService) *AccountHandler {
	return &AccountHandler{
		service: service,
	}
}

// Create handles account creation. It delegates the account creation to accountService.
func (handler *AccountHandler) Create(ctx context.Context, req *pb.AccountRequest) (*empty.Empty, error) {
	// Get account request type.
	switch t := req.GetType().(type) {
	case *pb.AccountRequest_Agency:
		agency := model.Agency{}
		agency.From(t.Agency)
		err := handler.service.CreateAgencyAccount(ctx, &agency)
		if err != nil {
			return nil, err
		}
	case *pb.AccountRequest_Diver:
		diver := model.Diver{}
		diver.From(t.Diver)
		err := handler.service.CreateDiverAccount(ctx, &diver)
		if err != nil {
			return nil, err
		}
	default:
		// Cannot determine type of account
		return nil, status.Error(codes.InvalidArgument, "account: invalid request")
	}

	return &empty.Empty{}, nil
}

// Update updates user account and profile.
func (handler *AccountHandler) Update(ctx context.Context, req *pb.UpdateRequest) (*empty.Empty, error) {
	// Get account update request type
	switch t := req.GetType().(type) {
	case *pb.UpdateRequest_Admin:
		admin := model.Admin{}
		admin.From(t.Admin)
		err := handler.service.UpdateAdminAccount(ctx, &admin)
		if err != nil {
			return nil, err
		}
	case *pb.UpdateRequest_Agency:
		agency := model.Agency{}
		agency.From(t.Agency)
		err := handler.service.UpdateAgencyAccount(ctx, &agency)
		if err != nil {
			return nil, err
		}
	case *pb.UpdateRequest_Diver:
		diver := model.Diver{}
		diver.From(t.Diver)
		err := handler.service.UpdateDiverAccount(ctx, &diver)
		if err != nil {
			return nil, err
		}
	default:
		// Cannot determine type of account
		return nil, status.Error(codes.InvalidArgument, "account: invalid request")
	}

	return &empty.Empty{}, nil
}

// UpdateAccount updates user account only.
func (handler *AccountHandler) UpdateAccount(ctx context.Context, req *pb.UpdateAccountRequest) (*empty.Empty, error) {
	if req.Account == nil {
		return nil, status.Error(codes.InvalidArgument, "account: invalid request")
	}

	account := model.Account{}
	account.From(req.Account)

	err := handler.service.UpdateAccount(ctx, &account)
	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

// Login checks for account credentials and returns access token.
func (handler *AccountHandler) Login(ctx context.Context, req *pb.LoginRequest) (*pb.LoginResponse, error) {
	token, err := handler.service.Login(ctx, req.GetEmail(), req.GetPassword())
	if err != nil {
		return nil, err
	}

	resp := pb.LoginResponse{
		Token: token,
	}

	return &resp, nil
}

// GetProfile returns profile based on the given token.
func (handler *AccountHandler) GetProfile(ctx context.Context, req *empty.Empty) (*pb.GetProfileResponse, error) {
	account, err := handler.service.GetProfile(ctx)
	if err != nil {
		return nil, err
	}

	switch v := account.(type) {
	case *model.Admin:
		return &pb.GetProfileResponse{
			Profile: &pb.GetProfileResponse_Admin{
				Admin: v.GetProto(),
			},
		}, nil
	case *model.Agency:
		profile := pb.GetProfileResponse{
			Profile: &pb.GetProfileResponse_Agency{
				Agency: v.GetProto(),
			},
		}
		return &profile, nil
	case *model.Diver:
		profile := pb.GetProfileResponse{
			Profile: &pb.GetProfileResponse_Diver{
				Diver: v.GetProto(),
			},
		}
		return &profile, nil
	}

	return nil, status.Error(codes.InvalidArgument, "GetProfile: cannot get profile")
}
