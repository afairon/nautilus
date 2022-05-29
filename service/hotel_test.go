package service_test

import (
	"context"
	"fmt"
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

type HotelSuite struct {
	suite.Suite
	agencyService  service.AgencyService
	accountService service.AccountService
	hotelService   service.HotelService
	repository     *repo.Repo
	db             *gorm.DB
	agency         *model.Agency
	session        session.Session
	mailer         mail.Mailer
}

func (suite *HotelSuite) SetupTest() {
	fmt.Println("Set up test")
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cached=share"), &gorm.Config{})
	suite.Nil(err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{},
		&model.DiveMasterTrip{}, &model.ReservationRoomType{})
	suite.Nil(err)

	err = suite.db.SetupJoinTable(&model.Trip{}, "DiveMasters", &model.DiveMasterTrip{})
	suite.Nil(err)

	err = suite.db.SetupJoinTable(&model.Reservation{}, "RoomTypes", &model.ReservationRoomType{})
	suite.Nil(err)

	suite.repository = repo.NewRepo(suite.db)
	suite.session = session.NewJWTManager("secret", 1*time.Hour)
	suite.mailer = mail.NewDummy()

	suite.agency = &model.Agency{
		AccountNumber: "123",
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

func (suite *HotelSuite) TearDownTest() {
	fmt.Println("Tearing down")
	db, _ := suite.db.DB()
	db.Close()
}

func TestHotelSuite(t *testing.T) {
	suite.Run(t, new(HotelSuite))
}

func (suite *HotelSuite) TestHotelGetHotelSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	suite.hotelService = service.NewHotelService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	hotel := &pb.Hotel{
		Name:  "Testing",
		Stars: 5,
		Phone: "0923613883",
		RoomTypes: []*pb.RoomType{
			{
				Id:          0,
				Name:        "Single",
				Description: "",
				MaxGuest:    1,
				Price:       100,
				Quantity:    1,
			},
		},
	}

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)

	suite.agencyService.AddHotel(ctx, hotel)

	//Act
	record, err := suite.hotelService.GetHotel(ctx, 1)

	//Assert
	suite.Nil(err)
	suite.Equal(hotel.Name, record.Name)
}
