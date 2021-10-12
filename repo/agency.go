package repo

import (
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"github.com/lib/pq"
)

// AgencyRepository defines interface for interaction
// with the agency repository.
type AgencyRepository interface {
	Create(ctx context.Context, agency *entity.Agency) (*entity.Agency, error)
	Get(ctx context.Context, id uint64) (*entity.Agency, error)
	List(ctx context.Context, limit, offset uint64) ([]pb.Agency, error)
}

// Agency implements AgencyRepository interface.
type Agency struct {
	db DBTX
}

// NewAgencyRepository creates a new AgencyRepository.
func NewAgencyRepository(db DBTX) *Agency {
	return &Agency{
		db: db,
	}
}

// Create creates an agency record and returns the newly created record.
func (repo *Agency) Create(ctx context.Context, agency *entity.Agency) (*entity.Agency, error) {
	var result entity.Agency

	err := repo.db.GetContext(ctx, &result, `
		INSERT INTO
			public.agency
			(name, phone, account_id, address_id, documents)
		VALUES
			($1, $2, $3, $4, $5)
		RETURNING id, name, phone, account_id, address_id, documents, created_on, updated_on
	`, agency.Name, agency.Phone, agency.AccountId, agency.AddressId, agency.Documents)

	return &result, err
}

// Get retrieves the agency record by its id.
func (repo *Agency) Get(ctx context.Context, id uint64) (*entity.Agency, error) {
	var result entity.Agency

	err := repo.db.GetContext(ctx, &result, `
		SELECT
			id, name, phone, account_id, address_id, documents, created_on, updated_on
		FROM
			public.agency
		WHERE
			id = $1
	`, id)

	return &result, err
}

// List returns list of agencies.
func (repo *Agency) List(ctx context.Context, limit, offset uint64) ([]pb.Agency, error) {
	rows, err := repo.db.Queryx(`
		SELECT
			agency.id, agency.name, agency.phone, agency.documents, agency.created_on, agency.updated_on,
			account.id, account.username, account.email, account."type", account.verified, account.active, account.created_on, account.updated_on,
			address.id, address.address_line_1, address.address_line_2, address.city, address.postcode, address.region, address.country
		FROM
			public.agency
		JOIN
			public.account
		ON
			account.id = agency.account_id
		JOIN
			public.address
		ON
			address.id = agency.address_id
		LIMIT
			$1
		OFFSET
			$2
	`, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	results := make([]pb.Agency, 0, limit)

	for rows.Next() {
		agency := pb.Agency{}
		var documents pq.StringArray

		err = rows.Scan(&agency.Id, &agency.Name, &agency.Phone, &documents, &agency.CreatedOn, &agency.UpdatedOn,
			&agency.Account.Id, &agency.Account.Username, &agency.Account.Email, &agency.Account.Type, &agency.Account.Verified,
			&agency.Account.Active, &agency.Account.CreatedOn, &agency.Account.UpdatedOn,
			&agency.Address.Id, &agency.Address.AddressLine_1, &agency.Address.AddressLine_2, &agency.Address.City, &agency.Address.Postcode,
			&agency.Address.Region, &agency.Address.Country,
		)
		if err != nil {
			return nil, err
		}

		if len(documents) > 0 {
			agency.Documents = make([]pb.File, 0, len(documents))

			for _, document := range documents {
				file := pb.File{
					Link: document,
				}
				agency.Documents = append(agency.Documents, file)
			}
		}

		results = append(results, agency)
	}

	return results, nil
}
