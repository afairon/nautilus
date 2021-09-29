package store

import (
	"context"
	"fmt"

	"github.com/afairon/nautilus/entity"
	"github.com/jmoiron/sqlx"
)

type DBTX interface {
	GetContext(context.Context, interface{}, string, ...interface{}) error
}

type Store struct {
	db      *sqlx.DB
	account AccountStore
	address AddressStore
	agency  AgencyStore
	diver   DiverStore
	staff   StaffStore
}

func NewStore(db *sqlx.DB) *Store {
	return &Store{
		db:      db,
		account: NewAccountStore(db),
		address: NewAddressStore(db),
		agency:  NewAgencyStore(db),
		diver:   NewDiverStore(db),
		staff:   NewStaffStore(db),
	}
}

type tx struct {
	account AccountStore
	address AddressStore
	agency  AgencyStore
	diver   DiverStore
	staff   StaffStore
}

func newTx(db DBTX) *tx {
	return &tx{
		account: NewAccountStore(db),
		address: NewAddressStore(db),
		agency:  NewAgencyStore(db),
		diver:   NewDiverStore(db),
		staff:   NewStaffStore(db),
	}
}

func (store *Store) execTx(ctx context.Context, fn func(*tx) error) error {
	tx, err := store.db.BeginTxx(ctx, nil)
	if err != nil {
		return err
	}

	dbtx := newTx(tx)
	err = fn(dbtx)
	if err != nil {
		if rbErr := tx.Rollback(); rbErr != nil {
			return fmt.Errorf("tx err: %v, rb err: %v", err, rbErr)
		}
		return err
	}

	return tx.Commit()
}

func (store *Store) CreateAgencyAccount(ctx context.Context, account *entity.Account, address *entity.Address, agency *entity.Agency) error {
	err := store.execTx(ctx, func(transaction *tx) error {
		newAccount, err := transaction.account.Create(ctx, account)
		if err != nil {
			return err
		}

		newAddress, err := transaction.address.Create(ctx, address)
		if err != nil {
			return err
		}

		agency.AccountId = newAccount.Id
		agency.AddressId = newAddress.Id
		_, err = transaction.agency.Create(ctx, agency)

		return err
	})

	return err
}

func (store *Store) CreateDiverAccount(ctx context.Context, account *entity.Account, diver *entity.Diver) error {
	err := store.execTx(ctx, func(transaction *tx) error {
		newAccount, err := transaction.account.Create(ctx, account)
		if err != nil {
			return err
		}

		diver.AccountId = newAccount.Id
		_, err = transaction.diver.Create(ctx, diver)

		return err
	})

	return err
}
