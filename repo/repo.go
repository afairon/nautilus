package repo

import (
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
