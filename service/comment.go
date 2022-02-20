package service

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
)

// CommentService defines operations on comment.
type CommentService interface {
	CreateTripComment(ctx context.Context, comment *pb.TripComment) (*pb.TripComment, error)
	CreateHotelComment(ctx context.Context, comment *pb.HotelComment) (*pb.HotelComment, error)
	CreateLiveaboardComment(ctx context.Context, comment *pb.LiveaboardComment) (*pb.LiveaboardComment, error)
}

// commentService implements CommentService.
type commentService struct {
	repo *repo.Repo
}

// NewCommentService creates new commentService.
func NewCommentService(repo *repo.Repo) *commentService {
	return &commentService{
		repo: repo,
	}
}

// CreateTripComment creates a trip comment.
func (service *commentService) CreateTripComment(ctx context.Context, comment *pb.TripComment) (*pb.TripComment, error) {
	stars := comment.GetStars()
	if stars > 5 {
		stars = 5
	}

	// TODO: verify diver id with and reservation id

	commentRecord := entity.TripComment{
		Comment:       comment.GetComment(),
		Stars:         stars,
		ReservationId: comment.GetReservationId(),
	}

	newCommentRecord, err := service.repo.Comment.CreateTripComment(ctx, &commentRecord)
	if err != nil {
		return nil, err
	}

	newComment := pb.TripComment{
		Id:            newCommentRecord.Id,
		Comment:       newCommentRecord.Comment,
		Stars:         newCommentRecord.Stars,
		ReservationId: newCommentRecord.ReservationId,
		CreatedAt:     newCommentRecord.CreatedOn,
		UpdatedAt:     newCommentRecord.UpdatedOn,
	}

	return &newComment, nil
}

// CreateTripComment creates a hotel comment.
func (service *commentService) CreateHotelComment(ctx context.Context, comment *pb.HotelComment) (*pb.HotelComment, error) {
	stars := comment.GetStars()
	if stars > 5 {
		stars = 5
	}

	// TODO: verify diver id with and reservation id

	commentRecord := model.HotelComment{
		Comment:       comment.GetComment(),
		Stars:         stars,
		ReservationID: uint(comment.GetReservationId()),
	}

	newCommentRecord, err := service.repo.Comment.CreateHotelComment(ctx, &commentRecord)
	if err != nil {
		return nil, err
	}

	newComment := pb.HotelComment{
		Id:            uint64(newCommentRecord.ID),
		Comment:       newCommentRecord.Comment,
		Stars:         newCommentRecord.Stars,
		ReservationId: uint64(newCommentRecord.ReservationID),
		CreatedAt:     &newCommentRecord.CreatedAt,
		UpdatedAt:     &newCommentRecord.UpdatedAt,
	}

	return &newComment, nil
}

// CreateTripComment creates a liveaboard comment.
func (service *commentService) CreateLiveaboardComment(ctx context.Context, comment *pb.LiveaboardComment) (*pb.LiveaboardComment, error) {
	stars := comment.GetStars()
	if stars > 5 {
		stars = 5
	}

	// TODO: verify diver id with and reservation id

	commentRecord := model.LiveaboardComment{
		Comment:       comment.GetComment(),
		Stars:         stars,
		ReservationID: uint(comment.GetReservationId()),
	}

	newCommentRecord, err := service.repo.Comment.CreateLiveaboardComment(ctx, &commentRecord)
	if err != nil {
		return nil, err
	}

	newComment := pb.LiveaboardComment{
		Id:            uint64(newCommentRecord.ID),
		Comment:       newCommentRecord.Comment,
		Stars:         newCommentRecord.Stars,
		ReservationId: uint64(newCommentRecord.ReservationID),
		CreatedAt:     &newCommentRecord.CreatedAt,
		UpdatedAt:     &newCommentRecord.UpdatedAt,
	}

	return &newComment, nil
}
