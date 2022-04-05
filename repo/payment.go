package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// PaymentRepository defines interface for interaction
// with the payment repository.
type PaymentRepository interface {
	Create(ctx context.Context, payment *model.Payment) (*model.Payment, error)
	GetPaymentByDiverAndReservation(ctx context.Context, reservationId uint64) (*model.Payment, error)
	UpdatePaymentSlip(ctx context.Context, payment *model.Payment) (*model.Payment, error)
	UpdatePaymentStatus(ctx context.Context, payment *model.Payment) (*model.Payment, error)
}

// paymentRepository implements AgencyRepository interface.
type paymentRepository struct {
	db *gorm.DB
}

// NewPaymentRepository creates a new PaymentRepository.
func NewPaymentRepository(db *gorm.DB) *paymentRepository {
	return &paymentRepository{
		db: db,
	}
}

func (repo *paymentRepository) Create(ctx context.Context, payment *model.Payment) (*model.Payment, error) {
	if result := repo.db.Omit("Diver").Create(payment); result.Error != nil {
		return nil, result.Error
	}

	return payment, nil
}

func (repo *paymentRepository) GetPaymentByDiverAndReservation(ctx context.Context, reservationId uint64) (*model.Payment, error) {
	var payment model.Payment

	if result := repo.db.Preload("Diver").Where("reservation_id = ?", reservationId).First(&payment); result.Error != nil {
		return nil, result.Error
	}

	return &payment, nil
}

func (repo *paymentRepository) UpdatePaymentSlip(ctx context.Context, payment *model.Payment) (*model.Payment, error) {
	if result := repo.db.Model(payment).Select("PaymentSlip").Updates(payment); result.Error != nil {
		return nil, result.Error
	}

	return payment, nil
}

func (repo *paymentRepository) UpdatePaymentStatus(ctx context.Context, payment *model.Payment) (*model.Payment, error) {
	if result := repo.db.Model(payment).Select("Verified").Updates(payment); result.Error != nil {
		return nil, result.Error
	}

	return payment, nil
}
