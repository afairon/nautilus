package service

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
)

// CommentService defines operations on comment.
type CommentService interface {
	CreateTripComment(ctx context.Context, comment *pb.TripComment) error
	CreateHotelComment(ctx context.Context, comment *pb.HotelComment) error
	CreateLiveaboardComment(ctx context.Context, comment *pb.LiveaboardComment) error
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
func (service *commentService) CreateTripComment(ctx context.Context, comment *pb.TripComment) error {
	star := comment.GetStar()
	if star > 5 {
		star = 5
	}

	newComment := entity.TripComment{
		Comment:       comment.GetComment(),
		Star:          star,
		ReservationId: comment.GetReservationId(),
	}

	_, err := service.repo.Comment.CreateTripComment(ctx, &newComment)

	return err
}

// CreateTripComment creates a hotel comment.
func (service *commentService) CreateHotelComment(ctx context.Context, comment *pb.HotelComment) error {
	star := comment.GetStar()
	if star > 5 {
		star = 5
	}

	newComment := entity.HotelComment{
		Comment:       comment.GetComment(),
		Star:          star,
		ReservationId: comment.GetReservationId(),
	}

	_, err := service.repo.Comment.CreateHotelComment(ctx, &newComment)

	return err
}

// CreateTripComment creates a liveaboard comment.
func (service *commentService) CreateLiveaboardComment(ctx context.Context, comment *pb.LiveaboardComment) error {
	star := comment.GetStar()
	if star > 5 {
		star = 5
	}

	newComment := entity.LiveaboardComment{
		Comment:       comment.GetComment(),
		Star:          star,
		ReservationId: comment.GetReservationId(),
	}

	_, err := service.repo.Comment.CreateLiveaboardComment(ctx, &newComment)

	return err
}
