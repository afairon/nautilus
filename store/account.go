package store

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

// AccountStore defines interface for interaction
// with the account storage.
type AccountStore interface {
	Create(context.Context, *entity.Account) (entity.Account, error)
	Get(context.Context, int64) (entity.Account, error)
	GetByEmail(context.Context, string) (entity.Account, error)
	GetByUsername(context.Context, string) (entity.Account, error)
}

// Account implements AccountStore interface.
type Account struct {
	db DBTX
}

// NewAccountStore creates a new AccountStore.
func NewAccountStore(db DBTX) AccountStore {
	return &Account{
		db: db,
	}
}

// Create creates an account record and returns the newly created record.
func (store *Account) Create(ctx context.Context, account *entity.Account) (entity.Account, error) {
	var result entity.Account

	err := store.db.GetContext(ctx, &result,
		`INSERT INTO public.account (username, email, password, type)
		VALUES ($1, $2, $3, $4)
		RETURNING id, username, email, type, verified, active, created_on, updated_on`,
		account.Username,
		account.Email,
		account.Password,
		account.Type,
	)

	return result, err
}

// Get retrieves the account record by its id.
func (store *Account) Get(ctx context.Context, id int64) (entity.Account, error) {
	var result entity.Account

	err := store.db.GetContext(ctx, &result,
		`SELECT id, username, email, password, type, verified, active, created_on, updated_on
		FROM public.account
		WHERE id = $1`,
		id,
	)

	return result, err
}

// Get retrieves the account record by its email.
func (store *Account) GetByEmail(ctx context.Context, email string) (entity.Account, error) {
	var result entity.Account

	err := store.db.GetContext(ctx, &result,
		`SELECT id, username, email, password, type, verified, active, created_on, updated_on
		FROM public.account
		WHERE email = $1`,
		email,
	)

	return result, err
}

// Get retrieves the account record by its username.
func (store *Account) GetByUsername(ctx context.Context, username string) (entity.Account, error) {
	var result entity.Account

	err := store.db.GetContext(ctx, &result,
		`SELECT id, username, email, password, type, verified, active, created_on, updated_on
		FROM public.account
		WHERE username = $1`,
		username,
	)

	return result, err
}
