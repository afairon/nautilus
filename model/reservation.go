package model

import (
	"time"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

// TODO check that the same diver cannot make reservations for the same trip
func (r *Reservation) BeforeSave(tx *gorm.DB) error {
	// check if the reservation time is before the last reservation date.
	var trip Trip

	if result := tx.First(&trip, r.TripID); result.Error != nil {
		return result.Error
	}

	if time.Now().After(*trip.LastReservationDate) {
		return status.Errorf(codes.PermissionDenied, "Cannot make reservation. Exceed last reservation date.")
	}

	if r.TotalDivers+uint(trip.CurrentGuest) > uint(trip.MaxGuest) {
		l := trip.MaxGuest - trip.CurrentGuest
		return status.Errorf(codes.PermissionDenied, "Not enough place, the trip only has %d place left, but %d divers were given.", l, r.TotalDivers)
	}

	trip.CurrentGuest += uint32(r.TotalDivers)
	if result := tx.Model(&trip).Select("CurrentGuest").Updates(trip); result.Error != nil {
		return result.Error
	}

	return nil
}
