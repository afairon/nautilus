package service

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

// CommentService defines operations on comment.
type CommentService interface {
	CreateTripComment(ctx context.Context, comment *model.TripComment) (*model.TripComment, error)
	CreateHotelComment(ctx context.Context, comment *model.HotelComment) (*model.HotelComment, error)
	CreateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) (*model.LiveaboardComment, error)

	DeleteTripComment(ctx context.Context, comment *model.TripComment) error
	DeleteHotelComment(ctx context.Context, comment *model.HotelComment) error
	DeleteLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error
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
func (service *commentService) CreateTripComment(ctx context.Context, comment *model.TripComment) (*model.TripComment, error) {
	diver, err := getDiverInformationFromContext(ctx)
	if err != nil {
		return nil, err
	}

	comment.DiverID = diver.ID

	newComment, err := service.repo.Comment.CreateTripComment(ctx, comment)
	if err != nil {
		return nil, err
	}

	return newComment, nil
}

// CreateTripComment creates a hotel comment.
func (service *commentService) CreateHotelComment(ctx context.Context, comment *model.HotelComment) (*model.HotelComment, error) {
	diver, err := getDiverInformationFromContext(ctx)
	if err != nil {
		return nil, err
	}

	comment.DiverID = diver.ID

	newComment, err := service.repo.Comment.CreateHotelComment(ctx, comment)
	if err != nil {
		return nil, err
	}

	return newComment, nil
}

// CreateTripComment creates a liveaboard comment.
func (service *commentService) CreateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) (*model.LiveaboardComment, error) {
	diver, err := getDiverInformationFromContext(ctx)
	if err != nil {
		return nil, err
	}

	comment.DiverID = diver.ID

	newComment, err := service.repo.Comment.CreateLiveaboardComment(ctx, comment)
	if err != nil {
		return nil, err
	}

	return newComment, nil
}

// DeleteTripComment deletes trip comment.
func (service *commentService) DeleteTripComment(ctx context.Context, comment *model.TripComment) error {
	diver, err := getDiverInformationFromContext(ctx)
	if err != nil {
		return err
	}

	old, err := service.repo.Comment.FindTripComment(ctx, uint64(comment.ID))
	if err != nil {
		return err
	}

	if old.Reservation == nil || diver.ID != old.Reservation.DiverID {
		return errors.New("operation not authorized")
	}

	return service.repo.Comment.DeleteTripComment(ctx, comment)
}

// DeleteHotelComment deletes hotel comment.
func (service *commentService) DeleteHotelComment(ctx context.Context, comment *model.HotelComment) error {
	diver, err := getDiverInformationFromContext(ctx)
	if err != nil {
		return err
	}

	old, err := service.repo.Comment.FindHotelComment(ctx, uint64(comment.ID))
	if err != nil {
		return err
	}

	if old.Reservation == nil || diver.ID != old.Reservation.DiverID {
		return errors.New("operation not authorized")
	}

	return service.repo.Comment.DeleteHotelComment(ctx, comment)
}

// DeleteLiveaboardComment deletes liveaboard comment
func (service *commentService) DeleteLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error {
	diver, err := getDiverInformationFromContext(ctx)
	if err != nil {
		return err
	}

	old, err := service.repo.Comment.FindLiveaboardComment(ctx, uint64(comment.ID))
	if err != nil {
		return err
	}

	if old.Reservation == nil || diver.ID != old.Reservation.DiverID {
		return errors.New("operation not authorized")
	}

	return service.repo.Comment.DeleteLiveaboardComment(ctx, comment)
}
