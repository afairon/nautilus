package repo

import (
	"context"
	"time"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// TripRepository defines interface for interaction
// with the trip repository.
type TripRepository interface {
	Get(ctx context.Context, id uint64) (*model.Trip, error)
	UpdateTrip(ctx context.Context, trip *model.Trip, unUsedRoomTypePrices []model.RoomTypeTripPrice) (*model.Trip, error)
	DeleteTrip(ctx context.Context, trip *model.Trip) error
	ListTripsByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Trip, error)
	ListTripsWithTemplatesByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Trip, error)
	ListTrips(ctx context.Context, lastReservationDate *time.Time, limit, offset uint64) ([]*model.Trip, error)
	ListUnfullTripsByAgency(ctx context.Context, lastReservationDate *time.Time, id, limit, offset uint64) ([]*model.Trip, error)
	ListEndedTripsOverPeriod(ctx context.Context, startDate, endDate *time.Time, id, limit, offset uint64) ([]*model.Trip, error)
	ListIncomingTripsOverPeriod(ctx context.Context, startDate, endDate *time.Time, id, limit, offset uint64) ([]*model.Trip, error)
	SearchTrips(ctx context.Context, country, city, region string, diver_rooms uint32, startDate, endDate *time.Time, tripType model.TripType, limit, offset uint) ([]*model.Trip, error)
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

func (repo *tripRepository) Get(ctx context.Context, id uint64) (*model.Trip, error) {
	var trip model.Trip

	result := repo.db.Preload("DiveSites")
	result.Preload("DiveMasters")
	result.Preload("HotelRoomTypeTripPrices")
	result.Preload("LiveaboardRoomTypeTripPrices")

	result.First(&trip, id)

	if result.Error != nil {
		return nil, result.Error
	}

	return &trip, nil
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

// ListTripsWithTemplatesByAgency returns list of trips with templates by agency id.
func (repo *tripRepository) ListTripsWithTemplatesByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.Trip, error) {
	var trips []*model.Trip

	result := repo.db.Preload("TripTemplate.Address")
	result.Preload("DiveMasters")
	result.Preload("DiveSites")
	result.Preload("HotelRoomTypeTripPrices")
	result.Preload("LiveaboardRoomTypeTripPrices")

	if result := result.Limit(int(limit)).Offset(int(offset)).Where("agency_id = ?", id).Find(&trips); result.Error != nil {
		return nil, result.Error
	}

	return trips, nil
}

func (repo *tripRepository) ListTrips(ctx context.Context, lastReservationDate *time.Time, limit, offset uint64) ([]*model.Trip, error) {
	var trips []*model.Trip

	result := repo.db.Preload("DiveMasters")
	result.Preload("TripTemplate.Address")
	result.Preload("TripTemplate.Hotel")
	result.Preload("TripTemplate.Liveaboard")
	result.Preload("TripTemplate.Boat")
	result.Preload("DiveSites")
	result.Preload("HotelRoomTypeTripPrices")
	result.Preload("LiveaboardRoomTypeTripPrices")
	result.Where("trips.current_guest < trips.max_guest")
	result.Where("trips.last_reservation_date >= ?", *lastReservationDate)

	result.Find(&trips)

	if result.Error != nil {
		return nil, result.Error
	}

	return trips, nil
}

func (repo *tripRepository) ListUnfullTripsByAgency(ctx context.Context, lastReservationDate *time.Time, id, limit, offset uint64) ([]*model.Trip, error) {
	var trips []*model.Trip

	result := repo.db.Preload("DiveMasters")
	result.Preload("TripTemplate.Address")
	result.Preload("TripTemplate.Hotel")
	result.Preload("TripTemplate.Liveaboard")
	result.Preload("TripTemplate.Boat")
	result.Preload("DiveSites")
	result.Preload("HotelRoomTypeTripPrices")
	result.Preload("LiveaboardRoomTypeTripPrices")
	result.Where("agency_id = ?", id)
	result.Where("trips.current_guest < trips.max_guest")
	result.Where("trips.last_reservation_date >= ?", *lastReservationDate)

	result.Limit(int(limit)).Offset(int(offset)).Find(&trips)

	if result.Error != nil {
		return nil, result.Error
	}

	return trips, nil
}

func (repo *tripRepository) ListEndedTripsOverPeriod(ctx context.Context, startDate, endDate *time.Time, id, limit, offset uint64) ([]*model.Trip, error) {
	var trips []*model.Trip

	result := repo.db.Preload("DiveMasters")
	result.Preload("TripTemplate.Address")
	result.Preload("TripTemplate.Hotel")
	result.Preload("TripTemplate.Liveaboard")
	result.Preload("TripTemplate.Boat")
	result.Preload("DiveSites")
	result.Preload("HotelRoomTypeTripPrices")
	result.Preload("LiveaboardRoomTypeTripPrices")
	result.Where("agency_id = ?", id)
	result.Where("trips.last_reservation_date BETWEEN ? AND ?", *startDate, *endDate)

	result.Limit(int(limit)).Offset(int(offset)).Find(&trips)

	if result.Error != nil {
		return nil, result.Error
	}

	return trips, nil
}

func (repo *tripRepository) ListIncomingTripsOverPeriod(ctx context.Context, startDate, endDate *time.Time, id, limit, offset uint64) ([]*model.Trip, error) {
	var trips []*model.Trip

	result := repo.db.Preload("DiveMasters")
	result.Preload("TripTemplate.Address")
	result.Preload("TripTemplate.Hotel")
	result.Preload("TripTemplate.Liveaboard")
	result.Preload("TripTemplate.Boat")
	result.Preload("DiveSites")
	result.Preload("HotelRoomTypeTripPrices")
	result.Preload("LiveaboardRoomTypeTripPrices")
	result.Where("agency_id = ?", id)

	if startDate != nil {
		result.Where("trips.start_date >= ?", *startDate)
	}

	if endDate != nil {
		result.Where("trips.end_date <= ?", *endDate)
	}

	result.Limit(int(limit)).Offset(int(offset)).Find(&trips)

	if result.Error != nil {
		return nil, result.Error
	}

	return trips, nil
}

func (repo *tripRepository) SearchTrips(ctx context.Context, country, city, region string, divers uint32, startDate, endDate *time.Time, tripType model.TripType, limit, offset uint) ([]*model.Trip, error) {
	// tx := repo.db.Model(&model.Trip{}).Preload("TripTemplate.Address").Find(&trip)
	// fmt.Println(tx)
	// fmt.Printf("trip: %+v\n", trip)

	// if len(country) > 0 {
	// 	if tx = repo.db.Where("country = ?", country); tx.Error != nil {
	// 		return nil, tx.Error
	// 	}
	// }

	// if len(city) > 0 {
	// 	if tx = repo.db.Where("city = ?", city); tx.Error != nil {
	// 		return nil, tx.Error
	// 	}
	// }

	// if len(region) > 0 {
	// 	if tx = repo.db.Where("region = ?", region); tx.Error != nil {
	// 		return nil, tx.Error
	// 	}
	// }

	// tx.Preload("Hotel.RoomTypes").Preload("Boat").Where("max_guest = ?", divers).Where("start_date BETWEEN ? AND ?", start_date, end_date).Where("end_date BETWEEN ? AND ?", start_date, end_date)
	// if result := tx.Limit(int(limit)).Offset(int(offset)).Find(&trips); result.Error != nil {
	// 	return nil, result.Error
	// }

	var trips []*model.Trip

	result := repo.db.Preload("DiveMasters")
	result.Preload("TripTemplate.Address")
	result.Preload("TripTemplate.Hotel")
	result.Preload("TripTemplate.Liveaboard")
	result.Preload("TripTemplate.Boat")
	result.Preload("DiveSites")
	result.Preload("HotelRoomTypeTripPrices")
	result.Preload("LiveaboardRoomTypeTripPrices")
	result.Joins("JOIN trip_templates ON trip_templates.id = trips.trip_template_id")
	result.Joins("JOIN addresses ON addresses.id = trip_templates.address_id")
	result.Joins("LEFT JOIN hotels ON hotels.id = trip_templates.hotel_id")
	result.Joins("LEFT JOIN boats ON boats.id = trip_templates.boat_id")
	result.Joins("LEFT JOIN liveaboards ON liveaboards.id = trip_templates.liveaboard_id")
	switch tripType {
	case model.ONSHORE:
		result.Where("trip_templates.type = ? AND trip_templates.hotel_id IS NOT NULL AND trip_templates.boat_id IS NOT NULL AND trip_templates.liveaboard_id IS NULL", model.ONSHORE)
	case model.OFFSHORE:
		result.Where("trip_templates.type = ? AND trip_templates.hotel_id IS NULL AND trip_templates.boat_id IS NULL AND trip_templates.liveaboard_id IS NOT NULL", model.OFFSHORE)
	}
	result.Where("trips.max_guest >= ?", divers)
	result.Where("addresses.country ILIKE ? OR addresses.city ILIKE ? OR addresses.region ILIKE ?", country, city, region)
	if endDate != nil {
		result.Where("trips.start_date BETWEEN ? AND ?", *startDate, *endDate)
		result.Where("trips.end_date BETWEEN ? AND ?", *startDate, *endDate)
	} else {
		result.Where("trips.start_date >= ?", *startDate)
		result.Where("trips.end_date >= ?", *startDate)
	}
	result.Find(&trips)

	if result.Error != nil {
		return nil, result.Error
	}

	/*rows, err := repo.db.Raw(`
	SELECT trip.id, trip.max_guest, trip.price, trip.start_date, trip.end_date, trip.last_reservation_date, trip.created_at, trip.updated_at,
		trip_template.id, trip_template.name, trip_template.descirption, trip_template."type", trip_template.images, trip_template.created_at, trip_template.updated_at,
		boat.id, boat.name, boat.description, boat.total_capacity, boat.diver_capacity, boat.staff_capacity, boat.images, boat.created_at, boat.updated_at,
		hotel.id, hotel.name, hotel.description, hotel.stars, hotel.phone, hotel.images
			FROM
				public.trips trip
			JOIN
				public.trip_templates trip_template
			ON
				trip.trip_template_id = trip_template.id
			JOIN
				public.addresses address
			ON
				trip_template.address_id = address.id
			JOIN
				public.boats boat
			ON
				trip_template.boat_id = boat.id
			JOIN
				public.hotels hotel
			ON
				trip_template.hotel_id = hotel.id
			JOIN
				public.room_types room_type
			ON
				hotel.id = room_type.hotel_id
			WHERE
				room_type.max_guest >= ?
				AND (start_date BETWEEN ? AND ?)
				AND (end_date BETWEEN ? AND ?)
				AND (country = ? OR city = ? OR region = ?)
	`, divers, start_date, end_date, start_date, end_date, country, city, region).Rows()

	if err != nil {
		return nil, err
	}

	defer rows.Close()

	for rows.Next() {
		trip := &model.Trip{
			Model:               &gorm.Model{},
			MaxGuest:            0,
			Price:               0,
			StartDate:           &time.Time{},
			EndDate:             &time.Time{},
			LastReservationDate: &time.Time{},
			DiveMasters:         []model.DiveMaster{},
			TripTemplateID:      0,
			TripTemplate:        model.TripTemplate{},
			AgencyID:            0,
		}
		tripTemplate := model.TripTemplate{
			Model:        &gorm.Model{},
			Name:         "",
			Descirption:  "",
			Type:         0,
			Images:       []string{},
			AddressID:    0,
			Address:      model.Address{},
			Trips:        []model.Trip{},
			AgencyID:     0,
			HotelID:      0,
			Hotel:        model.Hotel{},
			LiveaboardID: 0,
			Liveaboard:   model.Liveaboard{},
			BoatID:       0,
			Boat:         model.Boat{},
		}
		boat := model.Boat{
			Model:         &gorm.Model{},
			AddressID:     0,
			Address:       model.Address{},
			Name:          "",
			Description:   "",
			TotalCapacity: 0,
			DiverCapacity: 0,
			StaffCapacity: 0,
			Images:        []string{},
			Amenities:     []model.Amenity{},
			AgencyID:      0,
		}
		hotel := model.Hotel{
			Model:       &gorm.Model{},
			Coordinate:  model.Coordinate{},
			AddressID:   0,
			Address:     model.Address{},
			Name:        "",
			Description: "",
			Stars:       0,
			Phone:       "",
			Images:      []string{},
			RoomTypes:   []model.RoomType{},
			AgencyID:    0,
		}

		err = rows.Scan(&trip.ID, &trip.MaxGuest, &trip.Price, &trip.StartDate, &trip.EndDate, &trip.LastReservationDate, &trip.CreatedAt, &trip.UpdatedAt,
			&tripTemplate.ID, &tripTemplate.Name, &tripTemplate.Descirption, &tripTemplate.Type, &tripTemplate.Images, &tripTemplate.CreatedAt, &tripTemplate.UpdatedAt,
			&boat.ID, &boat.Name, &boat.Description, &boat.TotalCapacity, &boat.DiverCapacity, &boat.StaffCapacity, &boat.Images, &boat.CreatedAt, &boat.UpdatedAt,
			&hotel.ID, &hotel.Name, &hotel.Description, &hotel.Stars, &hotel.Phone, &hotel.Images,
		)

		if err != nil {
			return nil, err
		}

		trip.TripTemplate = tripTemplate
		trip.TripTemplate.Boat = boat
		trip.TripTemplate.Hotel = hotel

		trips = append(trips, trip)
	}*/

	return trips, nil
}

func (repo *tripRepository) UpdateTrip(ctx context.Context, trip *model.Trip, unUsedRoomTypePrices []model.RoomTypeTripPrice) (*model.Trip, error) {

	err := repo.db.Transaction(func(tx *gorm.DB) error {
		if err := tx.Model(trip).Omit("ReservationRoomTypes", "HotelRoomTypeTripPrices", "LiveaboardRoomTypeTripPrices").Updates(trip).Error; err != nil {
			return err
		}

		if err := tx.Model(trip).Association("DiveMasters").Replace(trip.DiveMasters); err != nil {
			return err
		}

		switch trip.TripTemplate.Type {
		case model.ONSHORE:
			for _, roomTypePrice := range trip.HotelRoomTypeTripPrices {
				if err := tx.Model(&roomTypePrice).Where("room_type_id = ? AND trip_id = ?", roomTypePrice.RoomTypeID, roomTypePrice.TripID).Save(&roomTypePrice).Error; err != nil {
					return err
				}
			}

			for _, roomTypePrice := range unUsedRoomTypePrices {
				if v, ok := roomTypePrice.(*model.HotelRoomTypeTripPrice); ok {
					if err := tx.Where("room_type_id = ? AND trip_id = ?", v.RoomTypeID, v.TripID).Delete(v).Error; err != nil {
						return err
					}
				}
			}
		case model.OFFSHORE:
			for _, roomTypePrice := range trip.LiveaboardRoomTypeTripPrices {
				if err := tx.Model(&roomTypePrice).Where("room_type_id = ? AND trip_id = ?", roomTypePrice.RoomTypeID, roomTypePrice.TripID).Save(&roomTypePrice).Error; err != nil {
					return err
				}
			}

			for _, roomTypePrice := range unUsedRoomTypePrices {
				if v, ok := roomTypePrice.(*model.LiveaboardRoomTypeTripPrice); ok {
					if err := tx.Where("room_type_id = ? AND trip_id = ?", v.RoomTypeID, v.TripID).Delete(v).Error; err != nil {
						return err
					}
				}
			}
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return trip, nil
}

func (repo *tripRepository) DeleteTrip(ctx context.Context, trip *model.Trip) error {
	return repo.db.Delete(trip).Error
}
