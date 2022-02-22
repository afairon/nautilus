package model

import (
	"time"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

// BeforeSave checks if the diver has made the reservation and the trip has ended.
func (t *TripComment) BeforeSave(tx *gorm.DB) error {
	if t.Stars > 5 {
		t.Stars = 5
	}

	var trip Trip

	result := tx.Joins("JOIN reservations ON reservations.trip_id = trips.id")
	result.Joins("JOIN divers ON divers.id = reservations.diver_id")
	result.Where("reservations.id = ?", t.ReservationID)
	result.Where("divers.id = ?", t.DiverID)
	result.Take(&trip)

	if result.Error != nil {
		return result.Error
	}

	if time.Now().Before(*trip.EndDate) {
		return status.Errorf(codes.PermissionDenied, "Comments must be posted after the trip has ended.")
	}

	return nil
}

// BeforeSave checks if the diver has made the reservation and the trip has ended.
func (l *LiveaboardComment) BeforeSave(tx *gorm.DB) error {
	if l.Stars > 5 {
		l.Stars = 5
	}

	var trip Trip

	result := tx.Joins("JOIN reservations ON reservations.trip_id = trips.id")
	result.Joins("JOIN divers ON divers.id = reservations.diver_id")
	result.Where("reservations.id = ?", l.ReservationID)
	result.Where("divers.id = ?", l.DiverID)
	result.Take(&trip)

	if result.Error != nil {
		return result.Error
	}

	if time.Now().Before(*trip.EndDate) {
		return status.Errorf(codes.PermissionDenied, "Comments must be posted after the trip has ended.")
	}

	return nil
}

// BeforeSave checks if the diver has made the reservation and the trip has ended.
func (h *HotelComment) BeforeSave(tx *gorm.DB) error {
	if h.Stars > 5 {
		h.Stars = 5
	}

	var trip Trip

	result := tx.Joins("JOIN reservations ON reservations.trip_id = trips.id")
	result.Joins("JOIN divers ON divers.id = reservations.diver_id")
	result.Where("reservations.id = ?", h.ReservationID)
	result.Where("divers.id = ?", h.DiverID)
	result.Take(&trip)

	if result.Error != nil {
		return result.Error
	}

	if time.Now().Before(*trip.EndDate) {
		return status.Errorf(codes.PermissionDenied, "Comments must be posted after the trip has ended.")
	}

	return nil
}
