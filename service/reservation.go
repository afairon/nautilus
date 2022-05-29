package service

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

// ReservationService defines operations on reservation.
type ReservationService interface {
	CreateReservation(ctx context.Context, reservation *pb.Reservation) (*pb.Reservation, error)
}

// reservationService implements ReservationService.
type reservationService struct {
	repo *repo.Repo
}

// NewReservationService creates new reservationService.
func NewReservationService(repo *repo.Repo) *reservationService {
	return &reservationService{
		repo: repo,
	}
}

func getDiverInformationFromContext(ctx context.Context) (*model.Diver, error) {
	// Obtaining value at session.User
	user := ctx.Value(session.User)

	if user == nil {
		// Handle nil condition
		return nil, status.Error(codes.Unauthenticated, "user not found")
	}
	// Type assertion
	v, ok := user.(*model.Diver) // Casting to Diver
	if !ok {
		// Handle error
		return nil, status.Error(codes.Internal, "casting user to Diver failed")
	}

	return v, nil
}

// CreateReservation creates a trip reservation.
func (service *reservationService) CreateReservation(ctx context.Context, reservation *pb.Reservation) (*pb.Reservation, error) {
	newReservation := pb.Reservation{}

	if reservation.GetRooms() == nil {
		return nil, status.Error(codes.InvalidArgument, "reservation: missing rooms")
	}

	// TODO: verify room capacity

	// Copy information from reservation to newReservation
	newReservation = *reservation

	reservationRecord := model.Reservation{
		TripID:      uint(reservation.GetTripId()),
		DiverID:     uint(reservation.GetDiverId()),
		Price:       reservation.GetPrice(),
		TotalDivers: uint(reservation.TotalDivers),
	}

	err := service.repo.Transaction(ctx, func(query *repo.Queries) error {
		diverReservation, err := query.Reservation.GetReservationByDiverAndTrip(ctx, reservation.GetDiverId(), reservation.GetTripId())

		if err != nil && !errors.Is(err, gorm.ErrRecordNotFound) {
			return err
		}

		if diverReservation != nil {
			return status.Error(codes.AlreadyExists, "already made reservation for this trip")
		}

		newReservationRecord, err := query.Reservation.CreateReservation(ctx, &reservationRecord)

		if err != nil {
			return err
		}

		newReservation.Id = uint64(newReservationRecord.ID)
		newReservation.CreatedAt = &newReservationRecord.CreatedAt
		newReservation.UpdatedAt = &newReservationRecord.UpdatedAt

		length := len(reservation.GetRooms())
		// Allocate memory space for rooms
		newReservation.Rooms = make([]*pb.Reservation_Room, length)

		for i := 0; i < length; i++ {
			newReservation.Rooms[i] = &pb.Reservation_Room{}
		}

		for i, room := range reservation.GetRooms() {
			*newReservation.Rooms[i] = *room

			newRoomRecord := model.ReservationRoomType{
				ReservationID: uint(newReservation.GetId()),
				RoomTypeID:    uint(room.GetRoomTypeId()),
				TripID:        uint(reservation.GetTripId()),
				DiverNo:       uint(room.GetNoDivers()),
				Quantity:      uint(room.GetQuantity()),
			}

			_, err := query.Reservation.BookRoom(ctx, &newRoomRecord)

			if err != nil {
				return err
			}
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return &newReservation, nil
}
