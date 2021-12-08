package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
)

// AccountRepository defines interface for interaction
// with the account repository.
type AccountRepository interface {
	Create(ctx context.Context, account *entity.Account) (*entity.Account, error)
	Get(ctx context.Context, id uint64) (*entity.Account, error)
	GetByEmail(ctx context.Context, email string) (*entity.Account, error)
	GetByUsername(ctx context.Context, username string) (*entity.Account, error)
	List(ctx context.Context, limit, offset uint64) ([]pb.Account, error)
}

// accountRepository implements AccountRepository interface.
type accountRepository struct {
	db DBTX
}

// NewAccountRepository creates a new AccountRepository.
func NewAccountRepository(db DBTX) *accountRepository {
	return &accountRepository{
		db: db,
	}
}

// Create creates an account record and returns the newly created record.
func (repo *accountRepository) Create(ctx context.Context, account *entity.Account) (*entity.Account, error) {
	var result entity.Account

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.account
			(username, email, "password", "type")
		VALUES
			($1, $2, $3, $4)
		RETURNING id, username, email, "type", verified, active, created_on, updated_on
	`, account.Username, account.Email, account.Password, account.Type)

	return &result, err
}

// Get retrieves the account record by its id.
func (repo *accountRepository) Get(ctx context.Context, id uint64) (*entity.Account, error) {
	var result entity.Account

	err := repo.db.GetContext(ctx, &result, `
		SELECT
			id, username, email, "password", "type", verified, active, created_on, updated_on
		FROM
			public.account
		WHERE
			id = $1
	`, id)

	return &result, err
}

// Get retrieves the account record by its email.
func (repo *accountRepository) GetByEmail(ctx context.Context, email string) (*entity.Account, error) {
	var result entity.Account

	err := repo.db.GetContext(ctx, &result, `
		SELECT
			id, username, email, "password", "type", verified, active, created_on, updated_on
		FROM
			public.account
		WHERE
			email = $1
	`, email)

	return &result, err
}

// Get retrieves the account record by its username.
func (repo *accountRepository) GetByUsername(ctx context.Context, username string) (*entity.Account, error) {
	var result entity.Account

	err := repo.db.GetContext(ctx, &result, `
		SELECT
			id, username, email, "password", "type", verified, active, created_on, updated_on
		FROM
			public.account
		WHERE
			username = $1
	`, username)

	return &result, err
}

// List returns list of accounts.
func (repo *accountRepository) List(ctx context.Context, limit uint64, offset uint64) ([]pb.Account, error) {
	rows, err := repo.db.Queryx(`
		SELECT
			id, username, email, "type", verified, active, created_on, updated_on
		FROM
			public.account
		LIMIT
			$1
		OFFSET
			$2
	`, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	results := make([]pb.Account, 0, limit)

	for rows.Next() {
		account := pb.Account{}

		err = rows.Scan(&account.Id, &account.Email, &account.Type, &account.Verified, &account.Active, &account.CreatedOn, &account.UpdatedOn)
		if err != nil {
			return nil, err
		}

		results = append(results, account)
	}

	return results, nil
}
