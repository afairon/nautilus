package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"gorm.io/gorm"
)

// AddressRepository defines interface for interaction
// with the address repository.
type AddressRepository interface {
	Create(ctx context.Context, address *entity.Address) (*entity.Address, error)
	Get(ctx context.Context, id uint64) (*entity.Address, error)
	List(ctx context.Context, limit, offset uint64) ([]pb.Address, error)
}

// addressRepository implements AddressRepository interface.
type addressRepository struct {
	db *gorm.DB
}

// NewAddressRepository creates a new AddressRepository.
func NewAddressRepository(db *gorm.DB) *addressRepository {
	return &addressRepository{
		db: db,
	}
}

// Create creates an address record and returns the newly created record.
func (repo *addressRepository) Create(ctx context.Context, address *entity.Address) (*entity.Address, error) {
	// var result entity.Address

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.address
	// 		(address_line_1, address_line_2, city, postcode, region, country)
	// 	VALUES
	// 		($1, $2, $3, $4, $5, $6)
	// 	RETURNING id, address_line_1, address_line_2, city, postcode, region, country
	// `, address.AddressLine_1, address.AddressLine_2, address.City, address.Postcode, address.Region, address.Country)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// Get retrieves the address record by its id.
func (repo *addressRepository) Get(ctx context.Context, id uint64) (*entity.Address, error) {
	// var result entity.Address

	// err := repo.db.GetContext(ctx, &result, `
	// 	SELECT
	// 		id, address_line_1, address_line_2, city, postcode, region, country
	// 	FROM
	// 		public.address
	// 	WHERE
	// 		id = $1
	// `, id)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// List returns list of addresses.
func (repo *addressRepository) List(ctx context.Context, limit uint64, offset uint64) ([]pb.Address, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		id, address_line_1, address_line_2, city, postcode, region, country
	// 	FROM
	// 		public.address
	// 	LIMIT
	// 		$1
	// 	OFFSET
	// 		$2
	// `, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]pb.Address, 0, limit)

	// for rows.Next() {
	// 	address := pb.Address{}

	// 	err = rows.Scan(&address.Id, &address.AddressLine_1, &address.AddressLine_2, &address.City, &address.Postcode, &address.Region, &address.Country)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	results = append(results, address)
	// }

	// return results, nil
	return nil, errors.New("Unimplemented")
}
