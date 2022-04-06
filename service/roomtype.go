package service

import (
	"context"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

type RoomTypeService interface {
	// Should these two methods be refactored to one method?
	ListRoomTypesByHotelAndTrip(ctx context.Context, hotelId, tripId, limit, offset uint64) ([]*model.RoomType, error)
	ListRoomTypesByLiveaboardAndTrip(ctx context.Context, liveaboardId, tripId, limit, offset uint64) ([]*model.RoomType, error)
}

type roomTypeService struct {
	repo  *repo.Repo
	media media.Store
}

func NewRoomTypeService(repo *repo.Repo, media media.Store) *roomTypeService {
	return &roomTypeService{
		repo:  repo,
		media: media,
	}
}

func (service *roomTypeService) ListRoomTypesByHotelAndTrip(ctx context.Context, hotelId, tripId, limit, offset uint64) ([]*model.RoomType, error) {
	if limit > 20 || limit == 0 {
		limit = 20
	}

	var roomTypes []*model.RoomType

	err := service.repo.Transaction(ctx, func(query *repo.Queries) error {
		rts, err := query.RoomType.ListRoomTypesByHotelID(ctx, hotelId, limit, offset)
		roomTypes = make([]*model.RoomType, 0, len(rts))

		if err != nil {
			return err
		}

		// reduce the quantity of each room type from the reservations of each room type
		for _, roomType := range rts {
			// get reservations for each roomType in a specific trip
			reservations, err := query.ReservationRoomType.ListReservationRoomTypesByRoomTypeAndTrip(ctx, uint64(roomType.ID), tripId)

			if err != nil {
				return err
			}

			quantity := uint(0)

			for _, reservation := range reservations {
				quantity += reservation.Quantity
			}

			roomType.Quantity -= uint32(quantity)

			if len(roomType.Images) > 0 {
				roomType.Files = make([]*model.File, 0, len(roomType.Images))

				for _, img := range roomType.Images {
					file := model.File{
						Filename: img,
						URL:      service.media.Get(img, true),
					}

					roomType.Files = append(roomType.Files, &file)
				}
			}

			// append to the variable "roomTypes" outside the transaction function scope.
			roomTypes = append(roomTypes, roomType)
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return roomTypes, nil
}

func (service *roomTypeService) ListRoomTypesByLiveaboardAndTrip(ctx context.Context, liveaboardId, tripId, limit, offset uint64) ([]*model.RoomType, error) {
	if limit > 20 || limit == 0 {
		limit = 20
	}

	var roomTypes []*model.RoomType

	err := service.repo.Transaction(ctx, func(query *repo.Queries) error {
		rts, err := query.RoomType.ListRoomTypesByHotelID(ctx, liveaboardId, limit, offset)
		roomTypes = make([]*model.RoomType, 0, len(rts))

		if err != nil {
			return err
		}

		// reduce the quantity of each room type from the reservations of each room type
		for _, roomType := range rts {
			// get reservations for each roomType in a specific trip
			reservations, err := query.ReservationRoomType.ListReservationRoomTypesByRoomTypeAndTrip(ctx, uint64(roomType.ID), tripId)

			if err != nil {
				return err
			}

			quantity := uint(0)

			for _, reservation := range reservations {
				quantity += reservation.Quantity
			}

			roomType.Quantity -= uint32(quantity)

			if len(roomType.Images) > 0 {
				roomType.Files = make([]*model.File, 0, len(roomType.Images))

				for _, img := range roomType.Images {
					file := model.File{
						Filename: img,
						URL:      service.media.Get(img, true),
					}

					roomType.Files = append(roomType.Files, &file)
				}
			}

			// append to the variable "roomTypes" outside the transaction function scope.
			roomTypes = append(roomTypes, roomType)
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return roomTypes, nil
}
