package repo

import (
	"context"

	"gorm.io/gorm"
)

// Queries manages the repository.
type Queries struct {
	Account      AccountRepository
	Address      AddressRepository
	Agency       AgencyRepository
	Boat         BoatRepository
	Comment      CommentRepository
	DiveMaster   DiveMasterRepository
	Diver        DiverRepository
	Hotel        HotelRepository
	Liveaboard   LiveaboardRepository
	Reservation  ReservationRepository
	Staff        StaffRepository
	TripTemplate TripTemplateRepository
	Trip         TripRepository
	RoomType     RoomTypeRepository
	Amenity      AmenityRepository
	Payment      PaymentRepository
}

// newQueries creates a new repository manager.
func newQueries(db *gorm.DB) *Queries {
	return &Queries{
		Account:      NewAccountRepository(db),
		Address:      NewAddressRepository(db),
		Agency:       NewAgencyRepository(db),
		Boat:         NewBoatRepository(db),
		Comment:      NewCommentRepository(db),
		DiveMaster:   NewDiveMasterRepository(db),
		Diver:        NewDiverRepository(db),
		Hotel:        NewHotelRepository(db),
		Liveaboard:   NewLiveaboardRepository(db),
		Reservation:  NewReservationRepository(db),
		Staff:        NewStaffRepository(db),
		TripTemplate: NewTripTemplateRepository(db),
		Trip:         NewTripRepository(db),
		RoomType:     NewRoomTypeRepository(db),
		Amenity:      NewAmenityRepository(db),
		Payment:      NewPaymentRepository(db),
	}
}

// Repo is a repository for managing entities.
type Repo struct {
	db *gorm.DB
	*Queries
}

// NewRepo creates a new database repository.
func NewRepo(db *gorm.DB) *Repo {
	return &Repo{
		db:      db,
		Queries: newQueries(db),
	}
}

func (repo *Repo) Transaction(ctx context.Context, fn func(repo *Queries) error) error {
	return repo.db.Transaction(func(tx *gorm.DB) error {
		dbtx := newQueries(tx)
		err := fn(dbtx)

		if err != nil {
			return err
		}

		return nil
	})
}
