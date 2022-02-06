package model

import (
	"time"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/pb"
	"gorm.io/gorm"
)

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

func (a AccountType) EnumIndex() int {
	return int(a)
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

type Agency struct {
	gorm.Model
	*Account  `gorm:"embedded"`
	Name      string
	Phone     string
	AccountId uint64
	AddressId uint64
	Documents entity.StringArray
}

type LevelType int32

const (
	INSTRUCTOR LevelType = iota
	MASTER
	RESCUE
	ADVANCED_OPEN_WATER
	OPEN_WATER
)

func (l LevelType) String() string {
	return [...]string{"INSTRUCTOR", "MASTER", "RESCUE", "ADVANCED_OPEN_WATER", "OPEN_WATER"}[l]
}

func (l LevelType) EnumIndex() int {
	return int(l)
}

type Diver struct {
	gorm.Model
	*Account  `gorm:"embedded"`
	Level     LevelType
	FirstName string
	LastName  string
	Phone     string
	BirthDate time.Time `gorm:"embedded"`
	Documents []pb.File `gorm:"embedded"`
}
