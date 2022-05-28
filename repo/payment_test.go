package repo

import (
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type PaymentTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo PaymentRepository
}

func (suite *PaymentTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewPaymentRepository(suite.db)
}

func (suite *PaymentTestSuite) TestCreate() {}

func (suite *PaymentTestSuite) TestGetPaymentByDiverAndReservation() {}

func (suite *PaymentTestSuite) TestUpdatePaymentSlip() {}

func (suite *PaymentTestSuite) TestUpdatePaymentStatus() {}

func (suite *PaymentTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuitePaymentRepo(t *testing.T) {
	suite.Run(t, new(PaymentTestSuite))
}
