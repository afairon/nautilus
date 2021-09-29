package store

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

type DiverStore interface {
	Create(context.Context, *entity.Diver) (entity.Diver, error)
	Get(context.Context, int64) (entity.Diver, error)
}

type Diver struct {
	db DBTX
}

func NewDiverStore(db DBTX) DiverStore {
	return &Diver{
		db: db,
	}
}

func (store *Diver) Create(ctx context.Context, diver *entity.Diver) (entity.Diver, error) {
	var result entity.Diver

	err := store.db.GetContext(ctx, &result,
		`INSERT INTO public.diver (first_name, last_name, phone, birth_date, level, account_id, documents)
		VALUES ($1, $2, $3, $4, $5, $6, $7)
		RETURNING id, first_name, last_name, phone, birth_date, level, account_id, documents, created_on, updated_on`,
		diver.FirstName,
		diver.LastName,
		diver.Phone,
		diver.BirthDate,
		diver.Level,
		diver.AccountId,
		diver.Documents,
	)

	return result, err
}

func (store *Diver) Get(ctx context.Context, id int64) (entity.Diver, error) {
	var result entity.Diver

	err := store.db.GetContext(ctx, result,
		`SELECT id, first_name, last_name, phone, birth_date, level, account_id, documents, created_on, updated_on
		FROM public.diver
		WHERE id = $1`,
		id,
	)

	return result, err
}
