package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// AmenityRepository defines interface for interaction
// with the amenity repository.
type AmenityRepository interface {
	ListAmenities(ctx context.Context, limit, offset uint64) ([]*model.Amenity, error)
}

// amenityRepository implements TripRepository interface.
type amenityRepository struct {
	db *gorm.DB
}

// NewAmenityRepository creates a new TripRepository.
func NewAmenityRepository(db *gorm.DB) *amenityRepository {
	return &amenityRepository{
		db: db,
	}
}

func (repo *amenityRepository) ListAmenities(ctx context.Context, limit, offset uint64) ([]*model.Amenity, error) {
	var amenities []*model.Amenity

	if result := repo.db.Limit(int(limit)).Offset(int(offset)).Find(&amenities); result.Error != nil {
		return nil, result.Error
	}

	return amenities, nil
}
