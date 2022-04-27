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

	if len(liveaboard.Images) > 0 {
		liveaboard.Files = make([]*model.File, 0, len(liveaboard.Images))

		for _, doc := range liveaboard.Images {
			file := model.File{
				Filename: doc,
				URL:      service.media.Get(doc, true),
			}
			liveaboard.Files = append(liveaboard.Files, &file)
		}
	}

	for _, roomType := range liveaboard.RoomTypes {
		if len(roomType.Images) > 0 {
			roomType.Files = make([]*model.File, 0, len(roomType.Images))

			for _, doc := range roomType.Images {
				file := model.File{
					Filename: doc,
					URL:      service.media.Get(doc, true),
				}
				roomType.Files = append(roomType.Files, &file)
			}
		}
	}

	return liveaboard, nil
}
