package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
)

// StaffRepository defines interface for interaction
// with the staff repository.
type StaffRepository interface {
	Create(ctx context.Context, staff *entity.Staff) (*entity.Staff, error)
	Get(ctx context.Context, id uint64) (*entity.Staff, error)
	ListStaffsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListStaffsResponse_Staff, error)
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

// ListStaffsByAgency returns list of staffs by agency id.
func (repo *staffRepository) ListStaffsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListStaffsResponse_Staff, error) {
	rows, err := repo.db.Queryx(`
		SELECT
			staff.id, staff.first_name, staff.last_name, staff."position", staff.gender, staff.created_on, staff.updated_on
		FROM
			public.staff staff
		WHERE
			staff.agency_id = $1
		LIMIT
			$2
		OFFSET
			$3
	`, id, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	results := make([]*pb.ListStaffsResponse_Staff, 0, limit)

	for rows.Next() {
		staff := &pb.ListStaffsResponse_Staff{}

		err = rows.Scan(&staff.Id, &staff.FirstName, &staff.LastName, &staff.Position, &staff.Gender, &staff.CreatedOn, &staff.UpdatedOn)
		if err != nil {
			return nil, err
		}

		results = append(results, staff)
	}

	return results, nil
}
