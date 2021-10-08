package handler

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AccountHandler implements the Account rpc interface.
type AccountHandler struct {
	accountService service.AccountService
}

// NewAccountHandler creates a new AccountHandler.
func NewAccountHandler(accountService service.AccountService) *AccountHandler {
	return &AccountHandler{
		accountService: accountService,
	}
}

// Create handles account creation. It delegates the account creation to accountService.
func (handler *AccountHandler) Create(ctx context.Context, req *pb.AccountRequest) (*empty.Empty, error) {
	// Get account request type.
	switch t := req.GetType().(type) {
	case *pb.AccountRequest_Agency:
		err := handler.accountService.CreateAgencyAccount(ctx, t.Agency)
		if err != nil {
			return nil, err
		}
	case *pb.AccountRequest_Diver:
		err := handler.accountService.CreateDiverAccount(ctx, t.Diver)
		if err != nil {
			return nil, err
		}
	default:
		// Cannot determine type of account
		return nil, status.Error(codes.InvalidArgument, "account: invalid request")
	}

	return &empty.Empty{}, nil
}

// Login checks for account credentials and returns access token.
func (handler *AccountHandler) Login(ctx context.Context, req *pb.LoginRequest) (*pb.LoginResponse, error) {
	token, err := handler.accountService.Login(ctx, req.GetEmail(), req.GetPassword())
	if err != nil {
		return nil, err
	}

	resp := pb.LoginResponse{
		Token: token,
	}

	return &resp, nil
}
