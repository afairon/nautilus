package model

import "gorm.io/gorm"

// enum implementation for AccountType
type AccountType int32

const (
	ADMIN AccountType = iota
	AGENCY
	DIVER
)

func (a AccountType) String() string {
	return [...]string{"ADMIN", "AGENCY", "DIVER"}[a]
}

type Account struct {
	gorm.Model
	Email    string
	Username string
	Password string
	Type     AccountType
	Verified bool
	Active   bool
}
