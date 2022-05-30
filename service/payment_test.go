package service_test

import (
	"fmt"
	"testing"
	"time"

	"github.com/afairon/nautilus/internal/mail"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/service"
	"github.com/afairon/nautilus/session"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type PaymentSuite struct {
	suite.Suite
	agencyService      service.AgencyService
	accountService     service.AccountService
	diverService       service.DiverService
	reservationService service.ReservationService
	paymentService     service.PaymentService
	repository         *repo.Repo
	db                 *gorm.DB
	agency             *model.Agency
	diver              *model.Diver
	session            session.Session
	mailer             mail.Mailer
}

func (suite *PaymentSuite) SetupTest() {
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

	suite.diver = &model.Diver{
		Account: &model.Account{
			Email:    "janedoe@example.com",
			Username: "janedoe",
			Password: "P@ssword123",
			Type:     model.DIVER,
		},
		Level:     model.RESCUE,
		FirstName: "Jane",
		LastName:  "Doe",
		Phone:     "+32111111111",
		BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
	}
}

func (suite *PaymentSuite) TearDownTest() {
	fmt.Println("Tearing down")
	db, _ := suite.db.DB()
	db.Close()
}

func TestPaymentSuite(t *testing.T) {
	suite.Run(t, new(PaymentSuite))
}

func (suite *PaymentSuite) TestPaymentMakePaymen() {

}
