package service_test

import (
	"context"
	"errors"
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

type AgencySuite struct {
	suite.Suite
	agencyService  service.AgencyService
	accountService service.AccountService
	repository     *repo.Repo
	db             *gorm.DB
	agency         *model.Agency
	session        session.Session
	mailer         mail.Mailer
}

func (suite *AgencySuite) SetupSuite() {
	fmt.Println("Set up suite")
}

func (suite *AgencySuite) SetupTest() {
	fmt.Println("Set up test")
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

func (suite *AgencySuite) TearDownTest() {
	fmt.Println("Tearing down")
	suite.repository = nil
	suite.db = nil
}

func TestAgencySuite(t *testing.T) {
	suite.Run(t, new(AgencySuite))
}

func (suite *AgencySuite) TestAgencyAddDiveMasterSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Once()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
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
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	var newCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
	suite.NoError(err)
}

func (suite *AgencySuite) TestAgencyAddDiveMasterMediaFail() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("", errors.New(""))
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
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
			{
				Filename: "testing.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}

	//Act
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	var newCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&newCount)
	suite.Equal(oldCount, newCount)
	suite.Error(err)
}

func (suite *AgencySuite) TestAgencyAddDiveMasterFailRetrievingAccountFromContext() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)

	var oldCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	diveMaster := &pb.DiveMaster{}

	//Act
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	var newCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&newCount)
	suite.Equal(oldCount, newCount)
	suite.Error(err)
}

func (suite *AgencySuite) TestAgencyAddDiveMasterFailSettingDiveMaster() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	diveMaster := &pb.DiveMaster{}

	//Act
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	var newCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&newCount)
	suite.Equal(oldCount, newCount)
	suite.Error(err)
}

func (suite *AgencySuite) TestAgencyAddHotelSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Hotel{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	hotel := &pb.Hotel{
		Name:        "Hotel",
		Description: "",
		Stars:       5,
		Phone:       "0923613883",
		Address:     &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
		Images:      []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
		RoomTypes: []*pb.RoomType{{
			Id:          0,
			Name:        "single",
			Description: "",
			MaxGuest:    5,
			Quantity:    5,
			RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
			Amenities:   []*pb.Amenity{{Id: 1}},
		}},
	}

	//Act
	err := suite.agencyService.AddHotel(ctx, hotel)

	//Assert
	var newCount int64
	suite.NoError(err)
	suite.db.Model(&model.Hotel{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencySuite) TestAgencyAddHotelFailRetrievingAccountFromContext() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Hotel{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	hotel := &pb.Hotel{
		Name:        "Hotel",
		Description: "",
		Stars:       5,
		Phone:       "0923613883",
		Address:     &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
		Images:      []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
		RoomTypes: []*pb.RoomType{{
			Id:          0,
			Name:        "single",
			Description: "",
			MaxGuest:    5,
			Quantity:    5,
			RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
			Amenities:   []*pb.Amenity{{Id: 1}},
		}},
	}

	//Act
	err := suite.agencyService.AddHotel(ctx, hotel)

	//Assert
	var newCount int64
	suite.Error(err)
	suite.db.Model(&model.Hotel{}).Count(&newCount)
	suite.Equal(oldCount, newCount)
}

func (suite *AgencySuite) TestAgencyAddStaffSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Staff{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	staff := &pb.Staff{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Position:  "President",
		Gender:    1,
	}

	//Act
	err := suite.agencyService.AddStaff(ctx, staff)

	//Assert
	var newCount int64
	suite.NoError(err)
	suite.db.Model(&model.Staff{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencySuite) TestAgencyAddStaffFailRetrievingAccountFromContext() {
	//Arrange
	med := media.NewStoreMock()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Staff{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	staff := &pb.Staff{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Position:  "President",
		Gender:    1,
	}

	//Act
	err := suite.agencyService.AddStaff(ctx, staff)

	//Assert
	var newCount int64
	suite.Error(err)
	suite.db.Model(&model.Staff{}).Count(&newCount)
	suite.Equal(oldCount, newCount)
}

func (suite *AgencySuite) TestAgencyAddTripOnshoreSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Trip{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	lastReservationDate := time.Now()
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

	//Act
	err := suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

	//Assert
	var newCount int64
	suite.NoError(err)
	suite.db.Model(&model.Trip{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencySuite) TestAgencyAddTripOffshoreSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Trip{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	lastReservationDate := time.Now()
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
			Type:        model.OFFSHORE,
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

	hotelRoomTypePrices := []model.LiveaboardRoomTypeTripPrice{
		{
			LiveaboardID: 1,
			RoomTypeID:   1,
			Price:        500,
		},
	}

	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
	for _, roomTypePrice := range hotelRoomTypePrices {
		roomTypePrices = append(roomTypePrices, &roomTypePrice)
	}

	//Act
	err := suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

	//Assert
	var newCount int64
	suite.NoError(err)
	suite.db.Model(&model.Trip{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencySuite) TestAgencyAddDivingBoatSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Once()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Boat{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	boat := &pb.Boat{
		Name:        "",
		Description: "",
		Images: []*pb.File{
			{
				Filename: "boat.jpg",
				File:     []byte{1, 2, 3},
			},
		},
		TotalCapacity: 20,
		DiverCapacity: 10,
		StaffCapacity: 10,
	}

	//Act
	err := suite.agencyService.AddDivingBoat(ctx, boat)

	//Assert
	var newCount int64
	suite.NoError(err)
	suite.db.Model(&model.Boat{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencySuite) TestAgencyAddLiveaboardSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Liveaboard{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	liveaboard := &pb.Liveaboard{
		Name:          "",
		Description:   "",
		Length:        2,
		Width:         3,
		TotalCapacity: 2,
		DiverRooms:    2,
		StaffRooms:    3,
		Address:       &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
		Images:        []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
		RoomTypes: []*pb.RoomType{{
			Id:          0,
			Name:        "single",
			Description: "",
			MaxGuest:    5,
			Quantity:    5,
			RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
			Amenities:   []*pb.Amenity{{Id: 1}},
		}},
	}

	//Act
	err := suite.agencyService.AddLiveaboard(ctx, liveaboard)

	//Assert
	var newCount int64
	suite.NoError(err)
	suite.db.Model(&model.Liveaboard{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencySuite) TestAgencyAddLiveaboardFailRetrievingAccountFromContext() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)
	var oldCount int64
	suite.db.Model(&model.Liveaboard{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	liveaboard := &pb.Liveaboard{
		Name:          "",
		Description:   "",
		Length:        2,
		Width:         3,
		TotalCapacity: 2,
		DiverRooms:    2,
		StaffRooms:    3,
		Address:       &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
		Images:        []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
		RoomTypes: []*pb.RoomType{{
			Id:          0,
			Name:        "single",
			Description: "",
			MaxGuest:    5,
			Quantity:    5,
			RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
			Amenities:   []*pb.Amenity{{Id: 1}},
		}},
	}

	//Act
	err := suite.agencyService.AddLiveaboard(ctx, liveaboard)

	//Assert
	var newCount int64
	suite.Error(err)
	suite.db.Model(&model.Liveaboard{}).Count(&newCount)
	suite.Equal(oldCount, newCount)
}

func (suite *AgencySuite) TestAgencyListBoatsSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	boat := &pb.Boat{
		Images: []*pb.File{
			{
				Filename: "boat.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}
	suite.agencyService.AddDivingBoat(ctx, boat)
	suite.agencyService.AddDivingBoat(ctx, boat)

	//Act
	boats, err := suite.agencyService.ListBoats(ctx, 25, 0)

	//Assert
	suite.NoError(err)
	suite.Equal(2, len(boats))
}

func (suite *AgencySuite) TestAgencyListDiveMastersSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	diveMaster := &pb.DiveMaster{
		FirstName: "Random",
		LastName:  "Random",
		Documents: []*pb.File{
			{
				Filename: "boat.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}
	suite.agencyService.AddDiveMaster(ctx, diveMaster)
	suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Act
	diveMasters, err := suite.agencyService.ListDiveMasters(ctx, 25, 0)

	//Assert
	suite.NoError(err)
	suite.Equal(2, len(diveMasters))
}

func (suite *AgencySuite) TestAgencyListDiveMastersNoDocumentsSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	diveMaster := &pb.DiveMaster{
		FirstName: "Random",
		LastName:  "Random",
	}
	suite.agencyService.AddDiveMaster(ctx, diveMaster)
	suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Act
	diveMasters, err := suite.agencyService.ListDiveMasters(ctx, 25, 0)

	//Assert
	suite.NoError(err)
	suite.Equal(2, len(diveMasters))
}

func (suite *AgencySuite) TestAgencyListHotelSuccessful() {
	//Arrange
	med := media.NewStoreMock()
	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
	suite.agencyService = service.NewAgencyService(suite.repository, med)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)
	hotel := &pb.Hotel{
		Images: []*pb.File{
			{
				Filename: "random.jpg",
				File:     []byte{1, 2, 3},
			},
		},
		RoomTypes: []*pb.RoomType{
			{
				RoomImages: []*pb.File{
					{
						Filename: "room.jpg",
						File:     []byte{1, 2, 3},
					},
				},
				Quantity: 2,
				MaxGuest: 2,
			},
		},
	}
	suite.agencyService.AddHotel(ctx, hotel)
	suite.agencyService.AddHotel(ctx, hotel)

	//Act
	diveMasters, err := suite.agencyService.ListHotels(ctx, 25, 0)

	//Assert
	suite.NoError(err)
	suite.Equal(2, len(diveMasters))
}
