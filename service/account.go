package service

import (
	"bytes"
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/internal/media"
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

// setUserAccount checks if the username is valid, the email is valid,
// and the password is valid.
func setUserAccount(dst *entity.Account, src *pb.Account) error {
	if src == nil {
		return status.Error(codes.InvalidArgument, "missing account")
	}
	// Set a valid username.
	err := dst.SetUsername(src.GetUsername())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid email.
	err = dst.SetEmail(src.GetEmail())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid password.
	err = dst.SetPassword(src.GetPassword())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	return nil
}

// CreateAgencyAccount creates an agency account by first creating
// a record in account table, then a record in address table, and
// finally a record in agency table with account_id and address_id.
func (service *accountService) CreateAgencyAccount(ctx context.Context, agency *pb.Agency) error {
	account := entity.Account{}

	// Copy account information and verify if the information is correct.
	err := setUserAccount(&account, agency.Account)
	if err != nil {
		return err
	}

	account.Type = pb.AGENCY

	address := entity.Address{
		AddressLine_1: agency.Address.GetAddressLine_1(),
		AddressLine_2: agency.Address.GetAddressLine_2(),
		City:          agency.Address.GetPostcode(),
		Postcode:      agency.Address.GetPostcode(),
		Region:        agency.Address.GetRegion(),
		Country:       agency.Address.GetCountry(),
	}

	newAgency := entity.Agency{
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

	err = service.repo.ExecTx(ctx, func(query *repo.Queries) error {
		newAccount, err := query.Account.Create(ctx, &account)
		if err != nil {
			return err
		}

		newAddress, err := query.Address.Create(ctx, &address)
		if err != nil {
			return err
		}

		newAgency.AccountId = newAccount.Id
		newAgency.AddressId = newAddress.Id
		_, err = query.Agency.Create(ctx, &newAgency)

		return err
	})

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
	account := entity.Account{}

	// Copy account information and verify if the information is correct.
	err := setUserAccount(&account, diver.Account)
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

	err = service.repo.ExecTx(ctx, func(query *repo.Queries) error {
		newAccount, err := query.Account.Create(ctx, &account)
		if err != nil {
			return err
		}

		newDiver.AccountId = newAccount.Id
		_, err = query.Diver.Create(ctx, &newDiver)

		return err
	})

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
	case pb.ADMIN:
		account, err = service.repo.Account.GetAdminAccount(ctx, accountRecord.GetId())
	case pb.AGENCY:
		account, err = service.repo.Account.GetAgencyAccount(ctx, accountRecord.GetId())
	case pb.DIVER:
		account, err = service.repo.Account.GetDiverAccount(ctx, accountRecord.GetId())
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
