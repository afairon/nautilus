package store

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

// StaffStore defines interface for interaction
// with the staff storage.
type StaffStore interface {
	Create(context.Context, *entity.Staff) (entity.Staff, error)
	Get(context.Context, int64) (entity.Staff, error)
}

// Staff implements StaffStore interface.
type Staff struct {
	db DBTX
}

// NewStaffStore creates a new StaffStore.
func NewStaffStore(db DBTX) *Staff {
	return &Staff{
		db: db,
	}
}

// Create creates an staff record and returns the newly created record.
func (store *Staff) Create(ctx context.Context, staff *entity.Staff) (entity.Staff, error) {
	var result entity.Staff

	err := store.db.GetContext(ctx, &result,
		`INSERT INTO public.staff (first_name, last_name, position, gender, agency_id)
		VALUES ($1, $2, $3, $4, $5)
		RETURNING id, first_name, last_name, position, gender, agency_id, created_on, updated_on`,
		staff.FirstName,
		staff.LastName,
		staff.Position,
		staff.Gender.String(),
		staff.AgencyId,
	)

	return result, err
}

// Get retrieves the staff record by its id.
func (store *Staff) Get(ctx context.Context, id int64) (entity.Staff, error) {
	var result entity.Staff

	err := store.db.GetContext(ctx, result,
		`SELECT id, first_name, last_name, position, gender, agency_id, created_on, updated_on
		FROM public.staff
		WHERE id = $1`,
		id,
	)

	return result, err
}
