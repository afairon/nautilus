package repo

import (
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type ReservationRoomTypeTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo ReservationRoomTypeRepository
}

func (suite *ReservationRoomTypeTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewReservationRoomTypeRepository(suite.db)
}

func (suite *ReservationRoomTypeTestSuite) TestListReservationRoomTypesByRoomTypeAndTrip() {}

func (suite *ReservationRoomTypeTestSuite) TestListReservationRoomTypesByReservation() {}

func (suite *ReservationRoomTypeTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteReservationRoomTypeRepo(t *testing.T) {
	suite.Run(t, new(ReservationRoomTypeTestSuite))
}
