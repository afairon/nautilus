package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// CommentRepository defines interface for interaction
// with the comment repository.
type CommentRepository interface {
	CreateTripComment(ctx context.Context, comment *entity.TripComment) (*entity.TripComment, error)
	CreateHotelComment(ctx context.Context, comment *model.HotelComment) (*model.HotelComment, error)
	CreateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) (*model.LiveaboardComment, error)
}

// commentRepository implements CommentRepository interface.
type commentRepository struct {
	db *gorm.DB
}

// NewCommentRepository creates a new CommentRepository.
func NewCommentRepository(db *gorm.DB) *commentRepository {
	return &commentRepository{
		db: db,
	}
}

// CreateTripComment creates a trip comment record and returns the newly created record.
func (repo *commentRepository) CreateTripComment(ctx context.Context, comment *entity.TripComment) (*entity.TripComment, error) {
	// var result entity.TripComment

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.trip_comment
	// 		("comment", stars, reservation_id)
	// 	VALUES
	// 		($1, $2, $3)
	// 	RETURNING id, "comment", stars, reservation_id, created_on, updated_on
	// `, comment.Comment, comment.Stars, comment.ReservationId)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// CreateHotelComment creates a hotel comment record and returns the newly created record.
func (repo *commentRepository) CreateHotelComment(ctx context.Context, comment *model.HotelComment) (*model.HotelComment, error) {
	// var result entity.HotelComment

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.hotel_comment
	// 		("comment", stars, reservation_id)
	// 	VALUES
	// 		($1, $2, $3)
	// 	RETURNING id, "comment", stars, reservation_id, created_on, updated_on
	// `, comment.Comment, comment.Stars, comment.ReservationId)

	// return &result, err
	result := repo.db.Create(comment)
	return comment, result.Error
}

// CreateLiveaboardComment creates a liveaboard comment record and returns the newly created record.
func (repo *commentRepository) CreateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) (*model.LiveaboardComment, error) {
	// var result entity.LiveaboardComment

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.liveaboard_comment
	// 		("comment", stars, reservation_id)
	// 	VALUES
	// 		($1, $2, $3)
	// 	RETURNING id, "comment", stars, reservation_id, created_on, updated_on
	// `, comment.Comment, comment.Stars, comment.ReservationId)

	// return &result, err
	result := repo.db.Create(comment)
	return comment, result.Error
}
