package service

import (
	"context"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

// HotelService defines operations on hotel.
type HotelService interface {
	GetHotel(ctx context.Context, id uint64) (*model.Hotel, error)
}

// hotelService implements HotelService interface above.
type hotelService struct {
	repo  *repo.Repo
	media media.Store
}

func NewHotelService(repo *repo.Repo, media media.Store) *hotelService {
	return &hotelService{
		repo:  repo,
		media: media,
	}
}

func (service *hotelService) GetHotel(ctx context.Context, id uint64) (*model.Hotel, error) {
	hotel, err := service.repo.Hotel.GetHotel(ctx, uint(id))

	if err != nil {
		return nil, err
	}

	for idx, id := range hotel.Images {
		hotel.Images[idx] = service.media.Get(id, false)
	}

	return hotel, nil
}
