package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// LiveaboardRoomTypeTripPriceRepository defines interface for interaction
// with the liveaboardRoomTypeTripPriceRepository repository.
type LiveaboardRoomTypeTripPriceRepository interface {
	Create(ctx context.Context, roomTypePrice *model.LiveaboardRoomTypeTripPrice) (*model.LiveaboardRoomTypeTripPrice, error)
}

// addressRepository implements LiveaboardRoomTypeTripPriceRepository interface.
type liveaboardRoomTypeTripPriceRepository struct {
	db *gorm.DB
}

// NewLiveaboardRoomTypeTripPriceRepository creates a new LiveaboardRoomTypeTripPriceRepository.
func NewLiveaboardRoomTypeTripPriceRepository(db *gorm.DB) *liveaboardRoomTypeTripPriceRepository {
	return &liveaboardRoomTypeTripPriceRepository{
		db: db,
	}
}

func (repo *liveaboardRoomTypeTripPriceRepository) Create(ctx context.Context, roomTypePrice *model.LiveaboardRoomTypeTripPrice) (*model.LiveaboardRoomTypeTripPrice, error) {
	if result := repo.db.Create(roomTypePrice); result.Error != nil {
		return nil, result.Error
	}

	return roomTypePrice, nil
}
