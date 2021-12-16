package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"github.com/lib/pq"
)

// AgencyRepository defines interface for interaction
// with the agency repository.
type AgencyRepository interface {
	Create(ctx context.Context, agency *entity.Agency) (*entity.Agency, error)
	CreateDiveMaster(ctx context.Context, diveMaster *entity.DiveMaster) (*entity.DiveMaster, error)
	CreateHotel(ctx context.Context, hotel *entity.Hotel) (*entity.Hotel, error)
	CreateRoomType(ctx context.Context, roomType *entity.RoomType, isHotel bool) (*entity.RoomType, error)
	CreateAmenity(ctx context.Context, amenity *entity.Amenity) (*entity.Amenity, error)
	CreateRoomAmenity(ctx context.Context, roomAmenity *entity.RoomAmenity) (*entity.RoomAmenity, error)
	CreateTripTemplate(ctx context.Context, tripTemplate *entity.TripTemplate) (*entity.TripTemplate, error)
	CreateTrip(ctx context.Context, trip *entity.Trip) (*entity.Trip, error)
	CreateDiveMasterTripLink(ctx context.Context, diveMasterTripLink *entity.DiverMasterTrip) (*entity.DiverMasterTrip, error)
	CreateBoat(ctx context.Context, divingBoat *entity.Boat) (*entity.Boat, error)
	CreateStaff(ctx context.Context, staff *entity.Staff) (*entity.Staff, error)
	CreateLiveaboard(ctx context.Context, liveaboard *entity.Liveaboard) (*entity.Liveaboard, error)
	Get(ctx context.Context, id uint64) (*entity.Agency, error)
	List(ctx context.Context, limit, offset uint64) ([]pb.Agency, error)
}

// Agency implements AgencyRepository interface.
type Agency struct {
	db DBTX
}

// NewAgencyRepository creates a new AgencyRepository.
func NewAgencyRepository(db DBTX) *Agency {
	return &Agency{
		db: db,
	}
}

// Create creates an agency record and returns the newly created record.
func (repo *Agency) Create(ctx context.Context, agency *entity.Agency) (*entity.Agency, error) {
	var result entity.Agency

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.agency
			(name, phone, account_id, address_id, documents)
		VALUES
			($1, $2, $3, $4, $5)
		RETURNING id, name, phone, account_id, address_id, documents, created_on, updated_on
	`, agency.Name, agency.Phone, agency.AccountId, agency.AddressId, agency.Documents)

	return &result, err
}

// CreateDiveMaster creates an dive master record and returns the newly created record.z
func (repo *Agency) CreateDiveMaster(ctx context.Context, diveMaster *entity.DiveMaster) (*entity.DiveMaster, error) {
	var result entity.DiveMaster

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.dive_master
			(first_name, last_name, level, agency_id, documents)
		VALUES
			($1, $2, $3, $4, $5)
		RETURNING id, first_name, last_name, level, agency_id, created_on, updated_on
	`, diveMaster.FirstName, diveMaster.LastName, diveMaster.Level, diveMaster.AgencyId, diveMaster.Documents)

	return &result, err
}

func (repo *Agency) CreateHotel(ctx context.Context, hotel *entity.Hotel) (*entity.Hotel, error) {
	var result entity.Hotel

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.hotel
			(name, description, stars, phone, agency_id, address_id, images)
		VALUES
			($1, $2, $3, $4, $5, $6, $7)
		RETURNING id, name, description, stars, phone, agency_id, address_id, images, created_on, updated_on
		`, hotel.Name, hotel.Description, hotel.Stars, hotel.Phone, hotel.AgencyId, hotel.AddressId, hotel.Images)

	return &result, err
}

func (repo *Agency) CreateRoomType(ctx context.Context, roomType *entity.RoomType, isHotel bool) (*entity.RoomType, error) {
	var result entity.RoomType
	var err error

	if isHotel {
		err = repo.db.GetContext(ctx, &result, `
			INSERT INTO
				public.room_type
				(name, description, max_guest, price, quantity, hotel_id, images)
			VALUES
				($1, $2, $3, $4, $5, $6, $7)
			RETURNING id, name, description, max_guest, price, quantity, hotel_id, images, created_on, updated_on
			`, roomType.Name, roomType.Description, roomType.MaxGuest, roomType.Price, roomType.Quantity, roomType.HotelId, roomType.Images)
	} else {
		err = repo.db.GetContext(ctx, &result, `
			INSERT INTO
				public.room_type
				(name, description, max_guest, price, quantity, liveaboard_id, images)
			VALUES
				($1, $2, $3, $4, $5, $6, $7)
			RETURNING id, name, description, max_guest, price, quantity, liveaboard_id, images, created_on, updated_on
			`, roomType.Name, roomType.Description, roomType.MaxGuest, roomType.Price, roomType.Quantity, roomType.LiveaboardId, roomType.Images)
	}

	return &result, err
}

func (repo *Agency) CreateAmenity(ctx context.Context, amenity *entity.Amenity) (*entity.Amenity, error) {
	var result entity.Amenity

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.amenity
			(name, description)
		VALUES
			($1, $2)
		RETURNING id, name, description, created_on, updated_on
		`, amenity.Name, amenity.Description)

	return &result, err
}

func (repo *Agency) CreateRoomAmenity(ctx context.Context, roomAmenity *entity.RoomAmenity) (*entity.RoomAmenity, error) {
	var result entity.RoomAmenity

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.room_amenity_link
			(room_type_id, amenity_id)
		VALUES
			($1, $2)
		RETURNING id, room_type_id, amenity_id
		`, roomAmenity.RoomTypeId, roomAmenity.AmenityId)

	return &result, err
}

func (repo *Agency) CreateTripTemplate(ctx context.Context, tripTemplate *entity.TripTemplate) (*entity.TripTemplate, error) {
	var result entity.TripTemplate
	var err error

	if tripTemplate.GetType() == pb.ONSHORE {
		err = repo.db.GetContext(ctx, &result, `
			INSERT INTO
				public.trip_template
				(name, description, type, agency_id, hotel_id, boat_id, images)
			VALUES
				($1, $2, $3, $4, $5, $6, $7)
			RETURNING id, name, description, type, agency_id, hotel_id, boat_id, images, created_on, updated_on
		`, tripTemplate.Name, tripTemplate.Description, tripTemplate.Type,
			tripTemplate.AgencyId, tripTemplate.HotelId,
			tripTemplate.BoatId, tripTemplate.Images)
	}

	return &result, err
}

func (repo *Agency) CreateTrip(ctx context.Context, trip *entity.Trip) (*entity.Trip, error) {
	var result entity.Trip

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.trip
			(template_id, agency_id, max_guest, price, from_date, to_date, last_reservation_date)
		VALUES
			($1, $2, $3, $4, $5, $6, $7)
		RETURNING id, template_id, agency_id, max_guest, price, from_date, to_date, last_reservation_date, created_on, updated_on
		`, trip.TemplateId, trip.AgencyId, trip.MaxGuest, trip.Price, trip.FromDate, trip.ToDate, trip.LastReservationDate)

	return &result, err
}

func (repo *Agency) CreateDiveMasterTripLink(ctx context.Context, diveMasterTripLink *entity.DiverMasterTrip) (*entity.DiverMasterTrip, error) {
	var result entity.DiverMasterTrip

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.dive_master_trip_link
			(dive_master_id, trip_id)
		VALUES
			($1, $2)
		RETURNING id, dive_master_id, trip_id
		`, diveMasterTripLink.DiveMasterId, diveMasterTripLink.TripId)

	return &result, err
}

func (repo *Agency) CreateBoat(ctx context.Context, divingBoat *entity.Boat) (*entity.Boat, error) {
	var result entity.Boat

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.boat
			(name, agency_id, images)
		VALUES
			($1, $2, $3)
		RETURNING id, name, agency_id, images, created_on, updated_on
	`, divingBoat.Name, divingBoat.AgencyId, divingBoat.Images)

	return &result, err
}

func (repo *Agency) CreateStaff(ctx context.Context, staff *entity.Staff) (*entity.Staff, error) {
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

func (repo *Agency) CreateLiveaboard(ctx context.Context, liveaboard *entity.Liveaboard) (*entity.Liveaboard, error) {
	var result entity.Liveaboard

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.liveaboard
			(name, description, length, width, agency_id, images)
		VALUES
			($1, $2, $3, $4, $5, $6)
		RETURNING id, name, description, length, width, agency_id, images, created_on, updated_on
	`, liveaboard.Name, liveaboard.Description, liveaboard.Length, liveaboard.Width, liveaboard.AgencyId, liveaboard.Images)

	return &result, err
}

// Get retrieves the agency record by its id.
func (repo *Agency) Get(ctx context.Context, id uint64) (*entity.Agency, error) {
	var result entity.Agency

	err := repo.db.GetContext(ctx, &result, `
		SELECT
			id, name, phone, account_id, address_id, documents, created_on, updated_on
		FROM
			public.agency
		WHERE
			id = $1
	`, id)

	return &result, err
}

// List returns list of agencies.
func (repo *Agency) List(ctx context.Context, limit, offset uint64) ([]pb.Agency, error) {
	rows, err := repo.db.Queryx(`
		SELECT
			agency.id, agency.name, agency.phone, agency.documents, agency.created_on, agency.updated_on,
			account.id, account.username, account.email, account."type", account.verified, account.active, account.created_on, account.updated_on,
			address.id, address.address_line_1, address.address_line_2, address.city, address.postcode, address.region, address.country
		FROM
			public.agency
		JOIN
			public.account
		ON
			account.id = agency.account_id
		JOIN
			public.address
		ON
			address.id = agency.address_id
		LIMIT
			$1
		OFFSET
			$2
	`, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	results := make([]pb.Agency, 0, limit)

	for rows.Next() {
		agency := pb.Agency{}
		var documents pq.StringArray

		err = rows.Scan(&agency.Id, &agency.Name, &agency.Phone, &documents, &agency.CreatedOn, &agency.UpdatedOn,
			&agency.Account.Id, &agency.Account.Username, &agency.Account.Email, &agency.Account.Type, &agency.Account.Verified,
			&agency.Account.Active, &agency.Account.CreatedOn, &agency.Account.UpdatedOn,
			&agency.Address.Id, &agency.Address.AddressLine_1, &agency.Address.AddressLine_2, &agency.Address.City, &agency.Address.Postcode,
			&agency.Address.Region, &agency.Address.Country,
		)
		if err != nil {
			return nil, err
		}

		if len(documents) > 0 {
			agency.Documents = make([]pb.File, 0, len(documents))

			for _, document := range documents {
				file := pb.File{
					Link: document,
				}
				agency.Documents = append(agency.Documents, file)
			}
		}

		results = append(results, agency)
	}

	return results, nil
}
