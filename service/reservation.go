package service

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
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

// CreateReservation creates a trip reservation.
func (service *reservationService) CreateReservation(ctx context.Context, reservation *pb.Reservation) (*pb.Reservation, error) {
	newReservation := pb.Reservation{}

	if reservation.GetRooms() == nil {
		return nil, status.Error(codes.InvalidArgument, "reservation: missing rooms")
	}

	// TODO: verify room capacity

	// Copy information from reservation to newReservation
	newReservation = *reservation

	reservationRecord := entity.Reservation{
		TripId:  reservation.GetTripId(),
		DiverId: reservation.GetDiverId(),
		Price:   reservation.GetPrice(),
	}

	// Execute transaction
	err := service.repo.ExecTx(ctx, func(query *repo.Queries) error {
		newReservationRecord, err := query.Reservation.CreateReservation(ctx, &reservationRecord)
		if err != nil {
			return err
		}

		newReservation.Id = newReservationRecord.Id
		newReservation.CreatedOn = newReservationRecord.CreatedOn
		newReservation.UpdatedOn = newReservationRecord.UpdatedOn

		length := len(reservation.GetRooms())
		// Allocate memory space for rooms
		newReservation.Rooms = make([]*pb.Reservation_Room, length)
		for i := 0; i < length; i++ {
			newReservation.Rooms[i] = &pb.Reservation_Room{}
		}

		for i, room := range reservation.GetRooms() {
			roomRecord := entity.BookedRoom{
				RoomTypeId:    room.GetRoomTypeId(),
				ReservationId: newReservationRecord.Id,
				NoAdults:      room.GetNoAdults(),
				NoKids:        room.GetNoKids(),
				Quantity:      room.GetQuantity(),
			}
			bookedRoom, err := query.Reservation.BookRoom(ctx, &roomRecord)
			if err != nil {
				return err
			}

			// Copy room information from reservation to newly created reservation
			(*newReservation.Rooms[i]) = *room
			newReservation.Rooms[i].Id = bookedRoom.Id
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return &newReservation, nil
}
