package model

import (
	"time"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

func (r *Reservation) BeforeSave(tx *gorm.DB) error {
	// check if the reservation time is before the last reservation date.
	var trip Trip

	if result := tx.First(&trip, r.TripID); result.Error != nil {
		return result.Error
	}

	if time.Now().After(*trip.LastReservationDate) {
		return status.Errorf(codes.PermissionDenied, "Cannot make reservation. Exceed last reservation date.")
	}

	return nil
}
