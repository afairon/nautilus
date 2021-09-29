package store

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

type AccountStore interface {
	Create(context.Context, *entity.Account) (entity.Account, error)
	Get(context.Context, int64) (entity.Account, error)
	GetByEmail(context.Context, string) (entity.Account, error)
	GetByUsername(context.Context, string) (entity.Account, error)
}

type Account struct {
	db DBTX
}

func NewAccountStore(db DBTX) AccountStore {
	return &Account{
		db: db,
	}
}

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
