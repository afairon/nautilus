package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// AgencyRepository defines interface for interaction
// with the agency repository.
type AgencyRepository interface {
	Create(ctx context.Context, agency *model.Agency) (*model.Agency, error)
	Update(ctx context.Context, agency *model.Agency) error
	CreateDiveMaster(ctx context.Context, diveMaster *model.DiveMaster) (*model.DiveMaster, error)
	CreateHotel(ctx context.Context, hotel *model.Hotel) (*model.Hotel, error)
	CreateRoomType(ctx context.Context, roomType *model.RoomType, isHotel bool) (*model.RoomType, error)
	CreateAmenity(ctx context.Context, amenity *model.Amenity) (*model.Amenity, error)
	// CreateRoomAmenity(ctx context.Context, roomAmenity *entity.RoomAmenity) (*entity.RoomAmenity, error)
	CreateTripTemplate(ctx context.Context, tripTemplate *model.TripTemplate) (*model.TripTemplate, error)
	CreateTrip(ctx context.Context, trip *model.Trip) (*model.Trip, error)
	CreateDiveMasterTripLink(ctx context.Context, diveMasterTripLink *model.DiveMasterTrip) (*model.DiveMasterTrip, error)
	CreateBoat(ctx context.Context, divingBoat *model.Boat) (*model.Boat, error)
	CreateStaff(ctx context.Context, staff *model.Staff) (*model.Staff, error)
	CreateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) (*model.Liveaboard, error)
	CreateAddress(ctx context.Context, address *model.Address) (*model.Address, error)
	Get(ctx context.Context, id uint64) (*model.Agency, error)
	List(ctx context.Context, limit, offset uint64) ([]*model.Agency, error)
}

// agencyRepository implements AgencyRepository interface.
type agencyRepository struct {
	db *gorm.DB
}

// NewAgencyRepository creates a new AgencyRepository.
func NewAgencyRepository(db *gorm.DB) *agencyRepository {
	return &agencyRepository{
		db: db,
	}
}

// Create creates an agency record and returns the newly created record.
func (repo *agencyRepository) Create(ctx context.Context, agency *model.Agency) (*model.Agency, error) {
	result := repo.db.Create(agency)

	return agency, result.Error
}

// Update updates agency record.
func (repo *agencyRepository) Update(ctx context.Context, agency *model.Agency) error {
	return repo.db.Transaction(func(tx *gorm.DB) error {
		if agency.Coordinate == nil {
			if err := repo.db.Model(agency).Session(&gorm.Session{FullSaveAssociations: true}).Omit("Account").Updates(map[string]interface{}{
				"Name":      agency.Name,
				"Phone":     agency.Phone,
				"Documents": agency.Documents,
				"Lat":       nil,
				"Long":      nil,
			}).Error; err != nil {
				return err
			}
		} else {
			if err := repo.db.Model(agency).Session(&gorm.Session{FullSaveAssociations: true}).Omit("Account").Updates(map[string]interface{}{
				"Name":      agency.Name,
				"Phone":     agency.Phone,
				"Documents": agency.Documents,
				"Lat":       agency.Coordinate.Lat,
				"Long":      agency.Coordinate.Long,
			}).Error; err != nil {
				return err
			}
		}

		if agency.Account == nil {
			return nil
		}

		columns := []string{}

		if agency.Account.Email == "" {
			columns = append(columns, "Email")
		}
		if agency.Account.Username == "" {
			columns = append(columns, "Username")
		}
		if agency.Account.Password == "" {
			columns = append(columns, "Password")
		}

		if err := repo.db.Model(agency.Account).Omit(columns...).Updates(map[string]interface{}{
			"Email":    agency.Account.Email,
			"Username": agency.Account.Username,
			"Password": agency.Account.Password,
		}).Error; err != nil {
			return err
		}

		return nil
	})
}

// CreateDiveMaster creates an dive master record and returns the newly created record.z
func (repo *agencyRepository) CreateDiveMaster(ctx context.Context, diveMaster *model.DiveMaster) (*model.DiveMaster, error) {
	result := repo.db.Create(diveMaster)

	return diveMaster, result.Error
}

func (repo *agencyRepository) CreateHotel(ctx context.Context, hotel *model.Hotel) (*model.Hotel, error) {
	result := repo.db.Create(hotel)

	return hotel, result.Error
}

func (repo *agencyRepository) CreateRoomType(ctx context.Context, roomType *model.RoomType, isHotel bool) (*model.RoomType, error) {
	// var result entity.RoomType
	// var err error

	// if isHotel {
	// 	err = repo.db.GetContext(ctx, &result, `
	// 		INSERT INTO
	// 			public.room_type
	// 			(name, description, max_guest, price, quantity, hotel_id, images)
	// 		VALUES
	// 			($1, $2, $3, $4, $5, $6, $7)
	// 		RETURNING id, name, description, max_guest, price, quantity, hotel_id, images, created_on, updated_on
	// 		`, roomType.Name, roomType.Description, roomType.MaxGuest, roomType.Price, roomType.Quantity, roomType.HotelId, roomType.Images)
	// } else {
	// 	err = repo.db.GetContext(ctx, &result, `
	// 		INSERT INTO
	// 			public.room_type
	// 			(name, description, max_guest, price, quantity, liveaboard_id, images)
	// 		VALUES
	// 			($1, $2, $3, $4, $5, $6, $7)
	// 		RETURNING id, name, description, max_guest, price, quantity, liveaboard_id, images, created_on, updated_on
	// 		`, roomType.Name, roomType.Description, roomType.MaxGuest, roomType.Price, roomType.Quantity, roomType.LiveaboardId, roomType.Images)
	// }

	// return &result, err
	return nil, errors.New("Unimplemented")
}

func (repo *agencyRepository) CreateAmenity(ctx context.Context, amenity *model.Amenity) (*model.Amenity, error) {
	// 	var result entity.Amenity

	// 	err := repo.db.GetContext(ctx, &result, `
	// 		INSERT INTO
	// 			public.amenity
	// 			(name, description)
	// 		VALUES
	// 			($1, $2)
	// 		RETURNING id, name, description, created_on, updated_on
	// 		`, amenity.Name, amenity.Description)

	// 	return &result, err
	return nil, errors.New("Unimplemented")
}

// func (repo *agencyRepository) CreateRoomAmenity(ctx context.Context, roomAmenity *entity.RoomAmenity) (*entity.RoomAmenity, error) {
// var result entity.RoomAmenity

// err := repo.db.GetContext(ctx, &result, `
// 	INSERT INTO
// 		public.room_amenity_link
// 		(room_type_id, amenity_id)
// 	VALUES
// 		($1, $2)
// 	RETURNING id, room_type_id, amenity_id
// 	`, roomAmenity.RoomTypeId, roomAmenity.AmenityId)

// return &result, err
// return nil, errors.New("Unimplemented")
// }

func (repo *agencyRepository) CreateTripTemplate(ctx context.Context, tripTemplate *model.TripTemplate) (*model.TripTemplate, error) {
	result := repo.db.Create(tripTemplate)

	return tripTemplate, result.Error
}

func (repo *agencyRepository) CreateTrip(ctx context.Context, trip *model.Trip) (*model.Trip, error) {
	result := repo.db.Create(trip)

	return trip, result.Error
}

func (repo *agencyRepository) CreateDiveMasterTripLink(ctx context.Context, diveMasterTripLink *model.DiveMasterTrip) (*model.DiveMasterTrip, error) {
	// var result entity.DiverMasterTrip

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.dive_master_trip_link
	// 		(dive_master_id, trip_id)
	// 	VALUES
	// 		($1, $2)
	// 	RETURNING id, dive_master_id, trip_id
	// 	`, diveMasterTripLink.DiveMasterId, diveMasterTripLink.TripId)

	// return &result, err
	result := repo.db.Create(diveMasterTripLink)

	return diveMasterTripLink, result.Error
}

func (repo *agencyRepository) CreateBoat(ctx context.Context, divingBoat *model.Boat) (*model.Boat, error) {
	result := repo.db.Create(divingBoat)

	return divingBoat, result.Error
}

func (repo *agencyRepository) CreateStaff(ctx context.Context, staff *model.Staff) (*model.Staff, error) {
	result := repo.db.Create(staff)

	return staff, result.Error
}

func (repo *agencyRepository) CreateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) (*model.Liveaboard, error) {
	result := repo.db.Create(liveaboard)

	return liveaboard, result.Error
}

func (repo *agencyRepository) CreateAddress(ctx context.Context, address *model.Address) (*model.Address, error) {
	// var result entity.Address

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.address
	// 		(address_line_1, address_line_2, city, postcode, region, country)
	// 	VALUES
	// 		($1, $2, $3, $4, $5, $6)
	// 	RETURNING id, address_line_1, address_line_2, city, postcode, region, country
	// `, address.AddressLine_1, address.AddressLine_2, address.City, address.Postcode, address.Region, address.Country)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// Get retrieves the agency record by its id.
func (repo *agencyRepository) Get(ctx context.Context, id uint64) (*model.Agency, error) {
	// var result entity.Agency

	// err := repo.db.GetContext(ctx, &result, `
	// 	SELECT
	// 		id, name, phone, account_id, address_id, documents, created_on, updated_on
	// 	FROM
	// 		public.agency
	// 	WHERE
	// 		id = $1
	// `, id)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// List returns list of agencies.
func (repo *agencyRepository) List(ctx context.Context, limit, offset uint64) ([]*model.Agency, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		agency.id, agency.name, agency.phone, agency.documents, agency.created_on, agency.updated_on,
	// 		account.id, account.username, LOWER(account.email) AS "account.email", account."type", account.verified, account.active, account.created_on, account.updated_on,
	// 		address.id, address.address_line_1, address.address_line_2, address.city, address.postcode, address.region, address.country
	// 	FROM
	// 		public.agency
	// 	JOIN
	// 		public.account
	// 	ON
	// 		account.id = agency.account_id
	// 	JOIN
	// 		public.address
	// 	ON
	// 		address.id = agency.address_id
	// 	LIMIT
	// 		$1
	// 	OFFSET
	// 		$2
	// `, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]pb.Agency, 0, limit)

	// for rows.Next() {
	// 	agency := pb.Agency{}
	// 	var documents pq.StringArray

	// 	err = rows.Scan(&agency.Id, &agency.Name, &agency.Phone, &documents, &agency.CreatedOn, &agency.UpdatedOn,
	// 		&agency.Account.Id, &agency.Account.Username, &agency.Account.Email, &agency.Account.Type, &agency.Account.Verified,
	// 		&agency.Account.Active, &agency.Account.CreatedOn, &agency.Account.UpdatedOn,
	// 		&agency.Address.Id, &agency.Address.AddressLine_1, &agency.Address.AddressLine_2, &agency.Address.City, &agency.Address.Postcode,
	// 		&agency.Address.Region, &agency.Address.Country,
	// 	)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(documents) > 0 {
	// 		agency.Documents = make([]pb.File, 0, len(documents))

	// 		for _, document := range documents {
	// 			file := pb.File{
	// 				Link: document,
	// 			}
	// 			agency.Documents = append(agency.Documents, file)
	// 		}
	// 	}

	// 	results = append(results, agency)
	// }

	// return results, nil
	return nil, errors.New("Unimplemented")
}
