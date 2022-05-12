package service

import (
	"context"
	"time"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

type TripService interface {
	ListValidTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error)
}

type tripService struct {
	repo  *repo.Repo
	media media.Store
}

func NewTripService(repo *repo.Repo, media media.Store) *tripService {
	return &tripService{
		repo:  repo,
		media: media,
	}
}

func (service *tripService) ListValidTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error) {
	if limit > 20 || limit == 0 {
		limit = 20
	}

	now := time.Now()
	lastReservationDate := &now

	trips, err := service.repo.Trip.ListTrips(ctx, lastReservationDate, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, trip := range trips {
		if len(trip.TripTemplate.Images) > 0 {
			trip.TripTemplate.Files = make([]*model.File, 0, len(trip.TripTemplate.Images))

			for _, doc := range trip.TripTemplate.Images {
				file := model.File{
					Filename: doc,
					URL:      service.media.Get(doc, true),
				}

				trip.TripTemplate.Files = append(trip.TripTemplate.Files, &file)
			}
		}
	}

	return trips, nil
}
