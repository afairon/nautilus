package model

import (
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

func (r *ReservationRoomType) BeforeCreate(tx *gorm.DB) error {
	var roomType RoomType
	result := tx.First(&roomType, r.RoomTypeID)

	if result.Error != nil {
		return result.Error
	}

	if r.DiverNo > uint(roomType.MaxGuest) {
		return status.Errorf(codes.InvalidArgument, "The number of divers exceeds the maximum number of max guests.")
	}

	return nil
}
