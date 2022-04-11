package model

import (
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
	result.Preload("TripTemplate.Boat")
	result.Preload("TripTemplate.Liveaboard")
	result.Where("start_date BETWEEN ? AND ? OR end_date BETWEEN ? AND ?", t.StartDate, t.EndDate, t.StartDate, t.EndDate)
	// this variable is used for trips that is using the hotel t.TripTemplate.Hotel
	result2 := *result
	switch t.TripTemplate.Type {
	case ONSHORE:
		result.Where("trip_templates.boat_id = ? AND start_date >= ?", t.TripTemplate.BoatID, t.StartDate)
		result.Find(&trips)

		for _, trip := range trips {
			if isBetween(*trip.StartDate, *trip.EndDate, *t.StartDate) || isBetween(*trip.StartDate, *trip.EndDate, *t.EndDate) {
				return ErrBoatInUse
			}
		}

		result2.Where("trip_templates.hotel_id = ? AND start_date >= ?", t.TripTemplate.HotelID, t.StartDate)
		result2.Find(&trips)

		for _, trip := range trips {
			if isBetween(*trip.StartDate, *trip.EndDate, *t.StartDate) || isBetween(*trip.StartDate, *trip.EndDate, *t.EndDate) {
				return ErrHotelInUse
			}
		}
	case OFFSHORE:
		result.Where("trip_templates.liveaboard_id = ? AND start_date >= ?", t.TripTemplate.LiveaboardID, t.StartDate)

		for _, trip := range trips {
			if isBetween(*trip.StartDate, *trip.EndDate, *t.StartDate) || isBetween(*trip.StartDate, *trip.EndDate, *t.EndDate) {
				return ErrLiveaboardInUse
			}
		}
	}

	return nil
}
