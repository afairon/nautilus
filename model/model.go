package model

import (
	"time"

	"github.com/afairon/nautilus/pb"
	"github.com/lib/pq"
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

type File struct {
	gorm.Model
	UUID     string
	Filename string
	Buffer   []byte
	URL      string
	Private  bool
}

func (f *File) From(file *pb.File) {
	if file == nil {
		return
	}
	f.UUID = f.Filename
	f.Filename = file.Filename
	f.URL = file.Link
	f.Buffer = file.File
}

func (f *File) GetProto() *pb.File {
	file := pb.File{
		Filename: f.Filename,
		Link:     f.URL,
		File:     f.Buffer,
	}

	return &file
}

type Address struct {
	gorm.Model
	AddressLine_1 string `gorm:"not null" json:"address_line_1,omitempty"`
	AddressLine_2 string `gorm:"not null" json:"address_line_2,omitempty"`
	City          string `gorm:"not null" json:"city,omitempty"`
	Postcode      string `gorm:"not null" json:"postcode,omitempty"`
	Region        string `gorm:"not null" json:"region,omitempty"`
	Country       string `gorm:"not null" json:"country,omitempty"`
}

func (a *Address) From(address *pb.Address) {
	if address == nil {
		return
	}
	a.ID = uint(address.Id)
	a.AddressLine_1 = address.AddressLine_1
	a.AddressLine_2 = address.AddressLine_2
	a.City = address.City
	a.Postcode = address.Postcode
	a.Region = address.Region
	a.Country = address.Country
}

func (a *Address) GetProto() *pb.Address {
	address := pb.Address{
		Id:            uint64(a.ID),
		AddressLine_1: a.AddressLine_1,
		AddressLine_2: a.AddressLine_2,
		City:          a.City,
		Postcode:      a.Postcode,
		Region:        a.Region,
		Country:       a.Country,
		CreatedAt:     &a.CreatedAt,
		UpdatedAt:     &a.UpdatedAt,
	}

	return &address
}

type Coordinate struct {
	Lat  float32
	Long float32
}

func (c *Coordinate) From(coordinate *pb.Coordinate) {
	if coordinate == nil {
		return
	}
	c.Lat = coordinate.Lat
	c.Long = coordinate.Long
}

func (c *Coordinate) GetProto() *pb.Coordinate {
	coordinate := pb.Coordinate{
		Lat:  c.Lat,
		Long: c.Long,
	}

	return &coordinate
}

type Account struct {
	gorm.Model
	Email       string      `gorm:"unique;not null;" json:"email,omitempty"`
	Username    string      `gorm:"not null" json:"username,omitempty"`
	Password    string      `gorm:"not null" json:"-"`
	OldPassword string      `gorm:"-" json:"-"`
	Verified    bool        `gorm:"default:false;not null" json:"verified,omitempty"`
	Type        AccountType `gorm:"not null" json:"type,omitempty"`
	Active      bool        `gorm:"default:true;not null" json:"active,omitempty"`
	AgencyID    uint        `gorm:"default:null" json:"-"`
	DiverID     uint        `gorm:"default:null" json:"-"`
	AdminID     uint        `gorm:"default:null" json:"-"`
}

func (a *Account) GetType() AccountType {
	return a.Type
}

func (a *Account) From(account *pb.Account) {
	if account == nil {
		return
	}
	a.ID = uint(account.Id)
	a.Email = account.Email
	a.Username = account.Username
	a.Password = account.Password
	a.OldPassword = account.OldPassword
	a.Verified = account.Verified
	a.Type = AccountType(account.Type)
	a.Active = account.Active
}

func (a *Account) GetProto() *pb.Account {
	account := pb.Account{
		Id:          uint64(a.ID),
		Email:       a.Email,
		Username:    a.Username,
		Password:    a.Password,
		OldPassword: a.OldPassword,
		Verified:    a.Verified,
		Type:        pb.AccountType(a.Type),
		Active:      a.Active,
		CreatedAt:   &a.CreatedAt,
		UpdatedAt:   &a.UpdatedAt,
	}

	return &account
}

type Agency struct {
	gorm.Model
	*Coordinate   `gorm:"embedded"`
	AddressID     uint           `json:"-"`
	Address       Address        `json:"address,omitempty"`
	Account       *Account       `json:"account,omitempty"`
	Name          string         `gorm:"not null" json:"name,omitempty"`
	Phone         string         `gorm:"not null" json:"phone,omitempty"`
	Documents     pq.StringArray `gorm:"type:text" json:"documents,omitempty"`
	DiveMasters   []DiveMaster   `json:"dive_masters,omitempty"`
	Staffs        []Staff        `json:"staffs,omitempty"`
	Boats         []Boat         `json:"boats,omitempty"`
	TripTemplates []TripTemplate `json:"trip_templates,omitempty"`
	Liveaboards   []Liveaboard   `json:"liveaboards,omitempty"`
	Hotels        []Hotel        `json:"hotels,omitempty"`
	Trips         []Trip         `json:"trips,omitempty"`
	Files         []*File        `gorm:"-" json:"-"`
}

func (a *Agency) GetAccount() *Account {
	return a.Account
}

func (a *Agency) From(agency *pb.Agency) {
	if agency == nil {
		return
	}
	a.ID = uint(agency.Id)
	a.Address.From(&agency.Address)
	a.Name = agency.Name
	a.Phone = agency.Phone
	if agency.Coordinate != nil {
		if a.Coordinate == nil {
			a.Coordinate = &Coordinate{}
		}
		a.Coordinate.From(agency.Coordinate)
	}
	if agency.Account != nil {
		if a.Account == nil {
			a.Account = &Account{}
		}
		a.Account.From(agency.Account)
	}
	if len(agency.Documents) > 0 {
		a.Files = make([]*File, 0, len(agency.Documents))
		for _, doc := range agency.Documents {
			file := File{}
			file.From(&doc)
			a.Files = append(a.Files, &file)
		}
	}
}

func (a *Agency) GetProto() *pb.Agency {
	agency := pb.Agency{
		Id:        uint64(a.ID),
		Address:   *a.Address.GetProto(),
		Name:      a.Name,
		Phone:     a.Phone,
		CreatedAt: &a.CreatedAt,
		UpdatedAt: &a.UpdatedAt,
	}
	if a.Coordinate != nil {
		agency.Coordinate = a.Coordinate.GetProto()
	}
	if a.Account != nil {
		agency.Account = a.Account.GetProto()
	}
	if len(a.Files) > 0 {
		agency.Documents = make([]pb.File, 0, len(a.Files))
		for _, f := range a.Files {
			file := pb.File{
				Filename: f.Filename,
				Link:     f.URL,
			}
			agency.Documents = append(agency.Documents, file)
		}
	}

	return &agency
}

type Admin struct {
	*Account
}

func (a *Admin) GetAccount() *Account {
	return a.Account
}

func (a *Admin) From(admin *pb.Admin) {
	if admin == nil {
		return
	}
	if admin.Account == nil {
		return
	}

	if a.Account == nil {
		a.Account = &Account{}
	}

	a.Account.From(admin.Account)
}

func (a *Admin) GetProto() *pb.Admin {
	admin := pb.Admin{}

	if a.Account == nil {
		return &admin
	}

	admin.Account = a.Account.GetProto()

	return &admin
}

type Diver struct {
	gorm.Model
	Account      *Account       `json:"account,omitempty"`
	Level        LevelType      `gorm:"not null" json:"level,omitempty"`
	FirstName    string         `gorm:"not null" json:"firstname,omitempty"`
	LastName     string         `gorm:"not null" json:"lastname,omitempty"`
	Phone        string         `gorm:"not null" json:"phone,omitempty"`
	BirthDate    time.Time      `gorm:"not null" json:"birthdate,omitempty"`
	Documents    pq.StringArray `gorm:"type:text" json:"documents,omitempty"`
	Reservations []Reservation  `json:"reservations,omitempty"`
	Files        []*File        `gorm:"-" json:"-"`
}

func (d *Diver) GetAccount() *Account {
	return d.Account
}

func (d *Diver) From(diver *pb.Diver) {
	if diver == nil {
		return
	}
	d.ID = uint(diver.Id)
	d.Level = LevelType(diver.Level)
	d.FirstName = diver.FirstName
	d.LastName = diver.LastName
	d.Phone = diver.Phone
	d.BirthDate = diver.BirthDate
	if diver.Account != nil {
		if d.Account == nil {
			d.Account = &Account{}
		}
		d.Account.From(diver.Account)
	}
	if len(diver.Documents) > 0 {
		d.Files = make([]*File, 0, len(diver.Documents))
		for _, doc := range diver.Documents {
			file := File{}
			file.From(&doc)
			d.Files = append(d.Files, &file)
		}
	}
}

func (d *Diver) GetProto() *pb.Diver {
	diver := pb.Diver{
		Id:        uint64(d.ID),
		Level:     pb.LevelType(d.Level),
		FirstName: d.FirstName,
		LastName:  d.LastName,
		Phone:     d.Phone,
		BirthDate: d.BirthDate,
		CreatedAt: &d.CreatedAt,
		UpdatedAt: &d.CreatedAt,
	}
	if d.Account != nil {
		diver.Account = d.Account.GetProto()
	}
	if len(d.Files) > 0 {
		diver.Documents = make([]pb.File, 0, len(d.Files))
		for _, f := range d.Files {
			file := pb.File{
				Filename: f.Filename,
				Link:     f.URL,
			}
			diver.Documents = append(diver.Documents, file)
		}
	}

	return &diver
}

type DiveMaster struct {
	*gorm.Model
	FirstName string         `gorm:"not null"`
	LastName  string         `gorm:"not null"`
	Level     LevelType      `gorm:"not null"`
	Documents pq.StringArray `gorm:"type:text"`
	AgencyID  uint           `gorm:"not null"`
}

func (dm *DiveMaster) GetProto() *pb.DiveMaster {
	// might have to add documents to the returning object
	return &pb.DiveMaster{
		Id:        uint64(dm.ID),
		FirstName: dm.FirstName,
		LastName:  dm.LastName,
		Level:     pb.LevelType(dm.Level),
		CreatedAt: &dm.CreatedAt,
		UpdatedAt: &dm.UpdatedAt,
	}
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
	Name          string         `gorm:"not null"`
	Description   string         `gorm:"not null"`
	TotalCapacity uint32         `gorm:"not null"`
	DiverCapacity uint32         `gorm:"not null"`
	StaffCapacity uint32         `gorm:"not null"`
	Images        pq.StringArray `gorm:"type:text"`
	Amenities     []Amenity      `gorm:"many2many:boat_amenity_link;"`
	AgencyID      uint           `gorm:"not null"`
}

type TripTemplate struct {
	*gorm.Model
	Name         string         `gorm:"not null"`
	Description  string         `gorm:"not null"`
	Type         TripType       `gorm:"not null"`
	Images       pq.StringArray `gorm:"type:text"`
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

func (tt *TripTemplate) GetProto() *pb.TripTemplate {
	tripTemplate := pb.TripTemplate{
		Id:           uint64(tt.ID),
		Name:         tt.Name,
		Description:  tt.Description,
		TripType:     pb.TripType(tt.Type),
		HotelId:      uint64(tt.HotelID),
		BoatId:       uint64(tt.BoatID),
		LiveaboardId: uint64(tt.LiveaboardID),
		Address:      tt.Address.GetProto(),
		CreatedAt:    &tt.CreatedAt,
		UpdatedAt:    &tt.UpdatedAt,
	}

	if len(tt.Images) > 0 {
		tripTemplate.Images = make([]*pb.File, 0, len(tt.Images))
		for _, link := range tt.Images {
			file := &pb.File{
				Link: link,
			}
			tripTemplate.Images = append(tripTemplate.Images, file)
		}
	}

	return &tripTemplate
}

type Trip struct {
	*gorm.Model
	MaxGuest             uint32                `gorm:"not null"`
	CurrentGuest         uint32                `gorm:"not null;default:0"`
	Price                float32               `gorm:"not null;check:price_checker,price > 0"`
	StartDate            *time.Time            `gorm:"not null;check:trip_date_checker,start_date < end_date"`
	EndDate              *time.Time            `gorm:"not null"`
	LastReservationDate  *time.Time            `gorm:"not null;check:last_reservation_date_checker,last_reservation_date < start_date"`
	DiveMasters          []DiveMaster          `gorm:"many2many:dive_master_trips;"`
	ReservationRoomTypes []ReservationRoomType `gorm:"foreignKey:TripID"`
	TripTemplateID       uint                  `gorm:"not null"`
	TripTemplate         TripTemplate
	DiveSites            []DiveSite
	AgencyID             uint `gorm:"not null"`
}

func (t *Trip) GetProto() *pb.TripWithTemplate {
	trip := pb.TripWithTemplate{
		Id:                  uint64(t.ID),
		TripTemplateId:      uint64(t.TripTemplateID),
		TripTemplate:        t.TripTemplate.GetProto(),
		MaxGuest:            t.MaxGuest,
		CurentGuest:         t.CurrentGuest,
		Price:               t.Price,
		FromDate:            t.StartDate,
		ToDate:              t.EndDate,
		LastReservationDate: t.LastReservationDate,
		CreatedAt:           &t.CreatedAt,
		UpdatedAt:           &t.UpdatedAt,
	}

	if len(t.DiveSites) > 0 {
		trip.DiveSites = make([]*pb.DiveSite, 0, len(t.DiveSites))

		for _, ds := range t.DiveSites {
			trip.DiveSites = append(trip.DiveSites, ds.GetProto())
		}
	}

	if len(t.DiveMasters) > 0 {
		trip.DiveMasters = make([]*pb.DiveMaster, 0, len(t.DiveMasters))
		for _, diveMaster := range t.DiveMasters {
			trip.DiveMasters = append(trip.DiveMasters, diveMaster.GetProto())
		}
	}

	return &trip
}

type DiveSite struct {
	*gorm.Model
	Name        string `gorm:"not null"`
	Description string
	MinDepth    uint32
	MaxDepth    uint32
	TripID      uint `gorm:"not null"`
}

func (d *DiveSite) GetProto() *pb.DiveSite {
	return &pb.DiveSite{
		Id:          uint64(d.ID),
		Name:        d.Name,
		Description: d.Description,
		MinDepth:    d.MinDepth,
		MaxDepth:    d.MaxDepth,
		TripId:      uint64(d.TripID),
		CreatedAt:   &d.CreatedAt,
		UpdatedAt:   &d.UpdatedAt,
	}
}

type Reservation struct {
	*gorm.Model
	Price             float32 `gorm:"not null"`
	TotalDivers       uint    `gorm:"not null;default:0"`
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
	DiverID       uint
	Diver         *Diver
	Comment       string `gorm:"not null"`
	Stars         uint32 `gorm:"not null"`
	ReservationID uint   `gorm:"not null"`
}

type HotelComment struct {
	*gorm.Model
	DiverID       uint
	Diver         *Diver
	Comment       string `gorm:"not null"`
	Stars         uint32 `gorm:"not null"`
	ReservationID uint   `gorm:"not null"`
}

type TripComment struct {
	*gorm.Model
	DiverID       uint
	Diver         *Diver
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
	Name          string         `gorm:"not null"`
	Description   string         `gorm:"not null"`
	Length        uint32         `gorm:"not null"`
	Width         uint32         `gorm:"not null"`
	TotalCapacity uint32         `gorm:"not null"`
	DiverRooms    uint32         `gorm:"not null"`
	StaffRooms    uint32         `gorm:"not null"`
	Images        pq.StringArray `gorm:"type:text"`
	RoomTypes     []RoomType
	AgencyID      uint `gorm:"not null"`
}

type RoomType struct {
	*gorm.Model
	Name         string         `gorm:"not null"`
	Description  string         `gorm:"not null"`
	MaxGuest     uint32         `gorm:"not null;check:max_guest_checker,max_guest > 0"`
	Price        float32        `gorm:"not null;check:price_checker,price > 0"`
	Quantity     uint32         `gorm:"not null;check:quantity_checker,quantity > 0"`
	Images       pq.StringArray `gorm:"type:text"`
	Amenities    []Amenity      `gorm:"many2many:room_amenity_link;"`
	LiveaboardID uint           `gorm:"default:null"`
	HotelID      uint           `gorm:"default:null"`
}

type Hotel struct {
	*gorm.Model
	Coordinate  Coordinate `gorm:"embedded"`
	AddressID   uint
	Address     Address
	Name        string `gorm:"not null"`
	Description string `gorm:"not null"`
	Stars       uint32
	Phone       string         `gorm:"not null"`
	Images      pq.StringArray `gorm:"type:text"`
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
	TripID        uint `gorm:"primaryKey"`
	DiverNo       uint
	Quantity      uint
}
