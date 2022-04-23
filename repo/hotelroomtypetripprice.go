package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// HotelRoomTypeTripPriceRepository defines interface for interaction
// with the hotelRoomTypeTripPriceRepository repository.
type HotelRoomTypeTripPriceRepository interface {
	Create(ctx context.Context, roomTypePrice *model.HotelRoomTypeTripPrice) (*model.HotelRoomTypeTripPrice, error)
}

// addressRepository implements HotelRoomTypeTripPriceRepository interface.
type hotelRoomTypeTripPriceRepository struct {
	db *gorm.DB
}

// NewHotelRoomTypeTripPriceRepository creates a new HotelRoomTypeTripPriceRepository.
func NewHotelRoomTypeTripPriceRepository(db *gorm.DB) *hotelRoomTypeTripPriceRepository {
	return &hotelRoomTypeTripPriceRepository{
		db: db,
	}
}

func (repo *hotelRoomTypeTripPriceRepository) Create(ctx context.Context, roomTypePrice *model.HotelRoomTypeTripPrice) (*model.HotelRoomTypeTripPrice, error) {
	if result := repo.db.Create(roomTypePrice); result.Error != nil {
		return nil, result.Error
	}

	return roomTypePrice, nil
}
