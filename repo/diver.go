package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"github.com/lib/pq"
)

// DiverRepository defines interface for interaction
// with the diver repository.
type DiverRepository interface {
	Create(ctx context.Context, diver *entity.Diver) (*entity.Diver, error)
	Get(ctx context.Context, id uint64) (*entity.Diver, error)
	List(ctx context.Context, limit, offset uint64) ([]pb.Diver, error)
}

// diverRepository implements DiverRepository interface.
type diverRepository struct {
	db DBTX
}

// NewDiverRepository creates a new DiverRepository.
func NewDiverRepository(db DBTX) *diverRepository {
	return &diverRepository{
		db: db,
	}
}

// Create creates an diver record and returns the newly created record.
func (repo *diverRepository) Create(ctx context.Context, diver *entity.Diver) (*entity.Diver, error) {
	var result entity.Diver

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.diver
			(first_name, last_name, phone, birth_date, level, account_id, documents)
		VALUES
			($1, $2, $3, $4, $5, $6, $7)
		RETURNING id, first_name, last_name, phone, birth_date, level, account_id, documents, created_on, updated_on
	`, diver.FirstName, diver.LastName, diver.Phone, diver.BirthDate, diver.Level, diver.AccountId, diver.Documents)

	return &result, err
}

// Get retrieves the diver record by its id.
func (repo *diverRepository) Get(ctx context.Context, id uint64) (*entity.Diver, error) {
	var result entity.Diver

	err := repo.db.GetContext(ctx, result, `
		SELECT
			id, first_name, last_name, phone, birth_date, level, account_id, documents, created_on, updated_on
		FROM
			public.diver
		WHERE
			id = $1
	`, id)

	return &result, err
}

// List returns list of divers.
func (repo *diverRepository) List(ctx context.Context, limit, offset uint64) ([]pb.Diver, error) {
	rows, err := repo.db.Queryx(`
		SELECT
			diver.id, diver.first_name, diver.last_name, diver.phone, diver.birth_date, diver.documents, diver.created_on, diver.updated_on,
			account.id, account.username, LOWER(account.email) AS "account.email", account."type", account.verified, account.active, account.created_on, account.updated_on
		FROM
			public.diver diver
		JOIN
			public.account account
		ON
			account.id = diver.account_id
		LIMIT
			$1
		OFFSET
			$2
	`, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	results := make([]pb.Diver, 0, limit)

	for rows.Next() {
		diver := pb.Diver{}
		var birthDate string
		var documents pq.StringArray

		err = rows.Scan(&diver.Id, &diver.FirstName, &diver.LastName, &diver.Phone, &birthDate, &documents, &diver.CreatedOn, &diver.UpdatedOn,
			&diver.Account.Id, &diver.Account.Username, &diver.Account.Email, &diver.Account.Type, &diver.Account.Verified, &diver.Account.Active,
			&diver.Account.CreatedOn, &diver.Account.UpdatedOn,
		)
		if err != nil {
			return nil, err
		}

		if len(documents) > 0 {
			diver.Documents = make([]pb.File, 0, len(documents))

			for _, document := range documents {
				file := pb.File{
					Link: document,
				}
				diver.Documents = append(diver.Documents, file)
			}
		}

		results = append(results, diver)
	}

	return results, nil
}
