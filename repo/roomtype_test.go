package repo

import (
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type RoomTypeTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo RoomTypeRepository
}

func (suite *RoomTypeTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewRoomTypeRepository(suite.db)
}

func (suite *RoomTypeTestSuite) TestGet() {}

func (suite *RoomTypeTestSuite) TestListRoomTypesByHotelID() {}

func (suite *RoomTypeTestSuite) TestListRoomTypesByLiveaboardID() {}

func (suite *RoomTypeTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteRoomTypeRepo(t *testing.T) {
	suite.Run(t, new(RoomTypeTestSuite))
}
