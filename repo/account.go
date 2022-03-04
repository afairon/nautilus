package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
	"gorm.io/gorm/clause"
)

// AccountRepository defines interface for interaction
// with the account repository.
type AccountRepository interface {
	Create(ctx context.Context, account *model.Account) (*model.Account, error)
	Update(ctx context.Context, account *model.Account) error
	FindByID(ctx context.Context, id uint64) (*model.Account, error)
	FindByEmail(ctx context.Context, email string) (*model.Account, error)
	FindByUsername(ctx context.Context, username string) (*model.Account, error)
	FindAdminByAccountID(ctx context.Context, id uint64) (*model.Admin, error)
	FindAgencyByAccountID(ctx context.Context, id uint64) (*model.Agency, error)
	FindDiverByAccountID(ctx context.Context, id uint64) (*model.Diver, error)
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
	if result := repo.db.Create(account); result.Error != nil {
		return nil, result.Error
	}
	return account, nil
}

// Update updates account record.
func (repo *accountRepository) Update(ctx context.Context, account *model.Account) error {
	columns := []string{}

	if account.Email == "" {
		columns = append(columns, "Email")
	}
	if account.Username == "" {
		columns = append(columns, "Username")
	}
	if account.Password == "" {
		columns = append(columns, "Password")
	}

	if err := repo.db.Model(account).Omit(columns...).Updates(map[string]interface{}{
		"Email":    account.Email,
		"Username": account.Username,
		"Password": account.Password,
		"Verified": account.Verified,
		"Type":     account.Type,
		"Active":   account.Active,
	}).Error; err != nil {
		return err
	}

	return nil
}

// FindByID retrieves the account record by its id.
func (repo *accountRepository) FindByID(ctx context.Context, id uint64) (*model.Account, error) {
	var account model.Account

	if result := repo.db.Take(&account, id); result.Error != nil {
		return nil, result.Error
	}

	return &account, nil
}

// FindByEmail retrieves the account record by its email.
func (repo *accountRepository) FindByEmail(ctx context.Context, email string) (*model.Account, error) {
	var account model.Account

	if result := repo.db.Where("LOWER(email) = ?", email).Take(&account); result.Error != nil {
		return nil, result.Error
	}

	return &account, nil
}

// FindByUsername retrieves the account record by its username.
func (repo *accountRepository) FindByUsername(ctx context.Context, username string) (*model.Account, error) {
	var account model.Account

	if result := repo.db.Where("accounts.username = ?", username).Take(&account); result.Error != nil {
		return nil, result.Error
	}

	return &account, nil
}

// FindAdminByAccountID retrieves admin account.
func (repo *accountRepository) FindAdminByAccountID(ctx context.Context, id uint64) (*model.Admin, error) {
	var admin model.Admin

	if result := repo.db.Table("accounts").Where("accounts.id = ? AND accounts.type = ?", id, model.ADMIN).Take(&admin); result.Error != nil {
		return nil, result.Error
	}

	return &admin, nil
}

// FindAgencyByAccountID retrieves agency account.
func (repo *accountRepository) FindAgencyByAccountID(ctx context.Context, id uint64) (*model.Agency, error) {
	var agency model.Agency

	if result := repo.db.Preload("Account").Preload("Address").Joins("JOIN accounts ON accounts.agency_id = agencies.id").Where("accounts.id = ?", id).Take(&agency); result.Error != nil {
		return nil, result.Error
	}

	return &agency, nil
}

// FindDiverByAccountID retrieves diver account.
func (repo *accountRepository) FindDiverByAccountID(ctx context.Context, id uint64) (*model.Diver, error) {
	var diver model.Diver

	if result := repo.db.Preload(clause.Associations).Joins("JOIN accounts ON accounts.diver_id = divers.id").Where("accounts.id = ?", id).Take(&diver); result.Error != nil {
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
