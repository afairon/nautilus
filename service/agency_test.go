package service_test

import (
	"context"
	"fmt"
	"testing"
	"time"

	"github.com/afairon/nautilus/internal/media/fs"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/service"
	"github.com/afairon/nautilus/session"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type AgencySuite struct {
	suite.Suite
	agencyService  service.AgencyService
	accountService service.AccountService
	db             *gorm.DB
	agency         *model.Agency
	session        session.Session
}

func (suite *AgencySuite) SetupSuite() {
	fmt.Println("Set up suite")
}

func (suite *AgencySuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	suite.Nil(err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	suite.Nil(err)

	repository := repo.NewRepo(suite.db)
	suite.session = session.NewJWTManager("secret", 1*time.Hour)
	media, err := fs.NewStore("test-fs", "")
	suite.Nil(err)

	suite.agencyService = service.NewAgencyService(repository, media)
	suite.accountService = service.NewAccountService(repository, suite.session, media)
	suite.agency = &model.Agency{
		Coordinate: &model.Coordinate{
			Lat:  50.0,
			Long: 0.0,
		},
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Account: &model.Account{
			Email:    "agency@agency.com",
			Username: "agency1",
			Password: "P@ssword123",
			Type:     model.AGENCY,
		},
	}
}

func TestAgencySuite(t *testing.T) {
	suite.Run(t, new(AgencySuite))
}

func (suite *AgencySuite) TestAgencyAddDiveMasterSuccessful() {
	//Arrange
	var oldCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	err := suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	suite.NoError(err)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	diveMaster := &pb.DiveMaster{
		Id:        0,
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Level:     0,
		Documents: []*pb.File{
			{
				Filename: "testing.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}

	//Act
	err = suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	var newCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
	suite.NoError(err)
}

func (suite *AgencySuite) TestAgencyAddDiveMasterFailRetrievingAccountFromContext() {
	//Arrange
	var oldCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	err := suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	suite.NoError(err)
	diveMaster := &pb.DiveMaster{}

	//Act
	err = suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	var newCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
	suite.Error(err)
}
