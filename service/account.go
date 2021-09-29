package service

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/store"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type AccountService struct {
	Store *store.Store
}

func (s *AccountService) Create(ctx context.Context, req *pb.AccountRequest) (*empty.Empty, error) {
	account := entity.Account{
		Username: req.GetUsername(),
	}

	err := account.SetEmail(req.GetEmail())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = account.SetPassword(req.GetPassword())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	switch u := req.GetKind().(type) {
	case *pb.AccountRequest_Agency:
		account.Type = pb.AGENCY
		address := entity.Address{
			AddressLine_1: u.Agency.Address.GetAddresLine_1(),
			AddressLine_2: u.Agency.Address.GetAddresLine_2(),
			City:          u.Agency.Address.GetPostalCode(),
			Region:        u.Agency.Address.GetRegion(),
			Country:       u.Agency.Address.GetCity(),
		}
		agency := entity.Agency{
			Name:  u.Agency.GetName(),
			Phone: u.Agency.GetPhoneNumber(),
		}
		err = s.Store.CreateAgencyAccount(context.Background(), &account, &address, &agency)
	case *pb.AccountRequest_Diver:
		account.Type = pb.DIVER
		diver := entity.Diver{
			FirstName: u.Diver.GetFirstName(),
			LastName:  u.Diver.GetLastName(),
			Phone:     u.Diver.GetPhoneNumber(),
			Level:     u.Diver.GetLevel(),
		}
		birthDate := u.Diver.GetBirthDate()
		if birthDate == nil {
			return nil, status.Error(codes.InvalidArgument, "diver: missing birth date")
		}
		diver.BirthDate = birthDate.Format("2006-01-02")
		err = s.Store.CreateDiverAccount(context.Background(), &account, &diver)
	}

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &empty.Empty{}, nil
}

func (s *AccountService) Login(ctx context.Context, req *pb.LoginRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "Login unimplemented")
}
