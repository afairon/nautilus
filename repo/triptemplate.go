package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// TripTemplateRepository defines interface for interaction
// with the trip template repository.
type TripTemplateRepository interface {
	Get(ctx context.Context, id uint64) (*model.TripTemplate, error)
	Update(ctx context.Context, tripTemplate *model.TripTemplate) (*model.TripTemplate, error)
	ListTripTemplatesByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.TripTemplate, error)
}

// tripTemplateRepository implements TripTemplateRepository interface.
type tripTemplateRepository struct {
	db *gorm.DB
}

// NewTripTemplateRepository creates a new TripTemplateRepository.
func NewTripTemplateRepository(db *gorm.DB) *tripTemplateRepository {
	return &tripTemplateRepository{
		db: db,
	}
}

func (repo *tripTemplateRepository) Get(ctx context.Context, id uint64) (*model.TripTemplate, error) {
	var tripTemplate model.TripTemplate

	if err := repo.db.Preload("Address").First(&tripTemplate, id).Error; err != nil {
		return nil, err
	}

	return &tripTemplate, nil
}

func (repo *tripTemplateRepository) Update(ctx context.Context, tripTemplate *model.TripTemplate) (*model.TripTemplate, error) {
	err := repo.db.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(tripTemplate).Updates(tripTemplate).Error; err != nil {
			return err
		}

		// Update address of Hotel
		if err := tx.Model(&tripTemplate.Address).Updates(&tripTemplate.Address).Error; err != nil {
			return err
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return tripTemplate, nil
}

// ListTripsByAgency returns list of trips by agency id.
func (repo *tripTemplateRepository) ListTripTemplatesByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.TripTemplate, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		id, "name", description, "type",
	// 		CASE
	// 			WHEN hotel_id IS NULL THEN 0
	// 			ELSE hotel_id
	// 		END AS hotel_id,
	// 		CASE
	// 			WHEN boat_id IS NULL THEN 0
	// 			ELSE boat_id
	// 		END AS boat_id,
	// 		CASE
	// 			WHEN liveaboard_id IS NULL THEN 0
	// 			ELSE liveaboard_id
	// 		END AS liveaboard_id,
	// 		images, created_on, updated_on
	// 	FROM
	// 		public.trip_template
	// 	WHERE
	// 		agency_id = $1
	// 	ORDER BY
	// 		updated_on DESC
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListTripTemplatesResponse_TripTemplate, 0, limit)

	// for rows.Next() {
	// 	template := &pb.ListTripTemplatesResponse_TripTemplate{}
	// 	var images pq.StringArray

	// 	err = rows.Scan(&template.Id, &template.Name, &template.Description, &template.TripType,
	// 		&template.HotelId, &template.BoatId, &template.LiveaboardId,
	// 		&images, &template.CreatedOn, &template.UpdatedOn,
	// 	)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(images) > 0 {
	// 		template.Images = make([]*pb.File, 0, len(images))

	// 		for _, image := range images {
	// 			file := &pb.File{
	// 				Link: image,
	// 			}
	// 			template.Images = append(template.Images, file)
	// 		}
	// 	}

	// 	results = append(results, template)
	// }

	// return results, nil

	var templates []*model.TripTemplate

	if result := repo.db.Limit(int(limit)).Offset(int(offset)).Where("agency_id = ?", id).Find(&templates); result.Error != nil {
		return nil, result.Error
	}

	return templates, nil
}
