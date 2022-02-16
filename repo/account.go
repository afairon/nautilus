package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// AccountRepository defines interface for interaction
// with the account repository.
type AccountRepository interface {
	// Create(ctx context.Context, account *entity.Account) (*entity.Account, error)
	Get(ctx context.Context, id uint64) (*model.Account, error)
	GetByEmail(ctx context.Context, email string) (*model.Account, error)
	GetByUsername(ctx context.Context, username string) (*model.Account, error)
	GetAdminAccount(ctx context.Context, id uint64) (*model.Admin, error)
	GetAgencyAccount(ctx context.Context, id uint64) (*model.Agency, error)
	GetDiverAccount(ctx context.Context, id uint64) (*model.Diver, error)
	List(ctx context.Context, limit, offset uint64) ([]*model.Account, error)
}

// accountRepository implements AccountRepository interface.
type accountRepository struct {
	db *gorm.DB
}

// NewAccountRepository creates a new AccountRepository.
func NewAccountRepository(db *gorm.DB) *accountRepository {
	return &accountRepository{
		db: db,
	}
}

// Create creates an account record and returns the newly created record.
func (repo *accountRepository) Create(ctx context.Context, account *model.Account) (*model.Account, error) {
	// var result model.Account

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.account
	// 		(username, email, "password", "type")
	// 	VALUES
	// 		($1, LOWER($2), $3, $4)
	// 	RETURNING id, username, email, "type", verified, active, created_on, updated_on
	// `, account.Username, account.Email, account.Password, account.Type)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// Get retrieves the account record by its id.
func (repo *accountRepository) Get(ctx context.Context, id uint64) (*model.Account, error) {
	var account model.Account

	if result := repo.db.Take(&account, id); result.Error != nil {
		return nil, result.Error
	}

	return &account, nil
}

// GetByEmail retrieves the account record by its email.
func (repo *accountRepository) GetByEmail(ctx context.Context, email string) (*model.Account, error) {
	var account model.Account

	if result := repo.db.Where("LOWER(email) = ?", email).Take(&account); result.Error != nil {
		return nil, result.Error
	}

	return &account, nil
}

// GetByUsername retrieves the account record by its username.
func (repo *accountRepository) GetByUsername(ctx context.Context, username string) (*model.Account, error) {
	var account model.Account

	if result := repo.db.Where("accounts.username = ?", username).Take(&account); result.Error != nil {
		return nil, result.Error
	}

	return &account, nil
}

// GetAdminAccount retrieves admin account.
func (repo *accountRepository) GetAdminAccount(ctx context.Context, id uint64) (*model.Admin, error) {
	var admin model.Admin

	if result := repo.db.Table("accounts").Where("accounts.id = ? AND accounts.type = ?", id, model.ADMIN).Take(&admin); result.Error != nil {
		return nil, result.Error
	}

	return &admin, nil
}

// GetAgencyAccount retrieves agency account.
func (repo *accountRepository) GetAgencyAccount(ctx context.Context, id uint64) (*model.Agency, error) {
	var agency model.Agency

	if result := repo.db.Preload("Account").Preload("Address").Joins("JOIN accounts ON accounts.agency_id = agencies.id").Where("accounts.id = ?", id).Take(&agency); result.Error != nil {
		return nil, result.Error
	}

	return &agency, nil
}

// GetDiverAccount retrieves diver account.
func (repo *accountRepository) GetDiverAccount(ctx context.Context, id uint64) (*model.Diver, error) {
	var diver model.Diver

	if result := repo.db.Preload("Account").Joins("JOIN accounts ON accounts.diver_id = divers.id").Where("accounts.id = ?", id).Take(&diver); result.Error != nil {
		return nil, result.Error
	}

	return &diver, nil
}

// List returns list of accounts.
func (repo *accountRepository) List(ctx context.Context, limit uint64, offset uint64) ([]*model.Account, error) {
	var accounts []*model.Account

	if result := repo.db.Limit(int(limit)).Offset(int(offset)).Find(&accounts); result.Error != nil {
		return nil, result.Error
	}

	return accounts, nil
}
