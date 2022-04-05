package model

import (
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

var (
	ErrPaymentMade         = status.Error(codes.AlreadyExists, "payment already made")
	ErrReservationNotFound = status.Error(codes.NotFound, "reservation for the payment is not found")
)

// check: only one payment can be made for one reservation and the diver is paying for his/her reservation
func (p *Payment) BeforeCreate(tx *gorm.DB) error {
	// check if the reservation of the payment exists
	result := tx.Where("id = ? AND diver_id = ?", p.ReservationID, p.DiverID).First(&Reservation{})

	if errors.Is(result.Error, gorm.ErrRecordNotFound) {
		return ErrReservationNotFound
	}

	// check if payment is already created once
	result = tx.Where("reservation_id = ?", p.ReservationID).First(&Payment{})

	if !errors.Is(result.Error, gorm.ErrRecordNotFound) {
		return ErrPaymentMade
	}

	return nil
}
