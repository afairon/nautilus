package repo

import (
	"context"

	"github.com/afairon/nautilus/pb"
	"github.com/lib/pq"
)

// BoatRepository defines interface for interaction
// with the boat repository.
type BoatRepository interface {
	ListBoatsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListBoatsResponse_Boat, error)
}

// boatRepository implements BoatRepository interface.
type boatRepository struct {
	db DBTX
}

// NewBoatRepository creates a new BoatRepository.
func NewBoatRepository(db DBTX) *boatRepository {
	return &boatRepository{
		db: db,
	}
}

// ListBoatsByAgency returns list of boats by agency id.
func (repo *boatRepository) ListBoatsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListBoatsResponse_Boat, error) {
	rows, err := repo.db.Queryx(`
		SELECT
			boat.id, boat."name", boat."images", boat.created_on, boat.updated_on
		FROM
			public.boat boat
		JOIN
			public.agency agency
		ON
			boat.agency_id = agency.id
		WHERE
			boat.agency_id = $1
		LIMIT
			$2
		OFFSET
			$3
	`, id, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	results := make([]*pb.ListBoatsResponse_Boat, 0, limit)

	for rows.Next() {
		boat := &pb.ListBoatsResponse_Boat{}
		var images pq.StringArray

		err = rows.Scan(&boat.Id, &boat.Name, &images, &boat.CreatedOn, &boat.UpdatedOn)
		if err != nil {
			return nil, err
		}

		if len(images) > 0 {
			boat.Images = make([]*pb.File, 0, len(images))

			for _, image := range images {
				file := &pb.File{
					Link: image,
				}
				boat.Images = append(boat.Images, file)
			}
		}

		results = append(results, boat)
	}

	return results, nil
}
