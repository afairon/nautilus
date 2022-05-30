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

	suite.db, err = gorm.Open(sqlite.Open("file::memory:"), &gorm.Config{})
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

func (suite *PaymentSuite) TestPaymentMakePaymentSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	suite.reservationService = service.NewReservationService(suite.repository)
	suite.paymentService = service.NewPaymentService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	lastReservationDate := time.Now().AddDate(0, 0, 5)
	startDate := lastReservationDate.AddDate(0, 0, 1)
	endDate := startDate.AddDate(0, 0, 1)

	trip := &model.Trip{
		Name:                "Thailand",
		MaxGuest:            50,
		StartDate:           &startDate,
		EndDate:             &endDate,
		LastReservationDate: &lastReservationDate,
		Schedule:            "schedule",
		DiveMasters:         []model.DiveMaster{},
		TripTemplate: model.TripTemplate{
			Name:        "",
			Description: "",
			Type:        model.ONSHORE,
			HotelID:     1,
			BoatID:      1,
			Files: []*model.File{
				{
					Filename: "image.jpg",
					Buffer:   []byte{1, 2, 3},
					Private:  false,
				},
			},
		},
		DiveSites: []model.DiveSite{},
	}

	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
		{
			HotelID:    1,
			RoomTypeID: 1,
			Price:      500,
		},
	}

	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
	for _, roomTypePrice := range hotelRoomTypePrices {
		roomTypePrices = append(roomTypePrices, &roomTypePrice)
	}

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
	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

	suite.accountService.CreateDiverAccount(ctx, suite.diver)
	token, _ = suite.accountService.Login(ctx, "janedoe@example.com", "P@ssword123")
	s, _ = suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)

	reservation := &pb.Reservation{
		TripId:      1,
		DiverId:     1,
		Price:       500,
		TotalDivers: 1,
		Rooms: []*pb.Reservation_Room{
			{
				RoomTypeId: 1,
				NoDivers:   1,
				Quantity:   1,
			},
		},
	}

	suite.reservationService.CreateReservation(ctx, reservation)

	payment := &model.Payment{
		DiverID:       1,
		ReservationID: 1,
		File: &model.File{
			Filename: "paymentSlip.jpg",
			Buffer:   []byte{1, 2, 3},
		},
	}

	//Act
	err := suite.paymentService.MakePayment(ctx, payment)

	//Assert
	suite.Nil(err)

}

func (suite *PaymentSuite) TestPaymentUpdatePaymentSlipSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	suite.reservationService = service.NewReservationService(suite.repository)
	suite.paymentService = service.NewPaymentService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	lastReservationDate := time.Now().AddDate(0, 0, 5)
	startDate := lastReservationDate.AddDate(0, 0, 1)
	endDate := startDate.AddDate(0, 0, 1)

	trip := &model.Trip{
		Name:                "Thailand",
		MaxGuest:            50,
		StartDate:           &startDate,
		EndDate:             &endDate,
		LastReservationDate: &lastReservationDate,
		Schedule:            "schedule",
		DiveMasters:         []model.DiveMaster{},
		TripTemplate: model.TripTemplate{
			Name:        "",
			Description: "",
			Type:        model.ONSHORE,
			HotelID:     1,
			BoatID:      1,
			Files: []*model.File{
				{
					Filename: "image.jpg",
					Buffer:   []byte{1, 2, 3},
					Private:  false,
				},
			},
		},
		DiveSites: []model.DiveSite{},
	}

	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
		{
			HotelID:    1,
			RoomTypeID: 1,
			Price:      500,
		},
	}

	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
	for _, roomTypePrice := range hotelRoomTypePrices {
		roomTypePrices = append(roomTypePrices, &roomTypePrice)
	}

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
	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

	suite.accountService.CreateDiverAccount(ctx, suite.diver)
	token, _ = suite.accountService.Login(ctx, "janedoe@example.com", "P@ssword123")
	s, _ = suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)

	reservation := &pb.Reservation{
		TripId:      1,
		DiverId:     1,
		Price:       500,
		TotalDivers: 1,
		Rooms: []*pb.Reservation_Room{
			{
				RoomTypeId: 1,
				NoDivers:   1,
				Quantity:   1,
			},
		},
	}

	suite.reservationService.CreateReservation(ctx, reservation)

	payment := &model.Payment{
		DiverID:       1,
		ReservationID: 1,
		File: &model.File{
			Filename: "paymentSlip.jpg",
			Buffer:   []byte{1, 2, 3},
		},
	}

	suite.paymentService.MakePayment(ctx, payment)
	payment.File.Filename = "paymentSlip2.jpg"
	payment.File.Buffer = []byte{7, 8, 9}
	med = media.NewStoreMock()
	med.On("Put", "paymentSlip2.jpg", mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id2", nil)
	suite.paymentService = service.NewPaymentService(suite.repository, med)

	//Act
	err := suite.paymentService.UpdatePaymentSlip(ctx, payment)

	//Assert
	var updatedPayment model.Payment
	suite.db.First(&updatedPayment, 1)
	suite.Nil(err)
	suite.Equal("id2", updatedPayment.PaymentSlip[0])
}
