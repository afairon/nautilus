package model

import (
	"time"

	"github.com/afairon/nautilus/entity"
	"gorm.io/gorm"
)

// we havnen't implemented the link between dive masters and trip yet
// both in this file and in class diagram.

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

// enum implementation for TripType
type TripType int32

const (
	ONSHORE TripType = iota
	OFFSHORE
)

func (t TripType) String() string {
	return [...]string{"ONSHORE", "OFFSHORE"}[t]
}

func (t TripType) EnumIndex() int {
	return int(t)
}

type Address struct {
	*gorm.Model
	AddressLine_1 string
	AddressLine_2 string
	City          string
	Postcode      string
	Region        string
	Country       string
}

type Coordinate struct {
	Lat  float32
	Long float32
}

type Account struct {
	*gorm.Model
	Email    string `gorm:"unique"`
	Username string
	Password string
	Verified bool
	Type     AccountType
	Active   bool
	AgencyID uint   `gorm:"default:null"`
	DiverID  uint64 `gorm:"default:null"`
}

type Agency struct {
	*gorm.Model
	*Coordinate   `gorm:"embedded"`
	*Address      `gorm:"embedded"`
	Account       *Account
	Name          string
	Phone         string
	Documents     entity.StringArray `gorm:"type:text"`
	DiveMasters   []DiveMaster
	Staffs        []Staff
	Boats         []Boat
	TripTemplates []TripTemplate
	Liveaboards   []Liveaboard
	Hotels        []Hotel
}

type Diver struct {
	*gorm.Model
	Account      *Account
	Level        LevelType
	FirstName    string
	LastName     string
	Phone        string
	Documents    entity.StringArray `gorm:"type:text"`
	Reservations []Reservation
}

type DiveMaster struct {
	*gorm.Model
	FirstName string
	LastName  string
	Level     LevelType
	Documents entity.StringArray `gorm:"type:text"`
	AgencyID  uint
}

type Staff struct {
	*gorm.Model
	FirstName string
	LastName  string
	Position  string
	Gender    GenderType
	AgencyID  uint
}

type Boat struct {
	*gorm.Model
	*Address       `gorm:"embedded"`
	Name           string
	Description    string
	TotalCapacity  uint32
	DiverCapacity  uint32
	StaffCapacity  uint32
	Images         entity.StringArray `gorm:"type:text"`
	Amenities      []Amenity          `gorm:"many2many:boat_amenity_link;"`
	AgencyID       uint
	TripTemplateID uint
}

type TripTemplate struct {
	*gorm.Model
	Name        string
	Descirption string
	Type        TripType
	Images      entity.StringArray `gorm:"type:text"`
	Boat        *Boat
	Trips       []Trip
	Liveaboards []Liveaboard
	Hotels      []Hotel
	AgencyID    uint
}

type Trip struct {
	*gorm.Model
	MaxGuest            uint32
	Price               float32
	StartDate           *time.Time
	EndDate             *time.Time
	LastReservationDate *time.Time
	Reservation         []Reservation
	TripTemplateID      uint
}

type Reservation struct {
	*gorm.Model
	Price             float32
	LiveaboardComment *LiveaboardComment
	HotelComment      *HotelComment
	TripComment       *TripComment
	DiverID           uint
	TripID            uint
}

type LiveaboardComment struct {
	*gorm.Model
	Comment       string
	Stars         uint32
	ReservationID uint
}

type HotelComment struct {
	*gorm.Model
	Comment       string
	Stars         uint32
	ReservationID uint
}

type TripComment struct {
	*gorm.Model
	Comment       string
	Stars         uint32
	ReservationID uint
}

type Amenity struct {
	*gorm.Model
	Name        string
	Description string
}

type Liveaboard struct {
	*gorm.Model
	*Address
	*Coordinate
	Name           string
	Description    string
	Length         uint32
	Width          uint32
	TotalCapacity  uint32
	DiverRooms     uint32
	StaffRooms     uint32
	RoomTypes      []RoomType
	AgencyID       uint
	TripTemplateID uint
}

type RoomType struct {
	*gorm.Model
	Name         string
	Description  string
	MaxGuest     uint32
	Price        float32
	Quantity     uint32
	Images       entity.StringArray `gorm:"type:text"`
	Amenities    []Amenity          `gorm:"many2many:room_amenity_link;"`
	LiveaboardID uint
	HotelID      uint
}

type Hotel struct {
	*gorm.Model
	*Address       `gorm:"embedded"`
	*Coordinate    `gorm:"embedded"`
	Name           string
	Description    string
	Stars          uint32
	Phone          string
	RoomTypes      []RoomType
	AgencyID       uint
	TripTemplateID uint
}
