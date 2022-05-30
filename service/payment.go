package service

import (
	"bytes"
	"context"
	"fmt"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/lib/pq"
)

// PaymentService defines operations on payment.
type PaymentService interface {
	MakePayment(ctx context.Context, payment *model.Payment) error
	GetPaymentByReservation(ctx context.Context, reservationId uint64) (*model.Payment, error)
	UpdatePaymentSlip(ctx context.Context, payment *model.Payment) error
	UpdatePaymentStatus(ctx context.Context, payment *model.Payment) error
}

// paymentService implements AgencyService interface above.
type paymentService struct {
	repo  *repo.Repo
	media media.Store
}

func NewPaymentService(repo *repo.Repo, media media.Store) *paymentService {
	return &paymentService{
		repo:  repo,
		media: media,
	}
}

func (service *paymentService) MakePayment(ctx context.Context, payment *model.Payment) error {
	diver, err := getDiverInformationFromContext(ctx)

	if err != nil {
		return err
	}

	payment.DiverID = diver.ID
	payment.Diver = *diver

	if payment.File != nil {
		payment.PaymentSlip = make(pq.StringArray, 0, 1)
		reader := bytes.NewReader(payment.File.Buffer)
		objectID, err := service.media.Put(payment.File.Filename, media.PRIVATE, reader)

		if err != nil {
			return err
		}

		payment.PaymentSlip = append(payment.PaymentSlip, objectID)
	}

	_, err = service.repo.Payment.Create(ctx, payment)

	return err
}

func (service *paymentService) UpdatePaymentSlip(ctx context.Context, payment *model.Payment) error {
	diver, err := getDiverInformationFromContext(ctx)

	if err != nil {
		return err
	}

	payment.DiverID = diver.ID
	payment.Diver = *diver

	if payment.File != nil {
		payment.PaymentSlip = make(pq.StringArray, 0, 1)
		reader := bytes.NewReader(payment.File.Buffer)
		objectID, err := service.media.Put(payment.File.Filename, media.PRIVATE, reader)

		if err != nil {
			return err
		}

		fmt.Println(objectID)
		payment.PaymentSlip = append(payment.PaymentSlip, objectID)
	}

	_, err = service.repo.Payment.UpdatePaymentSlip(ctx, payment)

	return err
}

func (service *paymentService) UpdatePaymentStatus(ctx context.Context, payment *model.Payment) error {
	if payment.File != nil {
		payment.PaymentSlip = make(pq.StringArray, 0, 1)
		reader := bytes.NewReader(payment.File.Buffer)
		objectID, err := service.media.Put(payment.File.Filename, media.PRIVATE, reader)

		if err != nil {
			return err
		}

		payment.PaymentSlip = append(payment.PaymentSlip, objectID)
	}

	_, err := service.repo.Payment.UpdatePaymentStatus(ctx, payment)

	return err
}

func (service *paymentService) GetPaymentByReservation(ctx context.Context, reservationId uint64) (*model.Payment, error) {
	payment, err := service.repo.Payment.GetPaymentByDiverAndReservation(ctx, reservationId)

	if err != nil {
		return nil, err
	}

	if len(payment.PaymentSlip) > 0 {
		file := model.File{
			Filename: payment.PaymentSlip[0],
			URL:      service.media.Get(payment.PaymentSlip[0], true),
		}
		payment.File = &file
	}

	return payment, nil
}
