package store

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

// AgencyStore defines interface for interaction
// with the agency storage.
type AgencyStore interface {
	Create(context.Context, *entity.Agency) (entity.Agency, error)
	Get(context.Context, int64) (entity.Agency, error)
}

// Agency implements AgencyStore interface.
type Agency struct {
	db DBTX
}

// NewAgencyStore creates a new AgencyStore.
func NewAgencyStore(db DBTX) AgencyStore {
	return &Agency{
		db: db,
	}
}

// Create creates an agency record and returns the newly created record.
func (store *Agency) Create(ctx context.Context, agency *entity.Agency) (entity.Agency, error) {
	var result entity.Agency

	err := store.db.GetContext(ctx, &result,
		`INSERT INTO public.agency (name, phone, account_id, address_id, documents)
		VALUES ($1, $2, $3, $4, $5)
		RETURNING id, name, phone, account_id, address_id, documents, created_on, updated_on`,
		agency.Name,
		agency.Phone,
		agency.AccountId,
		agency.AddressId,
		agency.Documents,
	)

	return result, err
}

// Get retrieves the agency record by its id.
func (store *Agency) Get(ctx context.Context, id int64) (entity.Agency, error) {
	var result entity.Agency

	err := store.db.GetContext(ctx, &result,
		`SELECT id, name, phone, account_id, address_id, documents, created_on, updated_on
		FROM public.agency
		WHERE id = $1`,
		id,
	)

	return result, err
}
