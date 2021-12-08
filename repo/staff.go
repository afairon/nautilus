package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

// StaffRepository defines interface for interaction
// with the staff repository.
type StaffRepository interface {
	Create(ctx context.Context, staff *entity.Staff) (*entity.Staff, error)
	Get(ctx context.Context, id uint64) (*entity.Staff, error)
}

// staffRepository implements StaffRepository interface.
type staffRepository struct {
	db DBTX
}

// NewStaffRepository creates a new StaffRepository.
func NewStaffRepository(db DBTX) *staffRepository {
	return &staffRepository{
		db: db,
	}
}

// Create creates an staff record and returns the newly created record.
func (repo *staffRepository) Create(ctx context.Context, staff *entity.Staff) (*entity.Staff, error) {
	var result entity.Staff

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO 
			public.staff
			(first_name, last_name, position, gender, agency_id)
		VALUES
			($1, $2, $3, $4, $5)
		RETURNING id, first_name, last_name, position, gender, agency_id, created_on, updated_on
	`, staff.FirstName, staff.LastName, staff.Position, staff.Gender, staff.AgencyId)

	return &result, err
}

// Get retrieves the staff record by its id.
func (repo *staffRepository) Get(ctx context.Context, id uint64) (*entity.Staff, error) {
	var result entity.Staff

	err := repo.db.GetContext(ctx, result, `
		SELECT
			id, first_name, last_name, position, gender, agency_id, created_on, updated_on
		FROM
			public.staff
		WHERE 
			id = $1
	`, id)

	return &result, err
}
