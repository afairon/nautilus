package model

import (
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

func (r *ReservationRoomType) BeforeSave(tx *gorm.DB) error {
	var roomType RoomType
	result := tx.First(&roomType, r.RoomTypeID)

	if result.Error != nil {
		return result.Error
	}

	if r.DiverNo > uint(roomType.MaxGuest)*r.Quantity {
		return status.Errorf(codes.PermissionDenied, "The number of divers exceeds the maximum number of max guests.")
	}

	// get the current amount of divers booked this room type in this current trip
	// that the diver is trying to make reservation.
	var roomTypeReservations []*ReservationRoomType
	tx.Where("trip_id = ? AND room_type_id = ?", r.TripID, r.RoomTypeID).Find(&roomTypeReservations)

	reservedQuantity := 0

	for _, rr := range roomTypeReservations {
		reservedQuantity += int(rr.Quantity)
	}

	if reservedQuantity+int(r.Quantity) > int(roomType.Quantity) {
		roomLeft := roomType.Quantity - uint32(reservedQuantity)
		return status.Errorf(codes.PermissionDenied, "%d rooms left, but %d were given.", roomLeft, r.Quantity)
	}

	return nil
}
