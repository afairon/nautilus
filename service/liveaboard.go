package service

import (
	"context"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

// LiveaboardService defines operations on liveaboard.
type LiveaboardService interface {
	GetLiveaboard(ctx context.Context, id uint64) (*model.Liveaboard, error)
}

// liveaboardService implements LiveaboardService interface above.
type liveaboardService struct {
	repo  *repo.Repo
	media media.Store
}

func NewLiveaboardService(repo *repo.Repo, media media.Store) *liveaboardService {
	return &liveaboardService{
		repo:  repo,
		media: media,
	}
}

func (service *liveaboardService) GetLiveaboard(ctx context.Context, id uint64) (*model.Liveaboard, error) {
	liveaboard, err := service.repo.Liveaboard.GetLiveaboard(ctx, id)

	if err != nil {
		return nil, err
	}

	for idx, id := range liveaboard.Images {
		liveaboard.Images[idx] = service.media.Get(id, false)
	}

	return liveaboard, nil
}
