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
	AddressLine_1 string `gorm:"not null"`
	AddressLine_2 string `gorm:"not null"`
	City          string `gorm:"not null"`
	Postcode      string `gorm:"not null"`
	Region        string `gorm:"not null"`
	Country       string `gorm:"not null"`
}

type Coordinate struct {
	Lat  float32
	Long float32
}

type Account struct {
	*gorm.Model
	Email    string      `gorm:"unique;not null;"`
	Username string      `gorm:"not null"`
	Password string      `gorm:"not null"`
	Verified bool        `gorm:"default:false;not null"`
	Type     AccountType `gorm:"not null"`
	Active   bool        `gorm:"default:true;not null"`
	AgencyID uint        `gorm:"default:null"`
	DiverID  uint        `gorm:"default:null"`
	AdminID  uint        `gorm:"default:null"`
}

type Agency struct {
	*gorm.Model
	*Coordinate   `gorm:"embedded"`
	AddressID     uint
	Address       Address
	Account       *Account
	Name          string             `gorm:"not null"`
	Phone         string             `gorm:"not null"`
	Documents     entity.StringArray `gorm:"type:text"`
	DiveMasters   []DiveMaster
	Staffs        []Staff
	Boats         []Boat
	TripTemplates []TripTemplate
	Liveaboards   []Liveaboard
	Hotels        []Hotel
	Trips         []Trip
}

type Admin struct {
	*gorm.Model
	Account *Account
}

type Diver struct {
	*gorm.Model
	Account      *Account
	Level        LevelType          `gorm:"not null"`
	FirstName    string             `gorm:"not null"`
	LastName     string             `gorm:"not null"`
	Phone        string             `gorm:"not null"`
	BirthDate    time.Time          `gorm:"not null"`
	Documents    entity.StringArray `gorm:"type:text"`
	Reservations []Reservation
}

type DiveMaster struct {
	*gorm.Model
	FirstName string             `gorm:"not null"`
	LastName  string             `gorm:"not null"`
	Level     LevelType          `gorm:"not null"`
	Documents entity.StringArray `gorm:"type:text"`
	AgencyID  uint               `gorm:"not null"`
}

type Staff struct {
	*gorm.Model
	FirstName string     `gorm:"not null"`
	LastName  string     `gorm:"not null"`
	Position  string     `gorm:"not null"`
	Gender    GenderType `gorm:"not null"`
	AgencyID  uint       `gorm:"not null"`
}

type Boat struct {
	*gorm.Model
	AddressID     uint
	Address       Address
	Name          string             `gorm:"not null"`
	Description   string             `gorm:"not null"`
	TotalCapacity uint32             `gorm:"not null"`
	DiverCapacity uint32             `gorm:"not null"`
	StaffCapacity uint32             `gorm:"not null"`
	Images        entity.StringArray `gorm:"type:text"`
	Amenities     []Amenity          `gorm:"many2many:boat_amenity_link;"`
	AgencyID      uint               `gorm:"not null"`
}

type TripTemplate struct {
	*gorm.Model
	Name         string             `gorm:"not null"`
	Description  string             `gorm:"not null"`
	Type         TripType           `gorm:"not null"`
	Images       entity.StringArray `gorm:"type:text"`
	AddressID    uint
	Address      Address
	Trips        []Trip
	AgencyID     uint `gorm:"not null"`
	HotelID      uint `gorm:"default:null"`
	Hotel        Hotel
	LiveaboardID uint `gorm:"default:null"`
	Liveaboard   Liveaboard
	BoatID       uint `gorm:"default:null"`
	Boat         Boat
}

type Trip struct {
	*gorm.Model
	MaxGuest            uint32       `gorm:"not null"`
	Price               float32      `gorm:"not null;check:price_checker,price > 0"`
	StartDate           *time.Time   `gorm:"not null;check:trip_date_checker,start_date < end_date"`
	EndDate             *time.Time   `gorm:"not null"`
	LastReservationDate *time.Time   `gorm:"not null;check:last_reservation_date_checker,last_reservation_date < start_date"`
	DiveMasters         []DiveMaster `gorm:"many2many:dive_master_trips;"`
	TripTemplateID      uint         `gorm:"not null"`
	TripTemplate        TripTemplate
	AgencyID            uint `gorm:"not null"`
}

type Reservation struct {
	*gorm.Model
	Price             float32 `gorm:"not null"`
	LiveaboardComment *LiveaboardComment
	HotelComment      *HotelComment
	TripComment       *TripComment
	DiverID           uint
	TripID            uint
	Trip              Trip
	RoomTypes         []RoomType `gorm:"many2many:reservation_room_types;"`
}

type LiveaboardComment struct {
	*gorm.Model
	Comment       string `gorm:"not null"`
	Stars         uint32 `gorm:"not null"`
	ReservationID uint   `gorm:"not null"`
}

type HotelComment struct {
	*gorm.Model
	Comment       string `gorm:"not null"`
	Stars         uint32 `gorm:"not null"`
	ReservationID uint   `gorm:"not null"`
}

type TripComment struct {
	*gorm.Model
	Comment       string `gorm:"not null"`
	Stars         uint32 `gorm:"not null"`
	ReservationID uint   `gorm:"not null"`
}

type Amenity struct {
	*gorm.Model
	Name        string `gorm:"unique;not null"`
	Description string `gorm:"not null"`
}

type Liveaboard struct {
	*gorm.Model
	AddressID uint
	Address   Address
	*Coordinate
	Name          string             `gorm:"not null"`
	Description   string             `gorm:"not null"`
	Length        uint32             `gorm:"not null"`
	Width         uint32             `gorm:"not null"`
	TotalCapacity uint32             `gorm:"not null"`
	DiverRooms    uint32             `gorm:"not null"`
	StaffRooms    uint32             `gorm:"not null"`
	Images        entity.StringArray `gorm:"type:text"`
	RoomTypes     []RoomType
	AgencyID      uint `gorm:"not null"`
}

type RoomType struct {
	*gorm.Model
	Name         string             `gorm:"not null"`
	Description  string             `gorm:"not null"`
	MaxGuest     uint32             `gorm:"not null;check:max_guest_checker,max_guest > 0"`
	Price        float32            `gorm:"not null;check:price_checker,price > 0"`
	Quantity     uint32             `gorm:"not null;check:quantity_checker,quantity > 0"`
	Images       entity.StringArray `gorm:"type:text"`
	Amenities    []Amenity          `gorm:"many2many:room_amenity_link;"`
	LiveaboardID uint               `gorm:"default:null"`
	HotelID      uint               `gorm:"default:null"`
}

type Hotel struct {
	*gorm.Model
	Coordinate  Coordinate `gorm:"embedded"`
	AddressID   uint
	Address     Address
	Name        string `gorm:"not null"`
	Description string `gorm:"not null"`
	Stars       uint32
	Phone       string             `gorm:"not null"`
	Images      entity.StringArray `gorm:"type:text"`
	RoomTypes   []RoomType
	AgencyID    uint `gorm:"not null"`
}

type DiveMasterTrip struct {
	TripID       uint `gorm:"primaryKey"`
	DiveMasterID uint `gorm:"primaryKey"`
}

type ReservationRoomType struct {
	ReservationID uint `gorm:"primaryKey"`
	RoomTypeID    uint `gorm:"primaryKey"`
	DiverNo       uint
	Quantity      uint
}
