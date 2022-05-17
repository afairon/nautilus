package repo

import (
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type AccountTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo AccountRepository
}

func (suite *AccountTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewAccountRepository(suite.db)
}

func (suite *AccountTestSuite) TestCreate() {}

func (suite *AccountTestSuite) TestUpdate() {}

func (suite *AccountTestSuite) TestFindByID() {}

func (suite *AccountTestSuite) TestFindByEmail() {}

func (suite *AccountTestSuite) TestFindByUsername() {}

func (suite *AccountTestSuite) TestFindAdminByAccountID() {}

func (suite *AccountTestSuite) TestFindAgencyByAccountID() {}

func (suite *AccountTestSuite) TestFindDiverByAccountID() {}

func (suite *AccountTestSuite) TestList() {}

func (suite *AccountTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteAccountRepo(t *testing.T) {
	suite.Run(t, new(AccountTestSuite))
}
