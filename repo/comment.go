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

// commentRepository implements CommentRepository interface.
type commentRepository struct {
	db DBTX
}

// NewCommentRepository creates a new CommentRepository.
func NewCommentRepository(db DBTX) *commentRepository {
	return &commentRepository{
		db: db,
	}
}

// CreateTripComment creates a trip comment record and returns the newly created record.
func (repo *commentRepository) CreateTripComment(ctx context.Context, comment *entity.TripComment) (*entity.TripComment, error) {
	var result entity.TripComment

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.trip_comment
			("comment", stars, reservation_id)
		VALUES
			($1, $2, $3)
		RETURNING id, "comment", stars, reservation_id, created_on, updated_on
	`, comment.Comment, comment.Stars, comment.ReservationId)

	return &result, err
}

// CreateHotelComment creates a hotel comment record and returns the newly created record.
func (repo *commentRepository) CreateHotelComment(ctx context.Context, comment *entity.HotelComment) (*entity.HotelComment, error) {
	var result entity.HotelComment

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.hotel_comment
			("comment", stars, reservation_id)
		VALUES
			($1, $2, $3)
		RETURNING id, "comment", stars, reservation_id, created_on, updated_on
	`, comment.Comment, comment.Stars, comment.ReservationId)

	return &result, err
}

// CreateLiveaboardComment creates a liveaboard comment record and returns the newly created record.
func (repo *commentRepository) CreateLiveaboardComment(ctx context.Context, comment *entity.LiveaboardComment) (*entity.LiveaboardComment, error) {
	var result entity.LiveaboardComment

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.liveaboard_comment
			("comment", stars, reservation_id)
		VALUES
			($1, $2, $3)
		RETURNING id, "comment", stars, reservation_id, created_on, updated_on
	`, comment.Comment, comment.Stars, comment.ReservationId)

	return &result, err
}
