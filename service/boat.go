package service

import (
	"context"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
)

// BoatService defines operations on boat.
type BoatService interface {
	GetBoat(ctx context.Context, id uint64) (*model.Boat, error)
}

// boatService implements BoatService interface above.
type boatService struct {
	repo  *repo.Repo
	media media.Store
}

func NewBoatService(repo *repo.Repo, media media.Store) *boatService {
	return &boatService{
		repo:  repo,
		media: media,
	}
}

func (service *boatService) GetBoat(ctx context.Context, id uint64) (*model.Boat, error) {
	boat, err := service.repo.Boat.GetBoat(ctx, uint(id))

	if err != nil {
		return nil, err
	}

	if len(boat.Images) > 0 {
		boat.Files = make([]*model.File, 0, len(boat.Images))

		for _, doc := range boat.Images {
			file := model.File{
				Filename: doc,
				URL:      service.media.Get(doc, true),
			}
			boat.Files = append(boat.Files, &file)
		}
	}

	return boat, nil
}
