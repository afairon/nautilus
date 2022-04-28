package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// CommentRepository defines interface for interaction
// with the comment repository.
type CommentRepository interface {
	CreateTripComment(ctx context.Context, comment *model.TripComment) (*model.TripComment, error)
	CreateHotelComment(ctx context.Context, comment *model.HotelComment) (*model.HotelComment, error)
	CreateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) (*model.LiveaboardComment, error)

	FindTripComment(ctx context.Context, id uint64) (*model.TripComment, error)
	FindHotelComment(ctx context.Context, id uint64) (*model.HotelComment, error)
	FindLiveaboardComment(ctx context.Context, id uint64) (*model.LiveaboardComment, error)

	UpdateTripComment(ctx context.Context, comment *model.TripComment) error
	UpdateHotelComment(ctx context.Context, comment *model.HotelComment) error
	UpdateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error

	DeleteTripComment(ctx context.Context, comment *model.TripComment) error
	DeleteHotelComment(ctx context.Context, comment *model.HotelComment) error
	DeleteLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error
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
func (repo *commentRepository) CreateTripComment(ctx context.Context, comment *model.TripComment) (*model.TripComment, error) {
	if result := repo.db.Create(comment); result.Error != nil {
		return nil, result.Error
	}
	return comment, nil
}

// CreateHotelComment creates a hotel comment record and returns the newly created record.
func (repo *commentRepository) CreateHotelComment(ctx context.Context, comment *model.HotelComment) (*model.HotelComment, error) {
	result := repo.db.Create(comment)
	return comment, result.Error
}

// CreateLiveaboardComment creates a liveaboard comment record and returns the newly created record.
func (repo *commentRepository) CreateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) (*model.LiveaboardComment, error) {
	result := repo.db.Create(comment)
	return comment, result.Error
}

// FindTripComment retrieves trip comment by id.
func (repo *commentRepository) FindTripComment(ctx context.Context, id uint64) (*model.TripComment, error) {
	var comment model.TripComment

	if err := repo.db.Preload("Reservation").Joins("JOIN reservations ON reservations.id = trip_comments.reservation_id").Joins("JOIN divers ON divers.id = reservations.diver_id").Where("trip_comments.id = ?", id).Take(&comment).Error; err != nil {
		return nil, err
	}

	return &comment, nil
}

// FindHotelComment retrieves hotel comment by id.
func (repo *commentRepository) FindHotelComment(ctx context.Context, id uint64) (*model.HotelComment, error) {
	var comment model.HotelComment

	if err := repo.db.Preload("Reservation").Joins("JOIN reservations ON reservations.id = hotel_comments.reservation_id").Joins("JOIN divers ON divers.id = reservations.diver_id").Where("hotel_comments.id = ?", id).Take(&comment).Error; err != nil {
		return nil, err
	}

	return &comment, nil
}

// FindLiveaboardComment retrieves liveaboard comment by id.
func (repo *commentRepository) FindLiveaboardComment(ctx context.Context, id uint64) (*model.LiveaboardComment, error) {
	var comment model.LiveaboardComment

	if err := repo.db.Preload("Reservation").Joins("JOIN reservations ON reservations.id = liveaboard_comments.reservation_id").Joins("JOIN divers ON divers.id = reservations.diver_id").Where("liveaboard_comments.id = ?", id).Take(&comment, id).Error; err != nil {
		return nil, err
	}

	return &comment, nil
}

// UpdateTripComment updates trip comment.
func (repo *commentRepository) UpdateTripComment(ctx context.Context, comment *model.TripComment) error {
	columns := []string{}

	if comment.Comment == "" {
		columns = append(columns, "Comment")
	}

	if err := repo.db.Model(comment).Omit(columns...).Updates(map[string]interface{}{
		"Stars":   comment.Stars,
		"Comment": comment.Comment,
	}).Error; err != nil {
		return err
	}

	return nil
}

// UpdateHotelComment updates hotel comment.
func (repo *commentRepository) UpdateHotelComment(ctx context.Context, comment *model.HotelComment) error {
	columns := []string{}

	if comment.Comment == "" {
		columns = append(columns, "Comment")
	}

	if err := repo.db.Model(comment).Omit(columns...).Updates(map[string]interface{}{
		"Stars":   comment.Stars,
		"Comment": comment.Comment,
	}).Error; err != nil {
		return err
	}

	return nil
}

// UpdateLiveaboardComment updates liveaboard comment.
func (repo *commentRepository) UpdateLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error {
	columns := []string{}

	if comment.Comment == "" {
		columns = append(columns, "Comment")
	}

	if err := repo.db.Model(comment).Omit(columns...).Updates(map[string]interface{}{
		"Stars":   comment.Stars,
		"Comment": comment.Comment,
	}).Error; err != nil {
		return err
	}

	return nil
}

// DeleteTripComment deletes trip comment.
func (repo *commentRepository) DeleteTripComment(ctx context.Context, comment *model.TripComment) error {
	return repo.db.Delete(comment).Error
}

// DeleteHotelComment deletes hotel comment.
func (repo *commentRepository) DeleteHotelComment(ctx context.Context, comment *model.HotelComment) error {
	return repo.db.Delete(comment).Error
}

// DeleteLiveaboardComment deletes liveaboard comment.
func (repo *commentRepository) DeleteLiveaboardComment(ctx context.Context, comment *model.LiveaboardComment) error {
	return repo.db.Delete(comment).Error
}
