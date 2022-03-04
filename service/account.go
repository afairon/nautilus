package service

import (
	"bytes"
	"context"
	"strings"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"github.com/lib/pq"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AccountService defines operations on account.
type AccountService interface {
	CreateAgencyAccount(ctx context.Context, agency *model.Agency) error
	CreateDiverAccount(ctx context.Context, diver *model.Diver) error
	UpdateAccount(ctx context.Context, account *model.Account) error
	UpdateAdminAccount(ctx context.Context, admin *model.Admin) error
	UpdateAgencyAccount(ctx context.Context, agency *model.Agency) error
	UpdateDiverAccount(ctx context.Context, diver *model.Diver) error
	Login(ctx context.Context, email, password string) (string, error)
	GetProfile(ctx context.Context) (session.Account, error)
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

// CreateAgencyAccount creates an agency account and save documents.
func (service *accountService) CreateAgencyAccount(ctx context.Context, agency *model.Agency) error {
	// Verify account information.
	err := agency.Verify()
	if err != nil {
		return err
	}

	defer func() {
		// Delete files if could not save agency.
		for _, doc := range agency.Documents {
			service.media.Delete(doc)
		}
	}()

	// Save files.
	if len(agency.Files) > 0 {
		agency.Documents = make(pq.StringArray, 0, len(agency.Files))
		for _, doc := range agency.Files {
			reader := bytes.NewReader(doc.Buffer)
			objectID, err := service.media.Put(doc.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			agency.Documents = append(agency.Documents, objectID)
		}
	}

	_, err = service.repo.Agency.Create(ctx, agency)
	if err != nil {
		return err
	}

	return nil
}

// CreateDiverAccount creates a diver account and save documents.
func (service *accountService) CreateDiverAccount(ctx context.Context, diver *model.Diver) error {
	// Verify account information
	err := diver.Verify()
	if err != nil {
		return err
	}

	defer func() {
		if err != nil {
			// Delete files if could not save diver.
			for _, doc := range diver.Documents {
				service.media.Delete(doc)
			}
		}
	}()

	// Save files.
	if len(diver.Files) > 0 {
		diver.Documents = make(pq.StringArray, 0, len(diver.Files))
		for _, doc := range diver.Files {
			reader := bytes.NewReader(doc.Buffer)
			objectID, err := service.media.Put(doc.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			diver.Documents = append(diver.Documents, objectID)
		}
	}

	_, err = service.repo.Diver.Create(ctx, diver)
	if err != nil {
		return err
	}

	return nil
}

// UpdateAccount updates account.
func (service *accountService) UpdateAccount(ctx context.Context, account *model.Account) error {
	// Obtaining value at session.User
	user := ctx.Value(session.User)
	if user == nil {
		// Handle nil condition
		return status.Error(codes.Unauthenticated, "user not found")
	}

	// Type assertion
	v, ok := user.(session.Account) // Casting to session Account interface
	if !ok {
		// Handle error
		return status.Error(codes.Internal, "casting user to Admin failed")
	}

	if v.GetAccount() == nil {
		return status.Error(codes.Internal, "failed to read account")
	}

	// Retrieve account by id.
	Old, err := service.repo.Account.FindByID(ctx, uint64(v.GetAccount().ID))
	if err != nil {
		return err
	}

	account.ID = v.GetAccount().ID
	account.Type = v.GetAccount().Type
	account.Active = v.GetAccount().Active
	account.Verified = v.GetAccount().Verified

	// Password not empty
	if strings.TrimSpace(account.Password) != "" {
		// Compare old and new password.
		if strings.Compare(account.OldPassword, account.Password) == 0 {
			return status.Error(codes.InvalidArgument, "account update password: use a different password")
		}

		// Check password with hash.
		if !Old.CheckPassword(account.OldPassword) {
			// Wrong password
			return status.Error(codes.PermissionDenied, "account update password: old password do not match")
		}
	}

	err = service.repo.Account.Update(ctx, account)
	if err != nil {
		return err
	}

	return nil
}

// UpdateAdminAccount updates admin account.
func (service *accountService) UpdateAdminAccount(ctx context.Context, admin *model.Admin) error {
	// Obtaining value at session.User
	user := ctx.Value(session.User)
	if user == nil {
		// Handle nil condition
		return status.Error(codes.Unauthenticated, "user not found")
	}

	// Type assertion
	v, ok := user.(*model.Admin) // Casting to Admin
	if !ok {
		// Handle error
		return status.Error(codes.Internal, "casting user to Admin failed")
	}

	if v.Account == nil {
		return status.Error(codes.Internal, "failed to read account")
	}

	// Retrieve account by id.
	Old, err := service.repo.Account.FindByID(ctx, uint64(v.ID))
	if err != nil {
		return err
	}

	admin.Account.ID = v.ID
	admin.Account.Type = model.ADMIN
	admin.Account.Active = Old.Active
	admin.Account.Verified = Old.Verified

	// Password not empty
	if strings.TrimSpace(admin.Password) != "" {
		// Compare old and new password.
		if strings.Compare(admin.OldPassword, admin.Password) == 0 {
			return status.Error(codes.InvalidArgument, "account update password: use a different password")
		}

		// Check password with hash.
		if !Old.CheckPassword(admin.OldPassword) {
			// Wrong password
			return status.Error(codes.PermissionDenied, "account update password: old password do not match")
		}
	}

	err = service.repo.Account.Update(ctx, admin.Account)
	if err != nil {
		return err
	}

	return nil
}

// UpdateAgencyAccount updates agency profile and account.
func (service *accountService) UpdateAgencyAccount(ctx context.Context, agency *model.Agency) error {
	// Obtaining value at session.User
	user := ctx.Value(session.User)
	if user == nil {
		// Handle nil condition
		return status.Error(codes.Unauthenticated, "user not found")
	}

	// Type assertion
	v, ok := user.(*model.Agency) // Casting to Agency
	if !ok {
		// Handle error
		return status.Error(codes.Internal, "casting user to Agency failed")
	}

	if v.Account == nil {
		return status.Error(codes.Internal, "failed to read account")
	}

	// Retrieve account by id.
	Old, err := service.repo.Account.FindAgencyByAccountID(ctx, uint64(v.Account.ID))
	if err != nil {
		return err
	}

	agency.ID = v.ID
	agency.Address.ID = Old.Address.ID

	if agency.Account != nil {
		if Old.Account == nil {
			return status.Error(codes.Internal, "failed to retrieve account")
		}

		agency.Account.ID = Old.Account.ID
		agency.Account.Type = model.AGENCY
		agency.Account.Active = Old.Account.Active
		agency.Account.Verified = Old.Account.Verified

		// Password not empty
		if strings.TrimSpace(agency.Account.Password) != "" {
			// Compare old and new password.
			if strings.Compare(agency.Account.OldPassword, agency.Account.Password) == 0 {
				return status.Error(codes.InvalidArgument, "account update password: use a different password")
			}

			// Check password with hash.
			if !Old.Account.CheckPassword(agency.Account.OldPassword) {
				// Wrong password
				return status.Error(codes.PermissionDenied, "account update password: old password do not match")
			}
		}
	}

	oldDocs := map[string]struct{}{}
	for _, doc := range Old.Documents {
		oldDocs[doc] = struct{}{}
	}

	defer func() {
		if err != nil {
			// Delete files when save failed.
			for _, doc := range agency.Documents {
				_, ok := oldDocs[doc]
				if ok {
					continue
				}
				service.media.Delete(doc)
			}
		}
	}()

	for _, f := range agency.Files {
		if len(f.Buffer) > 0 {
			reader := bytes.NewReader(f.Buffer)
			objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			agency.Documents = append(agency.Documents, objectID)
			continue
		}
		_, ok := oldDocs[f.Filename]
		if !ok {
			continue
		}
		agency.Documents = append(agency.Documents, f.Filename)
	}

	err = service.repo.Agency.Update(ctx, agency)
	if err != nil {
		return err
	}

	for _, doc := range agency.Documents {
		_, ok := oldDocs[doc]
		if ok {
			continue
		}
		service.media.Delete(doc)
	}

	return nil
}

// UpdateDiverAccount updates diver profile and account.
func (service *accountService) UpdateDiverAccount(ctx context.Context, diver *model.Diver) error {
	// Obtaining value at session.User
	user := ctx.Value(session.User)
	if user == nil {
		// Handle nil condition
		return status.Error(codes.Unauthenticated, "user not found")
	}

	// Type assertion
	v, ok := user.(*model.Diver) // Casting to Diver
	if !ok {
		// Handle error
		return status.Error(codes.Internal, "casting user to Diver failed")
	}

	if v.Account == nil {
		return status.Error(codes.Internal, "failed to read account")
	}

	// Retrieve account by id.
	Old, err := service.repo.Account.FindDiverByAccountID(ctx, uint64(v.Account.ID))
	if err != nil {
		return err
	}

	diver.ID = v.ID

	if diver.Account != nil {
		if Old.Account == nil {
			return status.Error(codes.Internal, "failed to retrieve account")
		}

		diver.Account.ID = Old.Account.ID
		diver.Account.Type = model.DIVER
		diver.Account.Active = Old.Account.Active
		diver.Account.Verified = Old.Account.Verified

		// Password not empty
		if strings.TrimSpace(diver.Account.Password) != "" {
			// Compare old and new password.
			if strings.Compare(diver.Account.OldPassword, diver.Account.Password) == 0 {
				return status.Error(codes.InvalidArgument, "account update password: use a different password")
			}

			// Check password with hash.
			if !Old.Account.CheckPassword(diver.Account.OldPassword) {
				// Wrong password
				return status.Error(codes.PermissionDenied, "account update password: old password do not match")
			}
		}
	}

	oldDocs := map[string]struct{}{}
	for _, doc := range diver.Documents {
		oldDocs[doc] = struct{}{}
	}

	defer func() {
		if err != nil {
			// Delete files when save failed.
			for _, doc := range diver.Documents {
				_, ok := oldDocs[doc]
				if ok {
					continue
				}
				service.media.Delete(doc)
			}
		}
	}()

	for _, f := range diver.Files {
		if len(f.Buffer) > 0 {
			reader := bytes.NewReader(f.Buffer)
			objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			diver.Documents = append(diver.Documents, objectID)
			continue
		}
		_, ok := oldDocs[f.Filename]
		if !ok {
			continue
		}
		diver.Documents = append(diver.Documents, f.Filename)
	}

	err = service.repo.Diver.Update(ctx, diver)
	if err != nil {
		return err
	}

	for _, doc := range diver.Documents {
		_, ok := oldDocs[doc]
		if ok {
			continue
		}
		service.media.Delete(doc)
	}

	return nil
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
	accountRecord, err := service.repo.Account.FindByEmail(ctx, email)
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
		account, err = service.repo.Account.FindAdminByAccountID(ctx, uint64(accountRecord.ID))
	case model.AGENCY:
		account, err = service.repo.Account.FindAgencyByAccountID(ctx, uint64(accountRecord.ID))
	case model.DIVER:
		account, err = service.repo.Account.FindDiverByAccountID(ctx, uint64(accountRecord.ID))
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
func (service *accountService) GetProfile(ctx context.Context) (session.Account, error) {
	s := ctx.Value(session.User)
	if s == nil {
		return nil, status.Error(codes.Unauthenticated, "account: account not found")
	}

	account, ok := s.(session.Account)
	if !ok {
		return nil, status.Error(codes.Unauthenticated, "account: account not found")
	}

	switch account.GetAccount().Type {
	case model.ADMIN:
		admin, err := service.repo.Account.FindAdminByAccountID(ctx, uint64(account.GetAccount().ID))
		if err != nil {
			return nil, err
		}
		admin.Account.Password = ""
		return admin, nil
	case model.AGENCY:
		agency, err := service.repo.Account.FindAgencyByAccountID(ctx, uint64(account.GetAccount().ID))
		if err != nil {
			return nil, err
		}
		agency.Account.Password = ""
		if len(agency.Documents) > 0 {
			agency.Files = make([]*model.File, 0, len(agency.Documents))
			for _, doc := range agency.Documents {
				file := model.File{
					Filename: doc,
					URL:      service.media.Get(doc, true),
				}
				agency.Files = append(agency.Files, &file)
			}
		}
		return agency, err
	case model.DIVER:
		diver, err := service.repo.Account.FindDiverByAccountID(ctx, uint64(account.GetAccount().ID))
		if err != nil {
			return nil, err
		}
		diver.Account.Password = ""
		if len(diver.Documents) > 0 {
			diver.Files = make([]*model.File, 0, len(diver.Documents))
			for _, doc := range diver.Documents {
				file := model.File{
					Filename: doc,
					URL:      service.media.Get(doc, true),
				}
				diver.Files = append(diver.Files, &file)
			}
		}
		return diver, nil
	}

	return nil, status.Error(codes.Unauthenticated, "account: account not found")
}
