package repo

import (
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type TripTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo TripRepository
}

func (suite *TripTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewTripRepository(suite.db)
}

func (suite *TripTestSuite) TestGet() {}

func (suite *TripTestSuite) TestUpdateTrip() {}

func (suite *TripTestSuite) TestDeleteTrip() {}

func (suite *TripTestSuite) TestListTripsByAgency() {}

func (suite *TripTestSuite) TestListTripsWithTemplatesByAgency() {}

func (suite *TripTestSuite) TestListTrips() {}

func (suite *TripTestSuite) TestListUnfullTripsByAgency() {}

func (suite *TripTestSuite) TestListEndedTripsOverPeriod() {}

func (suite *TripTestSuite) TestListIncomingTripsOverPeriod() {}

func (suite *TripTestSuite) TestSearchTrips() {}

func (suite *TripTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteTripRepo(t *testing.T) {
	suite.Run(t, new(TripTestSuite))
}
