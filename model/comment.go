package model

import (
	"time"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

type tripResult struct {
	endDate time.Time
}

func (c *LiveaboardComment) BeforeCreate(tx *gorm.DB) error {
	var trip tripResult

	tx.Model(&LiveaboardComment{})
	tx.Select("trips.end_date")
	tx.Joins("JOIN reservations ON reservations.id = liveaboard_comments.id AND reservations.id = ?", c.ReservationID)
	tx.Joins("JOIN trips ON trips.id = reservations.trip_id")
	tx.Scan(&trip)

	if time.Now().Before(trip.endDate) {
		return status.Errorf(codes.Canceled, "Comments must be posted after the trip has ended.")
	}

	return nil
}

func (c *HotelComment) BeforeCreate(tx *gorm.DB) error {
	var trip tripResult

	tx.Model(&HotelComment{})
	tx.Select("trips.end_date")
	tx.Joins("JOIN reservations ON reservations.id = liveaboard_comments.id AND reservations.id = ?", c.ReservationID)
	tx.Joins("JOIN trips ON trips.id = reservations.trip_id")
	tx.Scan(&trip)

	if time.Now().Before(trip.endDate) {
		return status.Errorf(codes.Canceled, "Comments must be posted after the trip has ended.")
	}

	return nil
}
