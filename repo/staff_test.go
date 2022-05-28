package repo

import (
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type StaffTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo StaffRepository
}

func (suite *StaffTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewStaffRepository(suite.db)
}

func (suite *StaffTestSuite) TestCreate() {}

func (suite *StaffTestSuite) TestGet() {}

func (suite *StaffTestSuite) TestUpdateStaff() {}

func (suite *StaffTestSuite) TestDeleteStaff() {}

func (suite *StaffTestSuite) TestListStaffsByAgency() {}

func (suite *StaffTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteStaffRepo(t *testing.T) {
	suite.Run(t, new(StaffTestSuite))
}
