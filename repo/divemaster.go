package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"gorm.io/gorm"
)

// DiveMasterRepository defines interface for interaction
// with the divemaster repository.
type DiveMasterRepository interface {
	ListDiveMastersByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.DiveMaster, error)
}

// diveMasterRepository implements DiveMasterRepository interface.
type diveMasterRepository struct {
	db *gorm.DB
}

// NewDiveMasterRepository creates a new DiveMasterRepository.
func NewDiveMasterRepository(db *gorm.DB) *diveMasterRepository {
	return &diveMasterRepository{
		db: db,
	}
}

// ListDiveMastersByAgency returns list of divemasters by agency id.
func (repo *diveMasterRepository) ListDiveMastersByAgency(ctx context.Context, id, limit, offset uint64) ([]*model.DiveMaster, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		dm.id, dm.first_name, dm.last_name, dm."level", dm.documents, dm.created_on, dm.updated_on
	// 	FROM
	// 		public.dive_master dm
	// 	WHERE
	// 		dm.agency_id = $1
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListDiveMastersResponse_DiveMaster, 0, limit)

	// for rows.Next() {
	// 	diveMaster := &pb.ListDiveMastersResponse_DiveMaster{}
	// 	var documents pq.StringArray

	// 	err = rows.Scan(&diveMaster.Id, &diveMaster.FirstName, &diveMaster.LastName, &diveMaster.Level, &documents, &diveMaster.CreatedOn, &diveMaster.UpdatedOn)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(documents) > 0 {
	// 		diveMaster.Documents = make([]*pb.File, 0, len(documents))

	// 		for _, document := range documents {
	// 			file := &pb.File{
	// 				Link: document,
	// 			}
	// 			diveMaster.Documents = append(diveMaster.Documents, file)
	// 		}
	// 	}

	// 	results = append(results, diveMaster)
	// }

	// return results, nil
	var diveMasters []*model.DiveMaster

	result := repo.db.Limit(int(limit)).Offset(int(offset)).Where("agency_id = ?", id).Find(&diveMasters)
	return diveMasters, result.Error
}
