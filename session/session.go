package session

import (
	"github.com/afairon/nautilus/pb"
)

// context is a string, used as a key when using WithValue.
type context string

// Used in context.
const User context = "user"

type Account interface {
	GetAccount() *pb.Account
}

// Session defines interface.
type Session interface {
	Create(Account) (string, error)
	Get(string) (Account, error)
}
