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
	Email    string
	Username string
	Password string
	Type     AccountType
	Verified bool
	Active   bool
}

// this thing should be fixed
type Agency struct {
	*gorm.Model
	Name      string
	Phone     string
	AccountId uint64
	AddressId uint64
	Documents entity.StringArray `gorm:"type:text"`
	// DiveMasters   []DiveMaster   `gorm:"embedded"`
	// Staffs        []Staff        `gorm:"embedded"`
	// Boats         []Boat         `gorm:"embedded"`
	// TripTemplates []TripTemplate `gorm:"embedded"`
	// Liveaboards   []Liveaboard   `gorm:"embedded"`
	// Hotels        []Hotel        `gorm:"embedded"`
	*Coordinate
}

type Diver struct {
	*gorm.Model
	*Account     `gorm:"embedded"`
	Level        LevelType
	FirstName    string
	LastName     string
	Phone        string
	BirthDate    *time.Time `gorm:"embedded"`
	Documents    entity.StringArray
	Reservations []Reservation
}

type DiveMaster struct {
	*gorm.Model
	FirstName string
	LastName  string
	Level     LevelType
	Documents entity.StringArray
}

type Staff struct {
	*gorm.Model
	FirstName string
	LastName  string
	Position  string
	Gender    GenderType
}

type Boat struct {
	*gorm.Model
	Name          string
	Description   string
	TotalCapacity uint32
	DiverCapacity uint32
	StaffCapacity uint32
	Images        entity.StringArray
	Amenities     []Amenity `gorm:"embedded"`
	*Address      `gorm:"embedded"`
}

type TripTemplate struct {
	*gorm.Model
	Name        string
	Descirption string
	Type        TripType
	Images      entity.StringArray
	Boat        *Boat        `gorm:"embedded"`
	Trips       []Trip       `gorm:"embedded"`
	Liveaboards []Liveaboard `gorm:"embedded"`
	Hotels      []Hotel      `gorm:"embedded"`
}

type Trip struct {
	*gorm.Model
	MaxGuest            uint32
	Price               float32
	StartDate           *time.Time
	EndDate             *time.Time
	LastReservationDate *time.Time
	Reservation         []Reservation `gorm:"embedded"`
}

type Reservation struct {
	*gorm.Model
	Price             float32
	LiveaboardComment *LiveaboardComment `gorm:"embedded"`
	HotelComment      *HotelComment      `gorm:"embedded"`
	TripComment       *TripComment       `gorm:"embedded"`
}

type LiveaboardComment struct {
	*gorm.Model
	Comment string
	Stars   uint32
}

type HotelComment struct {
	*gorm.Model
	Comment string
	Stars   uint32
}

type TripComment struct {
	*gorm.Model
	Comment string
	Stars   uint32
}

type Amenity struct {
	*gorm.Model
	Name        string
	Description string
}

type Liveaboard struct {
	*gorm.Model
	Name          string
	Description   string
	Length        uint32
	Width         uint32
	TotalCapacity uint32
	DiverRooms    uint32
	StaffRooms    uint32
	RoomTypes     []RoomType `gorm:"embedded"`
	*Address
	*Coordinate
}

type RoomType struct {
	*gorm.Model
	Name        string
	Description string
	MaxGuest    uint32
	Price       float32
	Quantity    uint32
	Images      entity.StringArray
	Amenities   []Amenity `gorm:"embedded"`
}

type Hotel struct {
	*gorm.Model
	Name        string
	Description string
	Stars       uint32
	Phone       string
	RoomTypes   []RoomType
	*Address
	*Coordinate
}
