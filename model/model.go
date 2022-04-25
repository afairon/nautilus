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
	gorm.Model
	FirstName string         `gorm:"not null"`
	LastName  string         `gorm:"not null"`
	Level     LevelType      `gorm:"not null"`
	Documents pq.StringArray `gorm:"type:text"`
	AgencyID  uint           `gorm:"not null"`
	Files     []*File        `gorm:"-" json:"-"`
}

func (dm *DiveMaster) From(diveMaster *pb.DiveMaster) {
	dm.ID = uint(diveMaster.GetId())
	dm.FirstName = diveMaster.GetFirstName()
	dm.LastName = diveMaster.GetLastName()
	dm.Level = LevelType(diveMaster.GetLevel())

	if len(diveMaster.GetDocuments()) > 0 {
		dm.Files = make([]*File, 0, len(diveMaster.GetDocuments()))

		for _, doc := range diveMaster.GetDocuments() {
			file := File{}
			file.From(doc)
			dm.Files = append(dm.Files, &file)
		}
	}
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
	gorm.Model
	AddressID     uint
	Address       Address
	Name          string         `gorm:"not null"`
	Description   string         `gorm:"not null"`
	TotalCapacity uint32         `gorm:"not null"`
	DiverCapacity uint32         `gorm:"not null"`
	StaffCapacity uint32         `gorm:"not null"`
	Images        pq.StringArray `gorm:"type:text"`
	AgencyID      uint           `gorm:"not null"`
	Files         []*File        `gorm:"-" json:"-"`
}

func (b *Boat) From(boat *pb.Boat) {
	b.ID = uint(boat.GetId())
	b.AddressID = uint(boat.Address.GetId())
	b.Name = boat.GetName()
	b.Description = boat.GetDescription()
	b.TotalCapacity = boat.GetTotalCapacity()
	b.DiverCapacity = boat.GetDiverCapacity()
	b.StaffCapacity = boat.GetStaffCapacity()

	addr := Address{}
	addr.From(boat.GetAddress())
	b.Address = addr

	if len(boat.GetImages()) > 0 {
		b.Files = make([]*File, 0, len(boat.GetImages()))

		for _, doc := range boat.GetImages() {
			file := File{}
			file.From(doc)
			b.Files = append(b.Files, &file)
		}
	}
}

type TripTemplate struct {
	gorm.Model
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
	Files        []*File `gorm:"-" json:"-"`
}

func (tt *TripTemplate) From(tripTemplate *pb.TripTemplate) {
	if tripTemplate == nil {
		return
	}
	tt.ID = uint(tripTemplate.GetId())
	tt.Name = tripTemplate.GetName()
	tt.Description = tripTemplate.GetDescription()
	tt.Type = TripType(tripTemplate.GetTripType())
	tt.AddressID = uint(tripTemplate.GetAddress().GetId())

	addr := Address{}
	addr.From(tripTemplate.GetAddress())
	tt.Address = addr

	switch tt.Type {
	case ONSHORE:
		tt.HotelID = uint(tripTemplate.GetHotelId())
		tt.BoatID = uint(tripTemplate.BoatId)
	case OFFSHORE:
		tt.LiveaboardID = uint(tripTemplate.GetLiveaboardId())
	}

	if len(tripTemplate.GetImages()) > 0 {
		tt.Files = make([]*File, 0, len(tripTemplate.GetImages()))

		for _, doc := range tripTemplate.GetImages() {
			file := File{}
			file.From(doc)
			tt.Files = append(tt.Files, &file)
		}
	}
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
	gorm.Model
	MaxGuest                     uint32                `gorm:"not null"`
	CurrentGuest                 uint32                `gorm:"not null;default:0"`
	Price                        float32               `gorm:"not null;check:price_checker,price > 0"`
	StartDate                    *time.Time            `gorm:"not null;check:trip_date_checker,start_date < end_date"`
	EndDate                      *time.Time            `gorm:"not null"`
	LastReservationDate          *time.Time            `gorm:"not null;check:last_reservation_date_checker,last_reservation_date < start_date"`
	DiveMasters                  []DiveMaster          `gorm:"many2many:dive_master_trips;"`
	ReservationRoomTypes         []ReservationRoomType `gorm:"foreignKey:TripID"`
	TripTemplateID               uint                  `gorm:"not null"`
	TripTemplate                 TripTemplate
	DiveSites                    []DiveSite
	HotelRoomTypeTripPrices      []HotelRoomTypeTripPrice
	LiveaboardRoomTypeTripPrices []LiveaboardRoomTypeTripPrice
	AgencyID                     uint `gorm:"not null"`
}

func (t *Trip) From(trip *pb.TripWithTemplate) {
	if t == nil {
		return
	}

	t.ID = uint(trip.Id)
	t.MaxGuest = trip.MaxGuest
	t.CurrentGuest = trip.CurentGuest
	t.Price = trip.Price
	if t.StartDate != nil {
		t.StartDate = trip.StartDate
	}
	if t.EndDate != nil {
		t.EndDate = trip.EndDate
	}
	if t.LastReservationDate != nil {
		t.LastReservationDate = trip.LastReservationDate
	}
	if trip.TripTemplate != nil {
		t.TripTemplateID = uint(trip.TripTemplate.Id)

		tripTemplate := TripTemplate{}
		tripTemplate.From(trip.TripTemplate)
		t.TripTemplate = tripTemplate
	}

	if trip.DiveMasters != nil && len(trip.DiveMasters) > 0 {
		t.DiveMasters = make([]DiveMaster, 0, len(trip.DiveMasters))

		for _, diveMaster := range trip.DiveMasters {
			dm := DiveMaster{}
			dm.From(diveMaster)
			t.DiveMasters = append(t.DiveMasters, dm)
		}
	}

	if trip.DiveMasters != nil && len(trip.DiveSites) > 0 {
		t.DiveSites = make([]DiveSite, 0, len(trip.DiveSites))

		for _, diveSite := range trip.DiveSites {
			ds := DiveSite{}
			ds.From(diveSite)
		}
	}

	if trip.TripRoomTypePrices != nil && len(trip.TripRoomTypePrices) > 0 && t.ID != 0 {
		switch t.TripTemplate.Type {
		case ONSHORE:
			t.HotelRoomTypeTripPrices = make([]HotelRoomTypeTripPrice, 0, len(trip.TripRoomTypePrices))

			for _, roomTypePrice := range trip.TripRoomTypePrices {
				rtp := HotelRoomTypeTripPrice{}
				rtp.From(roomTypePrice)
				rtp.TripID = uint64(t.ID)
				t.HotelRoomTypeTripPrices = append(t.HotelRoomTypeTripPrices, rtp)
			}
		case OFFSHORE:
			t.LiveaboardRoomTypeTripPrices = make([]LiveaboardRoomTypeTripPrice, 0, len(trip.TripRoomTypePrices))

			for _, roomTypePrice := range trip.TripRoomTypePrices {
				rtp := LiveaboardRoomTypeTripPrice{}
				rtp.From(roomTypePrice)
				rtp.TripID = uint64(t.ID)
				t.LiveaboardRoomTypeTripPrices = append(t.LiveaboardRoomTypeTripPrices, rtp)
			}
		}
	}
}

func (t *Trip) GetProto() *pb.TripWithTemplate {
	trip := pb.TripWithTemplate{
		Id:                  uint64(t.ID),
		TripTemplateId:      uint64(t.TripTemplateID),
		TripTemplate:        t.TripTemplate.GetProto(),
		MaxGuest:            t.MaxGuest,
		CurentGuest:         t.CurrentGuest,
		Price:               t.Price,
		StartDate:           t.StartDate,
		EndDate:             t.EndDate,
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
	gorm.Model
	Name        string `gorm:"not null"`
	Description string
	MinDepth    uint32
	MaxDepth    uint32
	TripID      uint `gorm:"not null"`
}

func (ds *DiveSite) From(diveSite *pb.DiveSite) {
	if ds == nil {
		return
	}

	ds.ID = uint(diveSite.GetId())
	ds.Name = diveSite.GetName()
	ds.Description = diveSite.GetDescription()
	ds.MinDepth = diveSite.GetMinDepth()
	ds.MaxDepth = diveSite.GetMaxDepth()
	ds.TripID = uint(diveSite.GetTripId())
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
	Payment           Payment
}

func (r *Reservation) GetProto() *pb.Reservation {
	reservation := pb.Reservation{
		Id:          uint64(r.ID),
		TripId:      uint64(r.TripID),
		DiverId:     uint64(r.DiverID),
		Price:       r.Price,
		TotalDivers: uint64(r.TotalDivers),
		CreatedAt:   &r.CreatedAt,
		UpdatedAt:   &r.UpdatedAt,
	}

	return &reservation
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
	gorm.Model
	Name        string `gorm:"unique;not null"`
	Description string `gorm:"not null"`
}

func (a *Amenity) GetProto() *pb.Amenity {
	amenity := pb.Amenity{
		Id:          uint64(a.ID),
		Name:        a.Name,
		Description: a.Description,
		CreatedAt:   &a.CreatedAt,
		UpdatedAt:   &a.UpdatedAt,
	}

	return &amenity
}

func (a *Amenity) From(amenity *pb.Amenity) {
	if amenity == nil {
		return
	}
	a.ID = uint(amenity.Id)
	a.Name = amenity.Name
	a.Description = amenity.Description
}

type Liveaboard struct {
	gorm.Model
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
	AgencyID      uint    `gorm:"not null"`
	Files         []*File `gorm:"-" json:"-"`
}

func (l *Liveaboard) From(liveaboard *pb.Liveaboard) {
	if l == nil {
		return
	}

	l.ID = uint(liveaboard.GetId())
	l.AddressID = uint(liveaboard.Address.GetId())
	l.Name = liveaboard.GetName()
	l.Description = liveaboard.GetDescription()
	l.Length = uint32(liveaboard.GetLength())
	l.Width = uint32(liveaboard.GetWidth())
	l.TotalCapacity = liveaboard.GetTotalCapacity()
	l.DiverRooms = liveaboard.GetDiverRooms()
	l.StaffRooms = liveaboard.GetStaffRooms()

	addr := Address{}
	addr.From(liveaboard.GetAddress())
	l.Address = addr

	if len(liveaboard.GetRoomTypes()) > 0 {
		l.RoomTypes = make([]RoomType, 0, len(liveaboard.GetRoomTypes()))

		for _, roomType := range liveaboard.GetRoomTypes() {
			rt := RoomType{}
			rt.From(roomType)
			l.RoomTypes = append(l.RoomTypes, rt)
		}
	}

	if len(liveaboard.GetImages()) > 0 {
		l.Files = make([]*File, 0, len(liveaboard.GetImages()))

		for _, doc := range liveaboard.GetImages() {
			file := File{}
			file.From(doc)
			l.Files = append(l.Files, &file)
		}

	}
}

type RoomType struct {
	gorm.Model
	Name         string         `gorm:"not null"`
	Description  string         `gorm:"not null"`
	MaxGuest     uint32         `gorm:"not null;check:max_guest_checker,max_guest > 0"`
	Price        float32        `gorm:"not null;check:price_checker,price > 0"`
	Quantity     uint32         `gorm:"not null;check:quantity_checker,quantity > 0"`
	Images       pq.StringArray `gorm:"type:text"`
	Amenities    []Amenity      `gorm:"many2many:room_amenity_link;"`
	LiveaboardID uint           `gorm:"default:null"`
	HotelID      uint           `gorm:"default:null"`
	Files        []*File        `gorm:"-" json:"-"`
}

func (rt *RoomType) From(roomType *pb.RoomType) {
	if rt == nil {
		return
	}

	rt.ID = uint(roomType.Id)
	rt.Name = roomType.Name
	rt.Description = roomType.Description
	rt.MaxGuest = roomType.MaxGuest
	rt.Price = roomType.Price
	rt.Quantity = roomType.Quantity

	if roomType.RoomImages != nil && len(roomType.RoomImages) > 0 {
		rt.Files = make([]*File, 0, len(roomType.RoomImages))
		for _, doc := range roomType.RoomImages {
			file := File{}
			file.From(doc)
			rt.Files = append(rt.Files, &file)
		}
	}

	if len(roomType.Amenities) > 0 {
		rt.Amenities = make([]Amenity, 0, len(roomType.Amenities))
		for _, amenity := range roomType.Amenities {
			am := Amenity{}
			am.From(amenity)
			rt.Amenities = append(rt.Amenities, am)
		}
	}
}

func (r *RoomType) GetProto() *pb.RoomType {
	roomType := pb.RoomType{
		Id:          uint64(r.ID),
		Name:        r.Name,
		Description: r.Description,
		MaxGuest:    r.MaxGuest,
		Price:       r.Price,
		Quantity:    r.Quantity,
		CreatedAt:   &r.CreatedAt,
		UpdatedAt:   &r.UpdatedAt,
	}
	if len(r.Amenities) > 0 {
		for _, amenity := range r.Amenities {
			roomType.Amenities = append(roomType.Amenities, amenity.GetProto())
		}
	}
	if len(r.Files) > 0 {
		roomType.RoomImages = make([]*pb.File, 0, len(r.Files))
		for _, f := range r.Files {
			file := pb.File{
				Filename: f.Filename,
				Link:     f.URL,
			}
			roomType.RoomImages = append(roomType.RoomImages, &file)
		}
	}

	return &roomType
}

type Hotel struct {
	gorm.Model
	Coordinate  Coordinate `gorm:"embedded"`
	AddressID   uint
	Address     Address
	Name        string `gorm:"not null"`
	Description string `gorm:"not null"`
	Stars       uint32
	Phone       string         `gorm:"not null"`
	Images      pq.StringArray `gorm:"type:text"`
	RoomTypes   []RoomType
	AgencyID    uint    `gorm:"not null"`
	Files       []*File `gorm:"-" json:"-"`
}

func (h *Hotel) From(hotel *pb.Hotel) {
	if h == nil {
		return
	}

	h.ID = uint(hotel.Id)
	h.Name = hotel.Name
	h.Description = hotel.Description
	h.Stars = hotel.Stars
	h.Phone = hotel.Phone

	if hotel.Address != nil {
		h.AddressID = uint(hotel.Address.Id)
		addr := Address{}
		addr.From(hotel.Address)
		h.Address = addr
	}

	if h.RoomTypes != nil && len(hotel.RoomTypes) > 0 {
		h.RoomTypes = make([]RoomType, 0, len(hotel.RoomTypes))

		for _, roomType := range hotel.RoomTypes {
			rt := RoomType{}
			rt.From(roomType)
			h.RoomTypes = append(h.RoomTypes, rt)
		}
	}

	if len(hotel.Images) > 0 {
		h.Files = make([]*File, 0, len(hotel.Images))

		for _, doc := range hotel.Images {
			file := File{}
			file.From(doc)
			h.Files = append(h.Files, &file)
		}

	}
}

type Payment struct {
	gorm.Model
	PaymentSlip   pq.StringArray `gorm:"type:text"`
	Verified      bool
	DiverID       uint
	Diver         Diver
	ReservationID uint
	File          *File `gorm:"-" json:"-"`
}

func (p *Payment) From(payment *pb.Payment) {
	if payment == nil {
		return
	}

	p.ID = uint(payment.Id)
	p.Verified = payment.Verified
	if payment.Diver != nil {
		p.DiverID = uint(payment.Diver.Id)
		p.Diver.From(payment.Diver)
	}
	p.ReservationID = uint(payment.ReservationId)

	if payment.PaymentSlip != nil {
		file := File{}
		file.From(payment.PaymentSlip)
		p.File = &file
	}
}

func (p *Payment) GetProto() *pb.Payment {
	payment := pb.Payment{
		Id:            uint64(p.ID),
		Verified:      p.Verified,
		Diver:         p.Diver.GetProto(),
		ReservationId: uint64(p.ReservationID),
		CreatedAt:     &p.CreatedAt,
		UpdatedAt:     &p.UpdatedAt,
	}

	if p.File != nil {
		file := pb.File{
			Filename: p.File.Filename,
			Link:     p.File.URL,
		}

		payment.PaymentSlip = &file
	}

	return &payment
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

func (rrt *ReservationRoomType) GetProto() *pb.ReservationRoom {
	return &pb.ReservationRoom{
		ReservationId: uint64(rrt.ReservationID),
		RoomTypeId:    uint64(rrt.RoomTypeID),
		TripId:        uint64(rrt.TripID),
		NoDivers:      uint32(rrt.DiverNo),
		Quantity:      uint32(rrt.Quantity),
	}
}

// This type will not be a table in the database
type ReportTrip struct {
	Trip           Trip
	TripTemplateID uint64
	PlacesLeft     uint32
	Divers         []*Diver
	Reservations   []*Reservation
}

func (rt *ReportTrip) GetProto() *pb.ReportTrip {
	reportTrip := pb.ReportTrip{
		Id:                  uint64(rt.Trip.ID),
		TripTemplateId:      uint64(rt.Trip.TripTemplate.ID),
		TripTemplate:        rt.Trip.TripTemplate.GetProto(),
		MaxGuest:            rt.Trip.MaxGuest,
		CurentGuest:         rt.Trip.CurrentGuest,
		PlacesLeft:          rt.PlacesLeft,
		Price:               rt.Trip.Price,
		Divers:              []*pb.Diver{},
		StartDate:           rt.Trip.StartDate,
		EndDate:             rt.Trip.EndDate,
		LastReservationDate: rt.Trip.LastReservationDate,
		CreatedAt:           &rt.Trip.CreatedAt,
		UpdatedAt:           &rt.Trip.UpdatedAt,
	}

	if len(rt.Reservations) > 0 {
		reportTrip.Reservations = make([]*pb.Reservation, 0, len(rt.Reservations))
		reportTrip.Divers = make([]*pb.Diver, 0, len(rt.Divers))

		for _, r := range rt.Reservations {
			reportTrip.Reservations = append(reportTrip.Reservations, r.GetProto())
		}

		for _, d := range rt.Divers {
			reportTrip.Divers = append(reportTrip.Divers, d.GetProto())
		}
	}

	return &reportTrip
}

// RoomTypeTripPrice for ONSHORE and OFFSHORE trips
type RoomTypeTripPrice interface {
	Type() TripType
}

type HotelRoomTypeTripPrice struct {
	HotelID    uint64
	Hotel      Hotel
	RoomTypeID uint64 `gorm:"uniqueIndex:hotel_room_type_trip_index"`
	RoomType   RoomType
	TripID     uint64 `gorm:"uniqueIndex:hotel_room_type_trip_index"`
	Price      float32
}

func (h *HotelRoomTypeTripPrice) Type() TripType {
	return ONSHORE
}

func (l *HotelRoomTypeTripPrice) From(link *pb.RoomTypeTripPrice) {
	if l == nil {
		return
	}

	l.HotelID = link.GetHotelId()
	l.RoomTypeID = link.GetRoomTypeId()
	l.Price = link.GetPrice()
}

func (l *HotelRoomTypeTripPrice) GetProto() *pb.RoomTypeTripPrice {
	return &pb.RoomTypeTripPrice{
		RoomTypeId: l.RoomTypeID,
		Price:      l.Price,
	}
}

type LiveaboardRoomTypeTripPrice struct {
	LiveaboardID uint64
	Liveaboard   Liveaboard
	RoomTypeID   uint64 `gorm:"uniqueIndex:liveaboard_room_type_trip_index"`
	RoomType     RoomType
	TripID       uint64 `gorm:"uniqueIndex:liveaboard_room_type_trip_index"`
	Price        float32
}

func (l *LiveaboardRoomTypeTripPrice) Type() TripType {
	return OFFSHORE
}

func (l *LiveaboardRoomTypeTripPrice) From(link *pb.RoomTypeTripPrice) {
	if l == nil {
		return
	}

	l.LiveaboardID = link.GetLiveaboardId()
	l.RoomTypeID = link.GetRoomTypeId()
	l.Price = link.GetPrice()
}

func (l *LiveaboardRoomTypeTripPrice) GetProto() *pb.RoomTypeTripPrice {
	return &pb.RoomTypeTripPrice{
		RoomTypeId: l.RoomTypeID,
		Price:      l.Price,
	}
}
