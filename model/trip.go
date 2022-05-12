package model

import (
	"errors"
	"time"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

var (
	ErrBoatInUse       = status.Error(codes.Unavailable, "boat is being used by another trip")
	ErrHotelInUse      = status.Error(codes.Unavailable, "hotel is being used by another trip")
	ErrLiveaboardInUse = status.Error(codes.Unavailable, "liveabord is being used by another trip")
)

func isBetween(start, end, t time.Time) bool {
	return t.After(start) && t.Before(end)
}

func (t *Trip) BeforeSave(tx *gorm.DB) error {
	var trips []*Trip

	result := tx.Preload("TripTemplate.Hotel")
	result.Joins("JOIN trip_templates ON trip_templates.id = trips.trip_template_id")
	result.Preload("TripTemplate.Boat")
	result.Preload("TripTemplate.Liveaboard")
	result.Where("start_date BETWEEN ? AND ? OR end_date BETWEEN ? AND ?", t.StartDate, t.EndDate, t.StartDate, t.EndDate)

	if t.ID != 0 {
		result.Where("trips.id <> ?", t.ID)
	}

	switch t.TripTemplate.Type {
	case ONSHORE:
		result.Where("trip_templates.boat_id = ?", t.TripTemplate.BoatID)
		result.Find(&trips)

		if result.Error != nil && !errors.Is(result.Error, gorm.ErrRecordNotFound) {
			return result.Error
		}

		// trips that use t.TripTemplate.BoatID during t.StartDate and t.EndDate exists
		if len(trips) != 0 {
			return ErrBoatInUse
		}

		// this variable is used for trips that is using the hotel t.TripTemplate.Hotel
		result2 := tx.Preload("TripTemplate.Hotel")
		result2.Joins("JOIN trip_templates ON trip_templates.id = trips.trip_template_id")
		result2.Preload("TripTemplate.Boat")
		result2.Preload("TripTemplate.Liveaboard")
		result2.Where("start_date BETWEEN ? AND ? OR end_date BETWEEN ? AND ?", t.StartDate, t.EndDate, t.StartDate, t.EndDate)
		result2.Where("trip_templates.hotel_id = ?", t.TripTemplate.HotelID)
		result2.Find(&trips)

		if result.Error != nil && !errors.Is(result.Error, gorm.ErrRecordNotFound) {
			return result.Error
		}

		// trips that use t.TripTemplate.HotelID during t.StartDate and t.EndDate exists
		if len(trips) != 0 {
			return ErrHotelInUse
		}

	case OFFSHORE:
		result.Where("trip_templates.liveaboard_id = ?", t.TripTemplate.LiveaboardID)
		result.Find(&trips)

		if result.Error != nil && !errors.Is(result.Error, gorm.ErrRecordNotFound) {
			return result.Error
		}

		// trips that use t.TripTemplate.HotelID during t.StartDate and t.EndDate exists
		if len(trips) != 0 {
			return ErrHotelInUse
		}
	}

	return nil
}
