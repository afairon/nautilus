package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// DiveSiteRepository defines interface for interaction
// with the divesite repository.
type DiveSiteRepository interface {
	ListDiveSitesByTrip(ctx context.Context, tripId, limit, offset uint64) ([]*model.DiveSite, error)
}

// diveSiteRepository implements DiveSiteRepository interface.
type diveSiteRepository struct {
	db *gorm.DB
}

// NewDiveSiteRepository creates a new DiveSiteRepository.
func NewDiveSiteRepository(db *gorm.DB) *diveSiteRepository {
	return &diveSiteRepository{
		db: db,
	}
}

func (repo *diveSiteRepository) ListDiveSitesByTrip(ctx context.Context, tripId, limit, offset uint64) ([]*model.DiveSite, error) {
	var diveSites []*model.DiveSite

	if result := repo.db.Where("trip_id = ?", tripId).Limit(int(limit)).Offset(int(offset)).Find(&diveSites); result.Error != nil {
		return nil, result.Error
	}

	return diveSites, nil
}
