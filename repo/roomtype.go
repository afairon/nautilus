package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// RoomTypeRepository defines interface for interaction
// with the reservation repository.
type RoomTypeRepository interface {
	ListRoomTypesByHotelID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error)
	ListRoomTypesByLiveaboardID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error)
}

// roomTypeRepository implements RoomTypeRepository interface.
type roomTypeRepository struct {
	db *gorm.DB
}

func NewRoomTypeRepository(db *gorm.DB) *roomTypeRepository {
	return &roomTypeRepository{
		db: db,
	}
}

func (repo *roomTypeRepository) ListRoomTypesByHotelID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error) {
	var roomTypes []*model.RoomType

	if result := repo.db.Limit(int(limit)).Offset(int(offset)).Where("hotel_id = ?", id).Find(&roomTypes); result.Error != nil {
		return nil, result.Error
	}

	return roomTypes, nil
}

func (repo *roomTypeRepository) ListRoomTypesByLiveaboardID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error) {
	var roomTypes []*model.RoomType

	if result := repo.db.Limit(int(limit)).Offset(int(offset)).Where("liveaboard_id = ?", id).Find(&roomTypes); result.Error != nil {
		return nil, result.Error
	}

	return roomTypes, nil
}
