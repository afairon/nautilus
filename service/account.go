package service

import (
	"bytes"
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/session"
	"github.com/afairon/nautilus/store"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AccountService implements the Account rpc interface.
type AccountService struct {
	Store   *store.Store
	Session session.Session
	Media   media.Store
}

// Create handles account creation. It handles the creation of the agency
// and diver account. It checks for username, email, and password before creating records.
// It also handles files associated to the account. The file creation is handled by
// the media storage.
func (s *AccountService) Create(ctx context.Context, req *pb.AccountRequest) (*empty.Empty, error) {
	account := entity.Account{}

	// Set a valid username.
	err := account.SetUsername(req.GetUsername())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid email.
	err = account.SetEmail(req.GetEmail())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid password.
	err = account.SetPassword(req.GetPassword())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// User type assertion
	// Check for type of account.
	switch u := req.GetKind().(type) {
	// Agency account
	case *pb.AccountRequest_Agency:
		account.Type = pb.AGENCY

		// Get address associated to the agency.
		address := entity.Address{
			AddressLine_1: u.Agency.Address.GetAddresLine_1(),
			AddressLine_2: u.Agency.Address.GetAddresLine_2(),
			City:          u.Agency.Address.GetCity(),
			Postcode:      u.Agency.Address.GetPostcode(),
			Region:        u.Agency.Address.GetRegion(),
			Country:       u.Agency.Address.GetCountry(),
		}

		// Get agency information.
		agency := entity.Agency{
			Name:  u.Agency.GetName(),
			Phone: u.Agency.GetPhoneNumber(),
		}

		// Get documents associated to the agency.
		for _, file := range u.Agency.GetDocuments() {
			if file != nil {
				// Read file and save.
				reader := bytes.NewReader(file.GetFile())
				objectID, err := s.Media.Put(file.GetFilename(), media.PRIVATE, reader)
				if err != nil {
					return nil, status.Error(codes.InvalidArgument, err.Error())
				}
				agency.Documents = append(agency.Documents, objectID)
			}
		}

		// Store agency information in the database.
		err = s.Store.CreateAgencyAccount(context.Background(), &account, &address, &agency)

	// Diver account
	case *pb.AccountRequest_Diver:
		account.Type = pb.DIVER

		// Get diver information.
		diver := entity.Diver{
			FirstName: u.Diver.GetFirstName(),
			LastName:  u.Diver.GetLastName(),
			Phone:     u.Diver.GetPhoneNumber(),
			Level:     u.Diver.GetLevel(),
		}

		// Get diver's birth date.
		birthDate := u.Diver.GetBirthDate()
		if birthDate == nil {
			return nil, status.Error(codes.InvalidArgument, "account: diver missing birth date")
		}

		// Format birth date from *time.Time to yyyy-mm-dd
		diver.BirthDate = birthDate.Format("2006-01-02")

		// Get documents.
		for _, file := range u.Diver.GetDocuments() {
			if file != nil {
				// Read file and save.
				reader := bytes.NewReader(file.GetFile())
				objectID, err := s.Media.Put(file.GetFilename(), media.PRIVATE, reader)
				if err != nil {
					return nil, status.Error(codes.InvalidArgument, err.Error())
				}
				diver.Documents = append(diver.Documents, objectID)
			}
		}

		// Store diver information in the database.
		err = s.Store.CreateDiverAccount(context.Background(), &account, &diver)
	}

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &empty.Empty{}, nil
}

// Login checks for account credentials and returns access token.
func (s *AccountService) Login(ctx context.Context, req *pb.LoginRequest) (*pb.LoginResponse, error) {
	// Retrieve account by email.
	account, err := s.Store.GetAccountByEmail(context.Background(), req.GetEmail())
	if err != nil {
		return nil, status.Error(codes.Unavailable, err.Error())
	}

	// Check password with hash.
	if !account.CheckPassword(req.GetPassword()) {
		// Wrong password
		return nil, status.Error(codes.PermissionDenied, "account: login failed")
	}

	token, err := s.Session.Create(account)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	resp := pb.LoginResponse{
		Token: token,
	}

	return &resp, nil
}
