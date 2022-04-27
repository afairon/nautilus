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

	if len(hotel.Images) > 0 {
		hotel.Files = make([]*model.File, 0, len(hotel.Images))

		for _, doc := range hotel.Images {
			file := model.File{
				Filename: doc,
				URL:      service.media.Get(doc, true),
			}
			hotel.Files = append(hotel.Files, &file)
		}
	}

	for _, roomType := range hotel.RoomTypes {
		if len(roomType.Images) > 0 {
			roomType.Files = make([]*model.File, 0, len(roomType.Images))

			for _, doc := range roomType.Images {
				file := model.File{
					Filename: doc,
					URL:      service.media.Get(doc, true),
				}
				roomType.Files = append(roomType.Files, &file)
			}
		}
	}

	return hotel, nil
}
