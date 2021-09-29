package store

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

type StaffStore interface {
	Create(context.Context, *entity.Staff) (entity.Staff, error)
	Get(context.Context, int64) (entity.Staff, error)
}

type Staff struct {
	db DBTX
}

func NewStaffStore(db DBTX) StaffStore {
	return &Staff{
		db: db,
	}
}

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
