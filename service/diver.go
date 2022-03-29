package service

import (
	"context"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

type DiverService interface {
	ListBookedTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error)
}

type diverService struct {
	repo  *repo.Repo
	media media.Store
}

func NewDiverService(repo *repo.Repo, media media.Store) *diverService {
	return &diverService{
		repo:  repo,
		media: media,
	}
}

func (service *diverService) ListBookedTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error) {
	diver, err := getDiverInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	trips, err := service.repo.Trip.ListBookedTripsByDiver(ctx, uint64(diver.ID), limit, offset)

	if err != nil {
		return nil, err
	}

	for _, trip := range trips {
		for idx, id := range trip.TripTemplate.Images {
			trip.TripTemplate.Images[idx] = service.media.Get(id, false)
		}
	}

	return trips, nil
}
