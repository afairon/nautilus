package repo

import (
	"context"
	"fmt"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// LiveaboardRepository defines interface for interaction
// with the liveaboard repository.
type LiveaboardRepository interface {
	UpdateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) (*model.Liveaboard, error)
	ListLiveaboardsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Liveaboard, error)
	GetLiveaboard(ctx context.Context, id uint64) (*model.Liveaboard, error)
}

// liveaboardRepository implements LiveaboardRepository interface.
type liveaboardRepository struct {
	db *gorm.DB
}

// NewLiveaboardRepository creates a new LiveaboardRepository.
func NewLiveaboardRepository(db *gorm.DB) *liveaboardRepository {
	return &liveaboardRepository{
		db: db,
	}
}

// ListLiveaboardsByAgency returns list of liveaboards by agency id.
func (repo *liveaboardRepository) ListLiveaboardsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Liveaboard, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		liveaboard.id, liveaboard."name", liveaboard.description, liveaboard.length, liveaboard.width, liveaboard.images, liveaboard.created_on, liveaboard.updated_on
	// 	FROM
	// 		public.liveaboard liveaboard
	// 	WHERE
	// 		liveaboard.agency_id = $1
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListLiveaboardsResponse_Liveaboard, 0, limit)

	// for rows.Next() {
	// 	liveaboard := &pb.ListLiveaboardsResponse_Liveaboard{}
	// 	var images pq.StringArray

	// 	err = rows.Scan(&liveaboard.Id, &liveaboard.Name, &liveaboard.Description, &liveaboard.Length, &liveaboard.Width, &images, &liveaboard.CreatedOn, &liveaboard.UpdatedOn)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(images) > 0 {
	// 		liveaboard.Images = make([]*pb.File, 0, len(images))

	// 		for _, image := range images {
	// 			file := &pb.File{
	// 				Link: image,
	// 			}
	// 			liveaboard.Images = append(liveaboard.Images, file)
	// 		}
	// 	}

	// 	results = append(results, liveaboard)
	// }

	// return results, nil
	var liveaboards []*model.Liveaboard

	result := repo.db.Limit(int(limit)).Offset(int(offset)).Preload("Address").Where("agency_id = ?", id).Find(&liveaboards)
	return liveaboards, result.Error
}

func (repo *liveaboardRepository) GetLiveaboard(ctx context.Context, id uint64) (*model.Liveaboard, error) {
	var liveaboard model.Liveaboard

	if err := repo.db.Preload("Address").Preload("RoomTypes.Amenities").First(&liveaboard, id).Error; err != nil {
		return nil, err
	}

	return &liveaboard, nil
}

func (repo *liveaboardRepository) UpdateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) (*model.Liveaboard, error) {
	err := repo.db.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(liveaboard).Omit("Coordinate").Updates(liveaboard).Error; err != nil {
			return err
		}

		// Update address of Hotel
		if err := tx.Model(&liveaboard.Address).Updates(&liveaboard.Address).Error; err != nil {
			return err
		}

		// Update room types of liveaboard
		if len(liveaboard.RoomTypes) > 0 {
			// TODO refactor

			for _, roomType := range liveaboard.RoomTypes {
				if err := tx.Model(&roomType).Updates(&roomType).Error; err != nil {
					return err
				}

				fmt.Printf("%+v\n", liveaboard.RoomTypes)

				if err := tx.Model(&roomType).Association("Amenities").Replace(roomType.Amenities); err != nil {
					return err
				}

				fmt.Printf("%+v\n", liveaboard.RoomTypes)
			}
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return liveaboard, nil
}
