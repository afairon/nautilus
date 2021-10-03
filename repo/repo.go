package repo

import (
	"context"
	"fmt"

	"github.com/jmoiron/sqlx"
)

// DBTX defines query behavior.
type DBTX interface {
	GetContext(context.Context, interface{}, string, ...interface{}) error
	Queryx(query string, args ...interface{}) (*sqlx.Rows, error)
}

// Queries manages the repository.
type Queries struct {
	Account AccountRepository
	Address AddressRepository
	Agency  AgencyRepository
	Diver   DiverRepository
	Staff   StaffRepository
}

// newQueries creates a new repository manager.
func newQueries(db DBTX) *Queries {
	return &Queries{
		Account: NewAccountRepository(db),
		Address: NewAddressRepository(db),
		Agency:  NewAgencyRepository(db),
		Diver:   NewDiverRepository(db),
		Staff:   NewStaffRepository(db),
	}
}

// Repo is a repository for managing entities.
type Repo struct {
	db *sqlx.DB
	*Queries
}

// NewRepo creates a new database repository.
func NewRepo(db *sqlx.DB) *Repo {
	return &Repo{
		db:      db,
		Queries: newQueries(db),
	}
}

// ExecTx is wrapper for executing queries using transaction.
func (repo *Repo) ExecTx(ctx context.Context, fn func(*Queries) error) error {
	tx, err := repo.db.BeginTxx(ctx, nil)
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
