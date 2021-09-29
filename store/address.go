package store

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

type AddressStore interface {
	Create(context.Context, *entity.Address) (entity.Address, error)
	Get(context.Context, int64) (entity.Address, error)
}

type Address struct {
	db DBTX
}

func NewAddressStore(db DBTX) AddressStore {
	return &Address{
		db: db,
	}
}

func (store *Address) Create(ctx context.Context, address *entity.Address) (entity.Address, error) {
	var result entity.Address

	err := store.db.GetContext(ctx, &result,
		`INSERT INTO public.address (address_line_1, address_line_2, city, postcode, region, country)
		VALUES ($1, $2, $3, $4, $5, $6)
		RETURNING id, address_line_1, address_line_2, city, postcode, region, country`,
		address.AddressLine_1,
		address.AddressLine_2,
		address.City,
		address.Postcode,
		address.Region,
		address.Country,
	)

	return result, err
}

func (store *Address) Get(ctx context.Context, id int64) (entity.Address, error) {
	var result entity.Address

	err := store.db.GetContext(ctx, &result,
		`SELECT id, address_line_1, address_line_2, city, postcode, region, country
		FROM public.address
		WHERE id = $1`,
		id,
	)

	return result, err
}
