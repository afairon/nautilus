package repo

import (
	"context"
	"testing"
	"time"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type AmenityTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo AmenityRepository
}

func (suite *AmenityTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewAmenityRepository(suite.db)
}

func (suite *AmenityTestSuite) TestListAmenities() {
	amenities := []*model.Amenity{
		{Name: "WiFi", Description: "Fast Internet Connection"},
		{Name: "Terrace", Description: "Beautiful terrace"},
	}
	suite.db.Create(&amenities)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	ret, err := suite.repo.ListAmenities(ctx, 10, 0)
	suite.NoError(err)
	suite.Equal(len(amenities), len(ret))
	suite.True(
		ret[0].Name == amenities[0].Name && ret[0].Description == amenities[0].Description &&
			ret[1].Name == amenities[1].Name && ret[1].Description == amenities[1].Description,
	)
}

func (suite *AmenityTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteAmenityRepo(t *testing.T) {
	suite.Run(t, new(AmenityTestSuite))
}
