package model

import (
	"time"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

func (l *LiveaboardComment) BeforeSave(tx *gorm.DB) error {
	var reservation Reservation

	result := tx.Preload("Trip").Joins("JOIN trips on reservations.trip_id = trips.id AND reservations.id = ?", l.ReservationID).First(&reservation)
	err := result.Error

	if err != nil {
		return err
	}

	if time.Now().Before(*reservation.Trip.EndDate) {
		return status.Errorf(codes.PermissionDenied, "Comments must be posted after the trip has ended.")
	}

	return nil
}

func (h *HotelComment) BeforeSave(tx *gorm.DB) error {
	var reservation Reservation

	result := tx.Preload("Trip").Joins("JOIN trips on reservations.trip_id = trips.id AND reservations.id = ?", h.ReservationID).First(&reservation)
	err := result.Error

	if err != nil {
		return err
	}

	if time.Now().Before(*reservation.Trip.EndDate) {
		return status.Errorf(codes.PermissionDenied, "Comments must be posted after the trip has ended.")
	}

	return nil
}
