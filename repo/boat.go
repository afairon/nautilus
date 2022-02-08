package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/pb"
	"gorm.io/gorm"
)

// BoatRepository defines interface for interaction
// with the boat repository.
type BoatRepository interface {
	ListBoatsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListBoatsResponse_Boat, error)
}

// boatRepository implements BoatRepository interface.
type boatRepository struct {
	db *gorm.DB
}

// NewBoatRepository creates a new BoatRepository.
func NewBoatRepository(db *gorm.DB) *boatRepository {
	return &boatRepository{
		db: db,
	}
}

// ListBoatsByAgency returns list of boats by agency id.
func (repo *boatRepository) ListBoatsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListBoatsResponse_Boat, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		id, "name", "images", created_on, updated_on
	// 	FROM
	// 		public.boat
	// 	WHERE
	// 		agency_id = $1
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListBoatsResponse_Boat, 0, limit)

	// for rows.Next() {
	// 	boat := &pb.ListBoatsResponse_Boat{}
	// 	var images pq.StringArray

	// 	err = rows.Scan(&boat.Id, &boat.Name, &images, &boat.CreatedOn, &boat.UpdatedOn)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(images) > 0 {
	// 		boat.Images = make([]*pb.File, 0, len(images))

	// 		for _, image := range images {
	// 			file := &pb.File{
	// 				Link: image,
	// 			}
	// 			boat.Images = append(boat.Images, file)
	// 		}
	// 	}

	// 	results = append(results, boat)
	// }

	// return results, nil
	return nil, errors.New("Unimplemented")
}
