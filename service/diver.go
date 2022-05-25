package service

import (
	"context"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type DiverService interface {
	ListReservationsWithTrips(ctx context.Context, limit, offset uint64) ([]*model.Reservation, error)
	GetAgencyAccountNumberByTrip(ctx context.Context, tripId uint64) (string, error)
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

func (service *diverService) ListReservationsWithTrips(ctx context.Context, limit, offset uint64) ([]*model.Reservation, error) {
	diver, err := getDiverInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	reservations, err := service.repo.Reservation.ListReservationsByDiver(ctx, uint64(diver.ID), limit, offset)

	if err != nil {
		return nil, err
	}

	for _, reservation := range reservations {
		for _, doc := range reservation.Trip.TripTemplate.Images {
			file := model.File{
				Filename: doc,
				URL:      service.media.Get(doc, true),
			}

			reservation.Trip.TripTemplate.Files = append(reservation.Trip.TripTemplate.Files, &file)
		}
	}

	return reservations, nil
}

func (service *diverService) GetAgencyAccountNumberByTrip(ctx context.Context, tripId uint64) (string, error) {
	trip, err := service.repo.Trip.Get(ctx, tripId)

	if err != nil {
		return "", err
	}

	if trip.Agency.AccountNumber == "" {
		return "", status.Error(codes.Internal, "account number is empty")
	}

	return trip.Agency.AccountNumber, nil
}
