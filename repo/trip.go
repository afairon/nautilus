package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// TripRepository defines interface for interaction
// with the trip repository.
type TripRepository interface {
	ListTripsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Trip, error)
}

// tripRepository implements TripRepository interface.
type tripRepository struct {
	db *gorm.DB
}

// NewTripRepository creates a new TripRepository.
func NewTripRepository(db *gorm.DB) *tripRepository {
	return &tripRepository{
		db: db,
	}
}

// ListTripsByAgency returns list of trips by agency id.
func (repo *tripRepository) ListTripsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Trip, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		trip.id, trip.max_guest, trip.price, trip.from_date, trip.to_date, trip.last_reservation_date, trip.created_on, trip.updated_on,
	// 		trip_template.id, trip_template."name", trip_template.description, trip_template."type", trip_template.images, trip_template.created_on, trip_template.updated_on
	// 	FROM
	// 		public.trip trip
	// 	JOIN
	// 		public.trip_template trip_template
	// 	ON
	// 		trip.template_id = trip_template.id
	// 	WHERE
	// 		trip.agency_id = $1
	// 	ORDER BY
	// 		trip.updated_on DESC
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListTripsResponse_Trip, 0, limit)

	// for rows.Next() {
	// 	trip := &pb.ListTripsResponse_Trip{}
	// 	trip.Template = &pb.ListTripsResponse_TripTemplate{}
	// 	var images pq.StringArray

	// 	err = rows.Scan(&trip.Id, &trip.MaxGuest, &trip.Price, &trip.FromDate, &trip.ToDate, &trip.LastReservationDate, &trip.CreatedOn, &trip.UpdatedOn,
	// 		&trip.Template.Id, &trip.Template.Name, &trip.Template.Description, &trip.Template.TripType, &images, &trip.Template.CreatedOn, &trip.Template.UpdatedOn,
	// 	)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(images) > 0 {
	// 		trip.Template.Images = make([]*pb.File, 0, len(images))

	// 		for _, image := range images {
	// 			file := &pb.File{
	// 				Link: image,
	// 			}
	// 			trip.Template.Images = append(trip.Template.Images, file)
	// 		}
	// 	}

	// 	results = append(results, trip)
	// }

	// return results, nil

	var trips []*model.Trip

	if result := repo.db.Limit(int(limit)).Offset(int(offset)).Where("agency_id = ?", id).Find(&trips); result.Error != nil {
		return nil, result.Error
	}

	return trips, nil
}
