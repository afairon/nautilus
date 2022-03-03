package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// BoatRepository defines interface for interaction
// with the boat repository.
type BoatRepository interface {
	UpdateBoat(ctx context.Context, boat *model.Boat) (*model.Boat, error)
	ListBoatsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Boat, error)
	GetBoat(ctx context.Context, id uint) (*model.Boat, error)
}

// boatRepository implements BoatRepository interface.
type boatRepository struct {
	db *gorm.DB
}

// NewBoatRepository creates a new BoatRepository.
func NewBoatRepository(db *gorm.DB) *boatRepository {
	return &boatRepository{
		db: db,
	}
}

// ListBoatsByAgency returns list of boats by agency id.
func (repo *boatRepository) ListBoatsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Boat, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		id, "name", "images", created_on, updated_on
	// 	FROM
	// 		public.boat
	// 	WHERE
	// 		agency_id = $1
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListBoatsResponse_Boat, 0, limit)

	// for rows.Next() {
	// 	boat := &pb.ListBoatsResponse_Boat{}
	// 	var images pq.StringArray

	// 	err = rows.Scan(&boat.Id, &boat.Name, &images, &boat.CreatedOn, &boat.UpdatedOn)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(images) > 0 {
	// 		boat.Images = make([]*pb.File, 0, len(images))

	// 		for _, image := range images {
	// 			file := &pb.File{
	// 				Link: image,
	// 			}
	// 			boat.Images = append(boat.Images, file)
	// 		}
	// 	}

	// 	results = append(results, boat)
	// }

	// return results, nil
	var boats []*model.Boat

	result := repo.db.Limit(int(limit)).Offset(int(offset)).Where("agency_id = ?", id).Find(&boats)
	return boats, result.Error
}

func (repo *boatRepository) GetBoat(ctx context.Context, id uint) (*model.Boat, error) {
	var boat model.Boat

	result := repo.db.First(&boat, id)
	return &boat, result.Error
}

func (repo *boatRepository) UpdateBoat(ctx context.Context, boat *model.Boat) (*model.Boat, error) {
	err := repo.db.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(boat).Session(&gorm.Session{FullSaveAssociations: true}).Omit("AddressID", "Amenities").Updates(boat).Error; err != nil {
			return err
		}

		// if err := tx.Model(boat).Session(&gorm.Session{FullSaveAssociations: true}).Association("Address").Replace(&boat.Address); err != nil {
		// 	return err
		// }

		return nil
	})

	if err != nil {
		return nil, err
	}

	return boat, nil
}
