package service_test

import (
	"context"
	"testing"
	"time"

	"github.com/afairon/nautilus/internal/mail"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/service"
	"github.com/afairon/nautilus/session"
	"github.com/stretchr/testify/mock"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type BoatSuite struct {
	suite.Suite
	agencyService  service.AgencyService
	accountService service.AccountService
	boatService    service.BoatService
	repository     *repo.Repo
	db             *gorm.DB
	agency         *model.Agency
	session        session.Session
	mailer         mail.Mailer
}

func (suite *BoatSuite) SetupTest() {
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
	suite.session = session.NewJWTManager("secret", 1*time.Hour)
	suite.mailer = mail.NewDummy()

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

func (suite *BoatSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestBoatSuite(t *testing.T) {
	suite.Run(t, new(BoatSuite))
}

func (suite *BoatSuite) TestBoatGetBoatSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Once()
	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	suite.boatService = service.NewBoatService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)

	boat := &pb.Boat{
		Name:          "Boat Name",
		TotalCapacity: 20,
		DiverCapacity: 10,
		StaffCapacity: 10,
		Images: []*pb.File{{
			Filename: "boat.jpg",
			File:     []byte{1, 2, 3},
		}},
	}
	suite.agencyService.AddDivingBoat(ctx, boat)

	//Act
	record, err := suite.boatService.GetBoat(ctx, 1)

	//Assert
	suite.Nil(err)
	suite.Equal(boat.Name, record.Name)
}
