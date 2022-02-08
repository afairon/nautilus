package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/pb"
	"gorm.io/gorm"
)

// LiveaboardRepository defines interface for interaction
// with the liveaboard repository.
type LiveaboardRepository interface {
	ListLiveaboardsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListLiveaboardsResponse_Liveaboard, error)
}

// liveaboardRepository implements LiveaboardRepository interface.
type liveaboardRepository struct {
	db *gorm.DB
}

// NewLiveaboardRepository creates a new LiveaboardRepository.
func NewLiveaboardRepository(db *gorm.DB) *liveaboardRepository {
	return &liveaboardRepository{
		db: db,
	}
}

// ListLiveaboardsByAgency returns list of liveaboards by agency id.
func (repo *liveaboardRepository) ListLiveaboardsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListLiveaboardsResponse_Liveaboard, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		liveaboard.id, liveaboard."name", liveaboard.description, liveaboard.length, liveaboard.width, liveaboard.images, liveaboard.created_on, liveaboard.updated_on
	// 	FROM
	// 		public.liveaboard liveaboard
	// 	WHERE
	// 		liveaboard.agency_id = $1
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListLiveaboardsResponse_Liveaboard, 0, limit)

	// for rows.Next() {
	// 	liveaboard := &pb.ListLiveaboardsResponse_Liveaboard{}
	// 	var images pq.StringArray

	// 	err = rows.Scan(&liveaboard.Id, &liveaboard.Name, &liveaboard.Description, &liveaboard.Length, &liveaboard.Width, &images, &liveaboard.CreatedOn, &liveaboard.UpdatedOn)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(images) > 0 {
	// 		liveaboard.Images = make([]*pb.File, 0, len(images))

	// 		for _, image := range images {
	// 			file := &pb.File{
	// 				Link: image,
	// 			}
	// 			liveaboard.Images = append(liveaboard.Images, file)
	// 		}
	// 	}

	// 	results = append(results, liveaboard)
	// }

	// return results, nil
	return nil, errors.New("Unimplemented")
}
