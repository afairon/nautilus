package session

import (
	"github.com/afairon/nautilus/entity"
)

// context is a string, used as a key when using WithValue.
type context string

// Used in context.
const User context = "user"

// Session defines interface.
type Session interface {
	Create(entity.Account) (string, error)
	Get(string) (entity.Account, error)
}
