package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

type AmenityService interface {
	ListAmenities(ctx context.Context, limit, offset uint64) ([]*model.Amenity, error)
}

// amenityService implements AmenityService interface above.
type amenityService struct {
	repo *repo.Repo
}

func NewAmenityService(repo *repo.Repo) *amenityService {
	return &amenityService{
		repo: repo,
	}
}

func (service *amenityService) ListAmenities(ctx context.Context, limit, offset uint64) ([]*model.Amenity, error) {
	amenities, err := service.repo.Amenity.ListAmenities(ctx, limit, offset)

	if err != nil {
		return nil, err
	}

	return amenities, nil
}
