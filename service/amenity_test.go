package service_test

import (
	"context"
	"testing"
	"time"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/service"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type AmenitySuite struct {
	suite.Suite
	amenityService service.AmenityService
	repository     *repo.Repo
	db             *gorm.DB
}

func (suite *AmenitySuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func (suite *AmenitySuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:"), &gorm.Config{})
	suite.Nil(err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	suite.Nil(err)

	suite.repository = repo.NewRepo(suite.db)
	suite.amenityService = service.NewAmenityService(suite.repository)
}

func TestAmenitySuite(t *testing.T) {
	suite.Run(t, new(AmenitySuite))
}

func (suite *AmenitySuite) TestAmenityListAmenitiesSuccessful() {
	//Arrange
	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()
	amenities := []*model.Amenity{
		{
			Name:        "1",
			Description: "",
		},
		{
			Name:        "2",
			Description: "",
		},
		{
			Name:        "3",
			Description: "",
		},
		{
			Name:        "4",
			Description: "",
		},
		{
			Name:        "5",
			Description: "",
		},
	}
	for _, a := range amenities {
		suite.db.Create(a)
	}

	//Act
	amenities, err := suite.amenityService.ListAmenities(ctx, 25, 0)

	//Assert
	suite.Nil(err)
	suite.Equal(5, len(amenities))
}
