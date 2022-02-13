package service

import (
	"bytes"
	"context"
	"strings"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AccountService defines operations on account.
type AccountService interface {
	CreateAgencyAccount(ctx context.Context, agency *pb.Agency) error
	CreateDiverAccount(ctx context.Context, diver *pb.Diver) error
	Login(ctx context.Context, email, password string) (string, error)
	GetProfile(ctx context.Context) (*pb.GetProfileResponse, error)
}

// accountService implements AccountService.
type accountService struct {
	repo    *repo.Repo
	session session.Session
	media   media.Store
}

// NewAccountService creates new accountService.
func NewAccountService(repo *repo.Repo, session session.Session, media media.Store) *accountService {
	return &accountService{
		repo:    repo,
		session: session,
		media:   media,
	}
}

// CreateAgencyAccount creates an agency account by first creating
// a record in account table, then a record in address table, and
// finally a record in agency table with account_id and address_id.
func (service *accountService) CreateAgencyAccount(ctx context.Context, agency *pb.Agency) error {
	account := &model.Account{}

	// Copy account information and verify if the information is correct.
	err := account.SetAccount(agency.Account)
	if err != nil {
		return err
	}

	account.Type = model.AGENCY

	address := model.Address{
		AddressLine_1: agency.Address.GetAddressLine_1(),
		AddressLine_2: agency.Address.GetAddressLine_2(),
		City:          agency.Address.GetPostcode(),
		Postcode:      agency.Address.GetPostcode(),
		Region:        agency.Address.GetRegion(),
		Country:       agency.Address.GetCountry(),
	}

	newAgency := model.Agency{
		Name:  agency.GetName(),
		Phone: agency.GetPhone(),
	}

	for _, document := range agency.GetDocuments() {
		reader := bytes.NewReader(document.File)
		objectID, err := service.media.Put(document.Filename, media.PRIVATE, reader)
		if err != nil {
			return err
		}
		newAgency.Documents = append(newAgency.Documents, objectID)
	}

	newAgency.Account = account
	newAgency.Address = &address

	// err = service.repo.ExecTx(ctx, func(query *repo.Queries) error {
	// 	newAccount, err := query.Account.Create(ctx, account)
	// 	if err != nil {
	// 		return err
	// 	}

	// 	newAddress, err := query.Address.Create(ctx, &address)
	// 	if err != nil {
	// 		return err
	// 	}

	// 	newAgency.AccountId = newAccount.Id
	// 	newAgency.AddressId = newAddress.Id
	// 	_, err = query.Agency.Create(ctx, &newAgency)

	// 	return err
	// })

	_, err = service.repo.Agency.Create(ctx, &newAgency)

	if err != nil {
		for _, document := range newAgency.Documents {
			service.media.Delete(document)
		}
	}

	return err
}

// CreateDiverAccount creates a diver account by first creating
// a record in account table and finally a record in diver table
// with account_id.
func (service *accountService) CreateDiverAccount(ctx context.Context, diver *pb.Diver) error {
	account := &entity.Account{}

	// Copy account information and verify if the information is correct.
	err := account.SetAccount(diver.Account)
	if err != nil {
		return err
	}

	account.Type = pb.DIVER

	newDiver := entity.Diver{
		FirstName: diver.GetFirstName(),
		LastName:  diver.GetLastName(),
		Phone:     diver.GetPhone(),
		BirthDate: diver.GetBirthDate().Format("2006-01-02"),
		Level:     diver.GetLevel(),
	}

	for _, document := range diver.GetDocuments() {
		reader := bytes.NewReader(document.File)
		objectID, err := service.media.Put(document.Filename, media.PRIVATE, reader)
		if err != nil {
			return err
		}
		newDiver.Documents = append(newDiver.Documents, objectID)
	}

	// err = service.repo.ExecTx(ctx, func(query *repo.Queries) error {
	// 	newAccount, err := query.Account.Create(ctx, account)
	// 	if err != nil {
	// 		return err
	// 	}

	// 	newDiver.AccountId = newAccount.Id
	// 	_, err = query.Diver.Create(ctx, &newDiver)

	// 	return err
	// })

	if err != nil {
		for _, document := range newDiver.Documents {
			service.media.Delete(document)
		}
	}

	return err
}

// Login checks for account credentials and returns access token.
func (service *accountService) Login(ctx context.Context, email, password string) (string, error) {
	if email == "" {
		return "", status.Error(codes.InvalidArgument, "login: missing email")
	}
	if password == "" {
		return "", status.Error(codes.InvalidArgument, "login: missing password")
	}

	// email to lowercase
	email = strings.ToLower(email)

	// Retrieve account by email.
	accountRecord, err := service.repo.Account.GetByEmail(ctx, email)
	if err != nil {
		return "", status.Error(codes.Unavailable, err.Error())
	}

	// Check password with hash.
	if !accountRecord.CheckPassword(password) {
		// Wrong password
		return "", status.Error(codes.PermissionDenied, "account: login failed")
	}

	var account session.Account

	switch accountRecord.Type {
	case model.ADMIN:
		account, err = service.repo.Account.GetAdminAccount(ctx, uint64(accountRecord.ID))
	case model.AGENCY:
		account, err = service.repo.Account.GetAgencyAccount(ctx, uint64(accountRecord.ID))
	case model.DIVER:
		account, err = service.repo.Account.GetDiverAccount(ctx, uint64(accountRecord.ID))
	}

	if err != nil {
		return "", err
	}

	// Create session.
	token, err := service.session.Create(account)
	if err != nil {
		return "", status.Error(codes.Internal, err.Error())
	}

	return token, nil
}

// GetProfile returns profile based on the given token.
func (service *accountService) GetProfile(ctx context.Context) (*pb.GetProfileResponse, error) {
	account := ctx.Value(session.User)
	if account == nil {
		return nil, status.Error(codes.Unauthenticated, "account: account not found")
	}

	// Type assertion
	switch v := account.(type) {
	case *pb.Admin:
		if v.GetAccount() != nil {
			account, err := service.repo.Account.GetAdminAccount(ctx, v.GetAccount().GetId())
			if err != nil {
				return nil, err
			}
			return &pb.GetProfileResponse{Profile: &pb.GetProfileResponse_Admin{Admin: account}}, nil
		}
	case *pb.Agency:
		if v.GetAccount() != nil {
			account, err := service.repo.Account.GetAgencyAccount(ctx, v.GetAccount().GetId())
			if err != nil {
				return nil, err
			}
			return &pb.GetProfileResponse{Profile: &pb.GetProfileResponse_Agency{Agency: account}}, nil
		}
	case *pb.Diver:
		if v.GetAccount() != nil {
			account, err := service.repo.Account.GetDiverAccount(ctx, v.GetAccount().GetId())
			if err != nil {
				return nil, err
			}
			return &pb.GetProfileResponse{Profile: &pb.GetProfileResponse_Diver{Diver: account}}, nil
		}
	}

	return nil, status.Error(codes.Unauthenticated, "account: account not found")
}
