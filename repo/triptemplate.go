package repo

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/lib/pq"
)

// TripTemplateRepository defines interface for interaction
// with the trip template repository.
type TripTemplateRepository interface {
	ListTripTemplatesByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListTripTemplatesResponse_TripTemplate, error)
}

// tripTemplateRepository implements TripTemplateRepository interface.
type tripTemplateRepository struct {
	db DBTX
}

// NewTripTemplateRepository creates a new TripTemplateRepository.
func NewTripTemplateRepository(db DBTX) *tripTemplateRepository {
	return &tripTemplateRepository{
		db: db,
	}
}

// ListTripsByAgency returns list of trips by agency id.
func (repo *tripTemplateRepository) ListTripTemplatesByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListTripTemplatesResponse_TripTemplate, error) {
	rows, err := repo.db.Queryx(`
		SELECT
			id, "name", description, "type",
			CASE
				WHEN hotel_id IS NULL THEN 0
				ELSE hotel_id
			END AS hotel_id,
			CASE
				WHEN boat_id IS NULL THEN 0
				ELSE boat_id
			END AS boat_id,
			CASE
				WHEN liveaboard_id IS NULL THEN 0
				ELSE liveaboard_id
			END AS liveaboard_id,
			images, created_on, updated_on
		FROM
			public.trip_template
		WHERE
			agency_id = $1
		ORDER BY
			updated_on DESC
		LIMIT
			$2
		OFFSET
			$3
	`, id, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	results := make([]*pb.ListTripTemplatesResponse_TripTemplate, 0, limit)

	for rows.Next() {
		template := &pb.ListTripTemplatesResponse_TripTemplate{}
		var images pq.StringArray

		err = rows.Scan(&template.Id, &template.Name, &template.Description, &template.TripType,
			&template.HotelId, &template.BoatId, &template.LiveaboardId,
			&images, &template.CreatedOn, &template.UpdatedOn,
		)
		if err != nil {
			return nil, err
		}

		if len(images) > 0 {
			template.Images = make([]*pb.File, 0, len(images))

			for _, image := range images {
				file := &pb.File{
					Link: image,
				}
				template.Images = append(template.Images, file)
			}
		}

		results = append(results, template)
	}

	return results, nil
}
