package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// ReservationRoomTypeRepository defines interface for interaction
// with the reservationroomtype repository.
type ReservationRoomTypeRepository interface {
	ListReservationRoomTypesByRoomTypeAndTrip(ctx context.Context, roomTypeId, tripId uint64) ([]*model.ReservationRoomType, error)
}

// reservaitonRoomTypeRepository implements AgencyRepository interface.
type reservaitonRoomTypeRepository struct {
	db *gorm.DB
}

// NewReservationRoomTypeRepository creates a new ReservationRoomTypeRepository.
func NewReservationRoomTypeRepository(db *gorm.DB) *reservaitonRoomTypeRepository {
	return &reservaitonRoomTypeRepository{
		db: db,
	}
}

func (repo *reservaitonRoomTypeRepository) ListReservationRoomTypesByRoomTypeAndTrip(ctx context.Context, roomTypeId, tripId uint64) ([]*model.ReservationRoomType, error) {
	var reservations []*model.ReservationRoomType

	if result := repo.db.Where("room_type_id = ? AND trip_id = ?", roomTypeId, tripId).Find(&reservations); result.Error != nil {
		return nil, result.Error
	}

	return reservations, nil
}
