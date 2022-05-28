package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// StaffRepository defines interface for interaction
// with the staff repository.
type StaffRepository interface {
	Create(ctx context.Context, staff *model.Staff) (*model.Staff, error)
	Get(ctx context.Context, id uint64) (*model.Staff, error)

	UpdateStaff(ctx context.Context, staff *model.Staff) (*model.Staff, error)
	DeleteStaff(ctx context.Context, staff *model.Staff) error

	ListStaffsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Staff, error)
}

// staffRepository implements StaffRepository interface.
type staffRepository struct {
	db *gorm.DB
}

// NewStaffRepository creates a new StaffRepository.
func NewStaffRepository(db *gorm.DB) *staffRepository {
	return &staffRepository{
		db: db,
	}
}

// Create creates an staff record and returns the newly created record.
func (repo *staffRepository) Create(ctx context.Context, staff *model.Staff) (*model.Staff, error) {
	// var result entity.Staff

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.staff
	// 		(first_name, last_name, position, gender, agency_id)
	// 	VALUES
	// 		($1, $2, $3, $4, $5)
	// 	RETURNING id, first_name, last_name, position, gender, agency_id, created_on, updated_on
	// `, staff.FirstName, staff.LastName, staff.Position, staff.Gender, staff.AgencyId)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// Get retrieves the staff record by its id.
func (repo *staffRepository) Get(ctx context.Context, id uint64) (*model.Staff, error) {
	var staff model.Staff

	if err := repo.db.First(&staff, id).Error; err != nil {
		return nil, err
	}
	return &staff, nil
}

// ListStaffsByAgency returns list of staffs by agency id.
func (repo *staffRepository) ListStaffsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Staff, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		staff.id, staff.first_name, staff.last_name, staff."position", staff.gender, staff.created_on, staff.updated_on
	// 	FROM
	// 		public.staff staff
	// 	WHERE
	// 		staff.agency_id = $1
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListStaffsResponse_Staff, 0, limit)

	// for rows.Next() {
	// 	staff := &pb.ListStaffsResponse_Staff{}

	// 	err = rows.Scan(&staff.Id, &staff.FirstName, &staff.LastName, &staff.Position, &staff.Gender, &staff.CreatedOn, &staff.UpdatedOn)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	results = append(results, staff)
	// }

	// return results, nil

	var staffs []*model.Staff

	if result := repo.db.Limit(int(limit)).Offset(int(offset)).Where("agency_id = ?", id).Find(&staffs); result.Error != nil {
		return nil, result.Error
	}

	return staffs, nil
}

func (repo *staffRepository) UpdateStaff(ctx context.Context, staff *model.Staff) (*model.Staff, error) {
	err := repo.db.Transaction(func(tx *gorm.DB) error {
		if err := repo.db.Model(staff).Omit("Gender").Updates(staff).Error; err != nil {
			return err
		}

		if err := repo.db.Model(staff).Select("Gender").Updates(staff).Error; err != nil {
			return err
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return staff, nil
}

func (repo *staffRepository) DeleteStaff(ctx context.Context, staff *model.Staff) error {
	return repo.db.Delete(staff).Error
}
