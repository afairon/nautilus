package model

import (
	"time"

	"github.com/afairon/nautilus/entity"
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

// enum implementation for LevelType
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

// enum implementation for GenderType
type GenderType int32

const (
	FEMALE GenderType = iota
	MALE
)

func (g GenderType) String() string {
	return [...]string{"FEMALE", "MALE"}[g]
}

func (g GenderType) EnumIndex() int {
	return int(g)
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
	*Account    `gorm:"embedded"`
	Name        string
	Phone       string
	AccountId   uint64
	AddressId   uint64
	Documents   entity.StringArray
	DiveMasters []DiveMaster `gorm:"embedded"`
	Staffs      []Staff      `gorm:"embedded"`
	Boats       []Boat       `gorm:"embedded"`
}

type Diver struct {
	gorm.Model
	*Account  `gorm:"embedded"`
	Level     LevelType
	FirstName string
	LastName  string
	Phone     string
	BirthDate time.Time `gorm:"embedded"`
	Documents entity.StringArray
}

type DiveMaster struct {
	gorm.Model
	FirstName string
	LastName  string
	Level     LevelType
	Documents entity.StringArray
}

type Staff struct {
	gorm.Model
	FirstName string
	LastName  string
	Position  string
	Gender    GenderType
}

type Boat struct {
	gorm.Model
	Name          string
	Description   string
	TotalCapacity int
	DiverCapacity int
	StaffCapacity int
	Images        entity.StringArray
}
