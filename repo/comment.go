package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

// CommentRepository defines interface for interaction
// with the comment repository.
type CommentRepository interface {
	CreateTripComment(ctx context.Context, comment *entity.TripComment) (*entity.TripComment, error)
	CreateHotelComment(ctx context.Context, comment *entity.HotelComment) (*entity.HotelComment, error)
	CreateLiveaboardComment(ctx context.Context, comment *entity.LiveaboardComment) (*entity.LiveaboardComment, error)
}

// Account implements AccountRepository interface.
type Comment struct {
	db DBTX
}

// NewCommentRepository creates a new CommentRepository.
func NewCommentRepository(db DBTX) *Comment {
	return &Comment{
		db: db,
	}
}

// CreateTripComment creates a trip comment record and returns the newly created record.
func (repo *Comment) CreateTripComment(ctx context.Context, comment *entity.TripComment) (*entity.TripComment, error) {
	var result entity.TripComment

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.trip_comment
			("comment", star, reservation_id)
		VALUES
			($1, $2, $3)
		RETURNING id, "comment", star, reservation_id, created_on, updated_on
	`, comment.Comment, comment.Star, comment.ReservationId)

	return &result, err
}

// CreateHotelComment creates a hotel comment record and returns the newly created record.
func (repo *Comment) CreateHotelComment(ctx context.Context, comment *entity.HotelComment) (*entity.HotelComment, error) {
	var result entity.HotelComment

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.hotel_comment
			("comment", star, reservation_id)
		VALUES
			($1, $2, $3)
		RETURNING id, "comment", star, reservation_id, created_on, updated_on
	`, comment.Comment, comment.Star, comment.ReservationId)

	return &result, err
}

// CreateLiveaboardComment creates a liveaboard comment record and returns the newly created record.
func (repo *Comment) CreateLiveaboardComment(ctx context.Context, comment *entity.LiveaboardComment) (*entity.LiveaboardComment, error) {
	var result entity.LiveaboardComment

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.liveaboard_comment
			("comment", star, reservation_id)
		VALUES
			($1, $2, $3)
		RETURNING id, "comment", star, reservation_id, created_on, updated_on
	`, comment.Comment, comment.Star, comment.ReservationId)

	return &result, err
}
