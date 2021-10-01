package store

import (
	"context"
	"fmt"

	"github.com/afairon/nautilus/entity"
	"github.com/jmoiron/sqlx"
)

// DBTX defines query behavior.
type DBTX interface {
	GetContext(context.Context, interface{}, string, ...interface{}) error
}

// queries manages the repository.
type queries struct {
	account AccountStore
	address AddressStore
	agency  AgencyStore
	diver   DiverStore
	staff   StaffStore
}

// newQueries creates a new repository manager.
func newQueries(db DBTX) *queries {
	return &queries{
		account: NewAccountStore(db),
		address: NewAddressStore(db),
		agency:  NewAgencyStore(db),
		diver:   NewDiverStore(db),
		staff:   NewStaffStore(db),
	}
}

// Store is a repository for managing entities.
type Store struct {
	db *sqlx.DB
	*queries
}

// NewStore creates a new database store.
func NewStore(db *sqlx.DB) *Store {
	return &Store{
		db:      db,
		queries: newQueries(db),
	}
}

// execTx is wrapper for executing queries using transaction.
func (store *Store) execTx(ctx context.Context, fn func(*queries) error) error {
	tx, err := store.db.BeginTxx(ctx, nil)
	if err != nil {
		return err
	}

	dbtx := newQueries(tx)
	err = fn(dbtx)
	if err != nil {
		if rbErr := tx.Rollback(); rbErr != nil {
			return fmt.Errorf("tx err: %v, rb err: %v", err, rbErr)
		}
		return err
	}

	return tx.Commit()
}

// CreateAgencyAccount creates an agency account by first creating
// a record in account table, then a record in address table, and
// finally a record in agency table with account_id and address_id.
func (store *Store) CreateAgencyAccount(ctx context.Context, account *entity.Account, address *entity.Address, agency *entity.Agency) error {
	err := store.execTx(ctx, func(q *queries) error {
		newAccount, err := q.account.Create(ctx, account)
		if err != nil {
			return err
		}

		newAddress, err := q.address.Create(ctx, address)
		if err != nil {
			return err
		}

		agency.AccountId = newAccount.Id
		agency.AddressId = newAddress.Id
		_, err = q.agency.Create(ctx, agency)

		return err
	})

	return err
}

// CreateDiverAccount creates a diver account by first creating
// a record in account table and finally a record in diver table
// with account_id.
func (store *Store) CreateDiverAccount(ctx context.Context, account *entity.Account, diver *entity.Diver) error {
	err := store.execTx(ctx, func(q *queries) error {
		newAccount, err := q.account.Create(ctx, account)
		if err != nil {
			return err
		}

		diver.AccountId = newAccount.Id
		_, err = q.diver.Create(ctx, diver)

		return err
	})

	return err
}

// GetAccountByEmail retrieves account by email.
func (store *Store) GetAccountByEmail(ctx context.Context, email string) (entity.Account, error) {
	return store.account.GetByEmail(ctx, email)
}
