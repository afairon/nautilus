package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

// ReservationRepository defines interface for interaction
// with the reservation repository.
type ReservationRepository interface {
	CreateReservation(ctx context.Context, reservation *entity.Reservation) (*entity.Reservation, error)
	BookRoom(ctx context.Context, room *entity.BookedRoom) (*entity.BookedRoom, error)
}

// reservationRepository implements ReservationRepository interface.
type reservationRepository struct {
	db DBTX
}

// NewReservationRepository creates a new ReservationRepository.
func NewReservationRepository(db DBTX) *reservationRepository {
	return &reservationRepository{
		db: db,
	}
}

// CreateReservation creates a reservation record and returns the newly created record.
func (repo *reservationRepository) CreateReservation(ctx context.Context, reservation *entity.Reservation) (*entity.Reservation, error) {
	var result entity.Reservation

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.reservation
			(trip_id, diver_id, price)
		VALUES
			($1, $2, $3)
		RETURNING id, trip_id, diver_id, price, created_on, updated_on
	`, reservation.TripId, reservation.DiverId, reservation.Price)

	return &result, err
}

// BookRoom creates a booked room record and returns the newly created record.
func (repo *reservationRepository) BookRoom(ctx context.Context, room *entity.BookedRoom) (*entity.BookedRoom, error) {
	var result entity.BookedRoom

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.booked_room
			(room_type, reservation_id, no_adults, no_kids, quantity)
		VALUES
			($1, $2, $3, $4, $5)
		RETURNING id, room_type, reservation_id, no_adults, no_kids, quantity
	`, room.RoomTypeId, room.ReservationId, room.NoAdults, room.NoKids, room.Quantity)

	return &result, err
}