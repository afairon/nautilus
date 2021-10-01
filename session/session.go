package session

import (
	"context"

	"github.com/afairon/nautilus/entity"
)

// Session defines interface.
type Session interface {
	Create(entity.Account) (string, error)
	Verify(context.Context) (entity.Account, error)
}
