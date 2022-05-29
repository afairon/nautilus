package service_test

import (
	"context"
	"errors"
	"testing"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/service"
	"github.com/afairon/nautilus/session"
	"github.com/stretchr/testify/mock"
	"github.com/stretchr/testify/suite"
	"gorm.io/gorm"
)

type AgencySuite struct {
	suite.Suite
	agencyService    service.AgencyService
	agencyRepository repo.AgencyRepositoryMock
	media            *media.StoreMock
}

func (suite *AgencySuite) SetupTest() {
	suite.agencyRepository = repo.AgencyRepositoryMock{}
	suite.media = &media.StoreMock{}
	suite.agencyService = service.NewAgencyService(&repo.Repo{
		Queries: &repo.Queries{
			Agency: &suite.agencyRepository,
		},
	}, suite.media)
}

func TestAgencySuite(t *testing.T) {
	suite.Run(t, new(AgencySuite))
}

func (suite *AgencySuite) TestAgencyAddDiveMasterSuccessful() {
	//Arrange
	suite.media.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Once()
	agency := model.Agency{
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
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &agency)
	diveMaster := &pb.DiveMaster{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Level:     0,
		Documents: []*pb.File{
			{
				Filename: "diveMaster.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}
	expectedArgument := &model.DiveMaster{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Level:     0,
		Documents: []string{"id"},
	}
	suite.agencyRepository.On("CreateDiveMaster", ctx, expectedArgument).Return(nil, nil)

	//Act
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	suite.NoError(err)
	suite.agencyRepository.AssertExpectations(suite.T())
}

func (suite *AgencySuite) TestAgencyAddDiveMasterMediaFail() {
	//Arrange
	suite.media.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("", errors.New("")).Once()
	agency := model.Agency{
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
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &agency)
	diveMaster := &pb.DiveMaster{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Level:     0,
		Documents: []*pb.File{
			{
				Filename: "diveMaster.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}

	//Act
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	suite.Error(err)
	suite.agencyRepository.AssertExpectations(suite.T())
	suite.media.AssertExpectations(suite.T())
}

func (suite *AgencySuite) TestAgencyAddDiveMasterFailRetrievingAccountFromContext() {
	//Arrange
	ctx := context.Background()
	diveMaster := &pb.DiveMaster{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Level:     0,
		Documents: []*pb.File{
			{
				Filename: "diveMaster.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}

	//Act
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	suite.Error(err)
}

func (suite *AgencySuite) TestAgencyAddDiveMasterFailSettingDiveMaster() {
	//Arrange
	//Arrange
	agency := model.Agency{
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
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &agency)
	diveMaster := &pb.DiveMaster{
		FirstName: "",
		LastName:  "Shirogane",
		Level:     0,
		Documents: []*pb.File{
			{
				Filename: "diveMaster.jpg",
				File:     []byte{1, 2, 3},
			},
		},
	}

	//Act
	err := suite.agencyService.AddDiveMaster(ctx, diveMaster)

	//Assert
	suite.Error(err)
}

func (suite *AgencySuite) TestAgencyAddHotelSuccessful() {
	//Arrange
	suite.media.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	agency := model.Agency{
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
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &agency)
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
	h := model.Hotel{
		Name:  "Hotel",
		Stars: 5,
		Phone: "0923613883",
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Images: []string{"id"},
		RoomTypes: []*model.RoomType{
			{
				Name:        "single",
				Description: "",
				MaxGuest:    5,
				Quantity:    5,
				Images:      []string{"id"},
				Amenities: []model.Amenity{
					{
						Model: gorm.Model{ID: 1},
					},
				},
			},
		},
	}
	suite.agencyRepository.On("CreateHotel", ctx, &h).Return(nil, nil)

	//Act
	err := suite.agencyService.AddHotel(ctx, hotel)

	//Assert
	suite.NoError(err)
	suite.agencyRepository.AssertExpectations(suite.T())
}

func (suite *AgencySuite) TestAgencyAddStaffSuccessful() {
	//Arrange
	suite.media.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
	agency := model.Agency{
		Model: gorm.Model{ID: 1},
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
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &agency)

	staff := &pb.Staff{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Position:  "President",
		Gender:    1,
	}
	expectedStaff := model.Staff{
		FirstName: "Miyuki",
		LastName:  "Shirogane",
		Position:  "President",
		Gender:    1,
		AgencyID:  agency.ID,
	}
	suite.agencyRepository.On("CreateStaff", ctx, &expectedStaff).Return(nil, nil)

	//Act
	err := suite.agencyService.AddStaff(ctx, staff)

	//Assert
	suite.NoError(err)
	suite.agencyRepository.AssertExpectations(suite.T())
}

// func (suite *AgencySuite) TestAgencyAddStaffFailRetrievingAccountFromContext() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Staff{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	staff := &pb.Staff{
// 		FirstName: "Miyuki",
// 		LastName:  "Shirogane",
// 		Position:  "President",
// 		Gender:    1,
// 	}

// 	//Act
// 	err := suite.agencyService.AddStaff(ctx, staff)

// 	//Assert
// 	var newCount int64
// 	suite.Error(err)
// 	suite.db.Model(&model.Staff{}).Count(&newCount)
// 	suite.Equal(oldCount, newCount)
// }

// func (suite *AgencySuite) TestAgencyAddTripOnshoreSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Trip{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)

// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	//Act
// 	err := suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Assert
// 	var newCount int64
// 	suite.NoError(err)
// 	suite.db.Model(&model.Trip{}).Count(&newCount)
// 	suite.Equal(oldCount+1, newCount)
// }

// func (suite *AgencySuite) TestAgencyAddTripOffshoreSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Trip{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)

// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.OFFSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.LiveaboardRoomTypeTripPrice{
// 		{
// 			LiveaboardID: 1,
// 			RoomTypeID:   1,
// 			Price:        500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	//Act
// 	err := suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Assert
// 	var newCount int64
// 	suite.NoError(err)
// 	suite.db.Model(&model.Trip{}).Count(&newCount)
// 	suite.Equal(oldCount+1, newCount)
// }

// func (suite *AgencySuite) TestAgencyAddDivingBoatSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Once()
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Boat{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	boat := &pb.Boat{
// 		Name:        "",
// 		Description: "",
// 		Images: []*pb.File{
// 			{
// 				Filename: "boat.jpg",
// 				File:     []byte{1, 2, 3},
// 			},
// 		},
// 		TotalCapacity: 20,
// 		DiverCapacity: 10,
// 		StaffCapacity: 10,
// 	}

// 	//Act
// 	err := suite.agencyService.AddDivingBoat(ctx, boat)

// 	//Assert
// 	var newCount int64
// 	suite.NoError(err)
// 	suite.db.Model(&model.Boat{}).Count(&newCount)
// 	suite.Equal(oldCount+1, newCount)
// }

// func (suite *AgencySuite) TestAgencyAddLiveaboardSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Liveaboard{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	liveaboard := &pb.Liveaboard{
// 		Name:          "",
// 		Description:   "",
// 		Length:        2,
// 		Width:         3,
// 		TotalCapacity: 2,
// 		DiverRooms:    2,
// 		StaffRooms:    3,
// 		Address:       &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
// 		Images:        []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 		RoomTypes: []*pb.RoomType{{
// 			Id:          0,
// 			Name:        "single",
// 			Description: "",
// 			MaxGuest:    5,
// 			Quantity:    5,
// 			RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 			Amenities:   []*pb.Amenity{{Id: 1}},
// 		}},
// 	}

// 	//Act
// 	err := suite.agencyService.AddLiveaboard(ctx, liveaboard)

// 	//Assert
// 	var newCount int64
// 	suite.NoError(err)
// 	suite.db.Model(&model.Liveaboard{}).Count(&newCount)
// 	suite.Equal(oldCount+1, newCount)
// }

// func (suite *AgencySuite) TestAgencyAddLiveaboardFailRetrievingAccountFromContext() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Liveaboard{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	liveaboard := &pb.Liveaboard{
// 		Name:          "",
// 		Description:   "",
// 		Length:        2,
// 		Width:         3,
// 		TotalCapacity: 2,
// 		DiverRooms:    2,
// 		StaffRooms:    3,
// 		Address:       &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
// 		Images:        []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 		RoomTypes: []*pb.RoomType{{
// 			Id:          0,
// 			Name:        "single",
// 			Description: "",
// 			MaxGuest:    5,
// 			Quantity:    5,
// 			RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 			Amenities:   []*pb.Amenity{{Id: 1}},
// 		}},
// 	}

// 	//Act
// 	err := suite.agencyService.AddLiveaboard(ctx, liveaboard)

// 	//Assert
// 	var newCount int64
// 	suite.Error(err)
// 	suite.db.Model(&model.Liveaboard{}).Count(&newCount)
// 	suite.Equal(oldCount, newCount)
// }

// func (suite *AgencySuite) TestAgencyListBoatsSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	boat := &pb.Boat{
// 		Images: []*pb.File{
// 			{
// 				Filename: "boat.jpg",
// 				File:     []byte{1, 2, 3},
// 			},
// 		},
// 	}
// 	suite.agencyService.AddDivingBoat(ctx, boat)
// 	suite.agencyService.AddDivingBoat(ctx, boat)

// 	//Act
// 	boats, err := suite.agencyService.ListBoats(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(boats))
// }

// func (suite *AgencySuite) TestAgencyListDiveMastersSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	diveMaster := &pb.DiveMaster{
// 		FirstName: "Random",
// 		LastName:  "Random",
// 		Documents: []*pb.File{
// 			{
// 				Filename: "boat.jpg",
// 				File:     []byte{1, 2, 3},
// 			},
// 		},
// 	}
// 	suite.agencyService.AddDiveMaster(ctx, diveMaster)
// 	suite.agencyService.AddDiveMaster(ctx, diveMaster)

// 	//Act
// 	diveMasters, err := suite.agencyService.ListDiveMasters(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(diveMasters))
// }

// func (suite *AgencySuite) TestAgencyListDiveMastersNoDocumentsSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Twice()
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	diveMaster := &pb.DiveMaster{
// 		FirstName: "Random",
// 		LastName:  "Random",
// 	}
// 	suite.agencyService.AddDiveMaster(ctx, diveMaster)
// 	suite.agencyService.AddDiveMaster(ctx, diveMaster)

// 	//Act
// 	diveMasters, err := suite.agencyService.ListDiveMasters(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(diveMasters))
// }

// func (suite *AgencySuite) TestAgencyListHotelsSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	hotel := &pb.Hotel{
// 		Images: []*pb.File{
// 			{
// 				Filename: "random.jpg",
// 				File:     []byte{1, 2, 3},
// 			},
// 		},
// 		RoomTypes: []*pb.RoomType{
// 			{
// 				RoomImages: []*pb.File{
// 					{
// 						Filename: "room.jpg",
// 						File:     []byte{1, 2, 3},
// 					},
// 				},
// 				Quantity: 2,
// 				MaxGuest: 2,
// 			},
// 		},
// 	}
// 	suite.agencyService.AddHotel(ctx, hotel)
// 	suite.agencyService.AddHotel(ctx, hotel)

// 	//Act
// 	hotels, err := suite.agencyService.ListHotels(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(hotels))
// }

// func (suite *AgencySuite) TestAgencyListLiveaboardsSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	liveaboard := &pb.Liveaboard{
// 		Images: []*pb.File{
// 			{
// 				Filename: "random.jpg",
// 				File:     []byte{1, 2, 3},
// 			},
// 		},
// 		RoomTypes: []*pb.RoomType{
// 			{
// 				RoomImages: []*pb.File{
// 					{
// 						Filename: "room.jpg",
// 						File:     []byte{1, 2, 3},
// 					},
// 				},
// 				Quantity: 2,
// 				MaxGuest: 2,
// 			},
// 		},
// 	}
// 	suite.agencyService.AddLiveaboard(ctx, liveaboard)
// 	suite.agencyService.AddLiveaboard(ctx, liveaboard)

// 	//Act
// 	liveaboards, err := suite.agencyService.ListLiveaboards(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(liveaboards))
// }

// func (suite *AgencySuite) TestAgencyListStaffsSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	staff := &pb.Staff{
// 		FirstName: "BadGuy",
// 	}
// 	suite.agencyService.AddStaff(ctx, staff)
// 	suite.agencyService.AddStaff(ctx, staff)

// 	//Act
// 	staffs, err := suite.agencyService.ListStaffs(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(staffs))
// }

// func (suite *AgencySuite) TestAgencyListTripTemplatesSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)
// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}
// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)
// 	trip.ID = 2
// 	startDate = trip.StartDate.AddDate(0, 1, 0)
// 	endDate = trip.StartDate.AddDate(0, 1, 2)
// 	trip.StartDate = &startDate
// 	trip.EndDate = &endDate
// 	trip.TripTemplate.ID = 2
// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	tripTemplates, err := suite.agencyService.ListTripTemplates(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(tripTemplates))
// }

// // Failing Test Case?
// func (suite *AgencySuite) TestAgencyListTripsSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)
// 	trip := &model.Trip{
// 		Model:                gorm.Model{},
// 		Name:                 "Thailand",
// 		MaxGuest:             50,
// 		CurrentGuest:         0,
// 		StartDate:            &startDate,
// 		EndDate:              &endDate,
// 		LastReservationDate:  &lastReservationDate,
// 		Schedule:             "schedule",
// 		DiveMasters:          []model.DiveMaster{},
// 		ReservationRoomTypes: []model.ReservationRoomType{},
// 		TripTemplateID:       0,
// 		TripTemplate: model.TripTemplate{
// 			Files: []*model.File{
// 				{
// 					Filename: "random.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 				},
// 			},
// 		},
// 	}
// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)
// 	trip.ID = 2
// 	startDate = trip.StartDate.AddDate(0, 1, 0)
// 	endDate = trip.StartDate.AddDate(0, 1, 2)
// 	trip.StartDate = &startDate
// 	trip.EndDate = &endDate
// 	trip.TripTemplate.ID = 2
// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	trips, err := suite.agencyService.ListTrips(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(trips))
// }

// func (suite *AgencySuite) TestAgencyListTripsWithTemplatesSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)
// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}
// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)
// 	trip.ID = 2
// 	startDate = trip.StartDate.AddDate(0, 1, 0)
// 	endDate = trip.StartDate.AddDate(0, 1, 2)
// 	trip.StartDate = &startDate
// 	trip.EndDate = &endDate
// 	trip.TripTemplate.ID = 2
// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	trips, err := suite.agencyService.ListTripsWithTemplates(ctx, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(trips))
// }

// func (suite *AgencySuite) TestAgencyListRoomTypesByHotelIDSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Hotel{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	hotel := &pb.Hotel{
// 		Name:        "Hotel",
// 		Description: "",
// 		Stars:       5,
// 		Phone:       "0923613883",
// 		Address:     &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
// 		Images:      []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 		RoomTypes: []*pb.RoomType{
// 			{
// 				Name:        "single",
// 				Description: "",
// 				MaxGuest:    5,
// 				Quantity:    5,
// 				RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 				Amenities:   []*pb.Amenity{{Id: 1}},
// 			},
// 			{
// 				Name:        "double",
// 				Description: "",
// 				MaxGuest:    5,
// 				Quantity:    5,
// 				RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 				Amenities:   []*pb.Amenity{{Id: 1}},
// 			}},
// 	}
// 	err := suite.agencyService.AddHotel(ctx, hotel)

// 	//Act
// 	rooms, err := suite.agencyService.ListRoomTypesByHotelID(ctx, 1, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(rooms))
// }

// func (suite *AgencySuite) TestAgencyListRoomTypesByLiveaboardIDSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)
// 	var oldCount int64
// 	suite.db.Model(&model.Hotel{}).Count(&oldCount)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)
// 	liveaboard := &pb.Liveaboard{
// 		Name:    "Hotel",
// 		Address: &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
// 		Images:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 		RoomTypes: []*pb.RoomType{
// 			{
// 				Name:        "single",
// 				Description: "",
// 				MaxGuest:    5,
// 				Quantity:    5,
// 				RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 				Amenities:   []*pb.Amenity{{Id: 1}},
// 			},
// 			{
// 				Name:        "double",
// 				Description: "",
// 				MaxGuest:    5,
// 				Quantity:    5,
// 				RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// 				Amenities:   []*pb.Amenity{{Id: 1}},
// 			}},
// 	}
// 	err := suite.agencyService.AddLiveaboard(ctx, liveaboard)

// 	//Act
// 	rooms, err := suite.agencyService.ListRoomTypesByLiveaboardID(ctx, 1, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(rooms))
// }

// func (suite *AgencySuite) TestAgencyListDiveSitesByTripIDSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)
// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{
// 			{
// 				Name: "dive site 1",
// 			},
// 			{
// 				Name: "dive site 2",
// 			},
// 		},
// 	}
// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	trips, err := suite.agencyService.ListDiveSitesByTripID(ctx, 1, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(trips))
// }

// func (suite *AgencySuite) TestAgencyListDiveMastersByTripIDSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)
// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveMasters: []model.DiveMaster{
// 			{
// 				FirstName: "first",
// 				LastName:  "first",
// 				Documents: []string{"file1"},
// 			},
// 			{
// 				FirstName: "second",
// 				LastName:  "second",
// 				Documents: []string{"file2"},
// 			},
// 		},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	trips, err := suite.agencyService.ListDiveMastersByTripID(ctx, 1, 25, 0)

// 	//Assert
// 	suite.NoError(err)
// 	suite.Equal(2, len(trips))
// }

// // Failing Test Case
// // func (suite *AgencySuite) TestAgencySearchTripsSuccessful() {
// // 	//Arrange
// // 	med := media.NewStoreMock()
// // 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// // 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// // 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// // 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// // 	ctx := context.Background()
// // 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// // 	defer cancel()

// // 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// // 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// // 	s, _ := suite.session.Get(token)
// // 	ctx = context.WithValue(ctx, session.User, s)

// // 	diveMaster := &pb.DiveMaster{
// // 		Id:        0,
// // 		FirstName: "John",
// // 		LastName:  "Doe",
// // 	}

// // 	suite.agencyService.AddDiveMaster(ctx, diveMaster)

// // 	lastReservationDate := time.Now().AddDate(0, 0, 1)
// // 	startDate := lastReservationDate.AddDate(0, 0, 1)
// // 	endDate := startDate.AddDate(0, 0, 1)
// // 	trip1 := &model.Trip{
// // 		Name:                "Thailand",
// // 		MaxGuest:            50,
// // 		StartDate:           &startDate,
// // 		EndDate:             &endDate,
// // 		LastReservationDate: &lastReservationDate,
// // 		Schedule:            "schedule",
// // 		TripTemplate: model.TripTemplate{
// // 			Name:        "",
// // 			Description: "",
// // 			Type:        model.ONSHORE,
// // 			HotelID:     1,
// // 			BoatID:      1,
// // 			Address: model.Address{
// // 				City:    "Bangkok",
// // 				Region:  "South-East asia",
// // 				Country: "Thailand",
// // 			},
// // 			Files: []*model.File{
// // 				{
// // 					Filename: "image.jpg",
// // 					Buffer:   []byte{1, 2, 3},
// // 					Private:  false,
// // 				},
// // 			},
// // 		},
// // 		DiveMasters: []model.DiveMaster{{Model: gorm.Model{ID: 1}}},
// // 	}

// // 	lastReservationDate2 := time.Now().AddDate(0, 1, 0)
// // 	startDate2 := lastReservationDate2.AddDate(0, 0, 1)
// // 	endDate2 := startDate2.AddDate(0, 0, 1)
// // 	trip2 := &model.Trip{
// // 		Name:                "US",
// // 		MaxGuest:            50,
// // 		StartDate:           &startDate2,
// // 		EndDate:             &endDate2,
// // 		LastReservationDate: &lastReservationDate2,
// // 		Schedule:            "schedule",
// // 		TripTemplate: model.TripTemplate{
// // 			Name:        "",
// // 			Description: "",
// // 			Type:        model.ONSHORE,
// // 			HotelID:     1,
// // 			BoatID:      1,
// // 			Address: model.Address{
// // 				City:    "Malidives City",
// // 				Region:  "South Asia",
// // 				Country: "Malidives",
// // 			},
// // 			Files: []*model.File{
// // 				{
// // 					Filename: "image.jpg",
// // 					Buffer:   []byte{1, 2, 3},
// // 					Private:  false,
// // 				},
// // 			},
// // 		},
// // 		DiveMasters: []model.DiveMaster{{Model: gorm.Model{ID: 1}}},
// // 	}

// // 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// // 		{
// // 			HotelID:    1,
// // 			RoomTypeID: 1,
// // 			Price:      500,
// // 		},
// // 	}

// // 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// // 	for _, roomTypePrice := range hotelRoomTypePrices {
// // 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// // 	}

// // 	suite.agencyService.AddTrip(ctx, trip1, roomTypePrices)
// // 	suite.agencyService.AddTrip(ctx, trip2, roomTypePrices)
// // 	trips, _ := suite.agencyService.ListTrips(ctx, 25, 0)
// // 	for _, trip := range trips {
// // 		fmt.Println(*trip.StartDate)
// // 		fmt.Println(*trip.EndDate)
// // 	}

// // 	//Act
// // 	tripsByCityOption, err := suite.agencyService.SearchTrips(ctx, nil, 25, 0)

// // 	//Assert
// // 	suite.NoError(err)
// // 	suite.Equal(1, len(tripsByCityOption))
// // }

// func (suite *AgencySuite) TestAgencyUpdateTripOnshoreSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)
// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)
// 	trip.Name = "Singapore"
// 	trip.MaxGuest = 60
// 	trip.HotelRoomTypeTripPrices = append(trip.HotelRoomTypeTripPrices)

// 	//Act
// 	err := suite.agencyService.UpdateTrip(ctx, trip)

// 	// Assert
// 	suite.Nil(err)
// 	var updatedTrip *model.Trip
// 	suite.db.First(&updatedTrip, 1)
// 	suite.Equal(trip.Name, updatedTrip.Name)
// 	suite.Equal(trip.MaxGuest, updatedTrip.MaxGuest)
// }

// func (suite *AgencySuite) TestAgencyUpdateTripOffshoreSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)
// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:         "",
// 			Description:  "",
// 			Type:         model.OFFSHORE,
// 			LiveaboardID: 1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	liveaboardRoomTypePrices := []model.LiveaboardRoomTypeTripPrice{
// 		{
// 			LiveaboardID: 1,
// 			RoomTypeID:   1,
// 			Price:        500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(liveaboardRoomTypePrices))
// 	for _, roomTypePrice := range liveaboardRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)
// 	trip.Name = "Singapore"
// 	trip.MaxGuest = 60

// 	//Act
// 	err := suite.agencyService.UpdateTrip(ctx, trip)

// 	// Assert
// 	suite.Nil(err)
// 	var updatedTrip *model.Trip
// 	suite.db.First(&updatedTrip, 1)
// 	suite.Equal(trip.Name, updatedTrip.Name)
// 	suite.Equal(trip.MaxGuest, updatedTrip.MaxGuest)
// }

// // func (suite *AgencySuite) TestAgencyUpdateHotelSuccessful() {
// // 	//Arrange
// // 	med := media.NewStoreMock()
// // 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil).Times(4)
// // 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// // 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// // 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// // 	ctx := context.Background()
// // 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// // 	defer cancel()

// // 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// // 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// // 	s, _ := suite.session.Get(token)
// // 	ctx = context.WithValue(ctx, session.User, s)

// // 	hotel := &pb.Hotel{
// // 		Name:        "Hotel",
// // 		Description: "",
// // 		Stars:       5,
// // 		Phone:       "0923613883",
// // 		Address:     &pb.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
// // 		Images:      []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// // 		RoomTypes: []*pb.RoomType{{
// // 			Id:          0,
// // 			Name:        "single",
// // 			Description: "",
// // 			MaxGuest:    5,
// // 			Quantity:    5,
// // 			RoomImages:  []*pb.File{{Filename: "image", File: []byte{1, 2, 3}}},
// // 			Amenities:   []*pb.Amenity{{Id: 1}},
// // 		}},
// // 	}

// // 	suite.agencyService.AddHotel(ctx, hotel)
// // 	newHotelInfo := &model.Hotel{
// // 		Model: gorm.Model{
// // 			ID: 1,
// // 		},
// // 		Coordinate:  model.Coordinate{},
// // 		AddressID:   0,
// // 		Address:     model.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
// // 		Name:        "NewHotel",
// // 		Description: "",
// // 		Stars:       5,
// // 		Phone:       "0923613883",
// // 		Files:       []*model.File{},
// // 	}

// // 	//Act
// // 	err := suite.agencyService.UpdateHotel(ctx, newHotelInfo)

// // 	// Assert
// // 	suite.Nil(err)
// // 	var updatedHotel model.Hotel
// // 	suite.db.First(&updatedHotel, 1)
// // 	suite.Equal(newHotelInfo.Name, updatedHotel.Name)
// // }

// func (suite *AgencySuite) TestAgencyUpdateBoatSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	boat := &pb.Boat{}

// 	suite.agencyService.AddDivingBoat(ctx, boat)
// 	newBoatInfo := &model.Boat{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 		AddressID:   0,
// 		Address:     model.Address{AddressLine_1: "Street 1", AddressLine_2: "Street 2", City: "London", Postcode: "SE1", Region: "London", Country: "England"},
// 		Name:        "NewBoat",
// 		Description: "",
// 		Files: []*model.File{
// 			{
// 				Filename: "boat.jpg",
// 				Buffer:   []byte{1, 2, 3},
// 			},
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.UpdateBoat(ctx, newBoatInfo)

// 	// Assert
// 	suite.Nil(err)
// 	var updatedBoat model.Boat
// 	suite.db.First(&updatedBoat, 1)
// 	suite.Equal(newBoatInfo.Name, updatedBoat.Name)
// }

// func (suite *AgencySuite) TestAgencyUpdateDiveMasterSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	diveMaster := &pb.DiveMaster{
// 		FirstName: "First",
// 		LastName:  "Last",
// 	}

// 	suite.agencyService.AddDiveMaster(ctx, diveMaster)
// 	newDiveMasterInfo := &model.DiveMaster{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 		FirstName: "FirstName2",
// 		Files: []*model.File{
// 			{
// 				Filename: "boat.jpg",
// 				Buffer:   []byte{1, 2, 3},
// 			},
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.UpdateDiveMaster(ctx, newDiveMasterInfo)

// 	// Assert
// 	suite.Nil(err)
// 	var updatedDiveMaster model.DiveMaster
// 	suite.db.First(&updatedDiveMaster, 1)
// 	suite.Equal(newDiveMasterInfo.FirstName, updatedDiveMaster.FirstName)
// }

// func (suite *AgencySuite) TestAgencyUpdateStaffSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	staff := &pb.Staff{
// 		FirstName: "First",
// 		LastName:  "Last",
// 	}

// 	suite.agencyService.AddStaff(ctx, staff)
// 	newStaffInfo := &model.Staff{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 		FirstName: "FirstName2",
// 	}

// 	//Act
// 	err := suite.agencyService.UpdateStaff(ctx, newStaffInfo)

// 	// Assert
// 	suite.Nil(err)
// 	var updatedStaff model.Staff
// 	suite.db.First(&updatedStaff, 1)
// 	suite.Equal(newStaffInfo.FirstName, updatedStaff.FirstName)
// }

// func (suite *AgencySuite) TestAgencyDeleteDiveMasterSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	diveMaster := &pb.DiveMaster{
// 		FirstName: "First",
// 		LastName:  "Last",
// 	}

// 	suite.agencyService.AddDiveMaster(ctx, diveMaster)
// 	deletingDiveMaster := &model.DiveMaster{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.DeleteDiveMaster(ctx, deletingDiveMaster)

// 	// Assert
// 	suite.Nil(err)
// 	var count int64
// 	suite.db.Model(&model.DiveMaster{}).Count(&count)
// 	suite.Equal(int64(0), count)
// }

// func (suite *AgencySuite) TestAgencyDeleteDivingBoatSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	boat := &pb.Boat{
// 		Name: "Boat Model",
// 	}

// 	suite.agencyService.AddDivingBoat(ctx, boat)
// 	deletingBoat := &model.Boat{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.DeleteDivingBoat(ctx, deletingBoat)

// 	// Assert
// 	suite.Nil(err)
// 	var count int64
// 	suite.db.Model(&model.Boat{}).Count(&count)
// 	suite.Equal(int64(0), count)
// }

// func (suite *AgencySuite) TestAgencyDeleteHotelSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	hotel := &pb.Hotel{
// 		Name: "Hotel",
// 	}

// 	suite.agencyService.AddHotel(ctx, hotel)
// 	deletingHotel := &model.Hotel{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.DeleteHotel(ctx, deletingHotel)

// 	// Assert
// 	suite.Nil(err)
// 	var count int64
// 	suite.db.Model(&model.Hotel{}).Count(&count)
// 	suite.Equal(int64(0), count)
// }

// func (suite *AgencySuite) TestAgencyDeleteLiveaboardSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	liveaboard := &pb.Liveaboard{
// 		Name: "Liveaboard",
// 	}

// 	suite.agencyService.AddLiveaboard(ctx, liveaboard)
// 	deletingLiveaboard := &model.Liveaboard{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.DeleteLiveaboard(ctx, deletingLiveaboard)

// 	// Assert
// 	suite.Nil(err)
// 	var count int64
// 	suite.db.Model(&model.Liveaboard{}).Count(&count)
// 	suite.Equal(int64(0), count)
// }

// func (suite *AgencySuite) TestAgencyDeleteStaffSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	staff := &pb.Staff{}

// 	suite.agencyService.AddStaff(ctx, staff)
// 	deletingStaff := &model.Staff{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.DeleteStaff(ctx, deletingStaff)

// 	// Assert
// 	suite.Nil(err)
// 	var count int64
// 	suite.db.Model(&model.Staff{}).Count(&count)
// 	suite.Equal(int64(0), count)
// }

// func (suite *AgencySuite) TestAgencyDeleteTripTemplateSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)

// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)
// 	deletingTripTemplate := &model.TripTemplate{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.DeleteTripTemplate(ctx, deletingTripTemplate)

// 	// Assert
// 	suite.Nil(err)
// 	var count int64
// 	suite.db.Model(&model.TripTemplate{}).Count(&count)
// 	suite.Equal(int64(0), count)
// }

// func (suite *AgencySuite) TestAgencyDeleteTripSuccessful() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)

// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)
// 	deletingTrip := &model.Trip{
// 		Model: gorm.Model{
// 			ID: 1,
// 		},
// 	}

// 	//Act
// 	err := suite.agencyService.DeleteTrip(ctx, deletingTrip)

// 	// Assert
// 	suite.Nil(err)
// 	var count int64
// 	suite.db.Model(&model.Trip{}).Count(&count)
// 	suite.Equal(int64(0), count)
// }

// func (suite *AgencySuite) TestAgencyGenerateCurrentTripsReport() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.repository = repo.NewRepo(suite.db)

// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)

// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	report, err := suite.agencyService.GenerateCurrentTripsReport(ctx, 25, 0)

// 	// Assert
// 	suite.Nil(err)
// 	suite.Equal(1, len(report))
// }

// func (suite *AgencySuite) TestAgencyGenerateYearlyEndedTripsReport() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.repository = repo.NewRepo(suite.db)

// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)

// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	report, err := suite.agencyService.GenerateYearlyEndedTripsReport(ctx, 2, 25, 0)

// 	// Assert
// 	suite.Nil(err)
// 	suite.Equal(0, len(report))
// }

// func (suite *AgencySuite) TestAgencyGenerateIncomingTripsReport() {
// 	//Arrange
// 	med := media.NewStoreMock()
// 	med.On("Put", mock.AnythingOfType("string"), mock.AnythingOfType("media.Permission"), mock.AnythingOfTypeArgument("*bytes.Reader")).Return("id", nil)
// 	med.On("Get", mock.AnythingOfType("string"), mock.AnythingOfType("bool")).Return("URL")
// 	suite.repository = repo.NewRepo(suite.db)

// 	suite.accountService = service.NewAccountService(suite.repository, suite.session, med, suite.mailer)
// 	suite.agencyService = service.NewAgencyService(suite.repository, med)

// 	ctx := context.Background()
// 	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
// 	defer cancel()

// 	suite.accountService.CreateAgencyAccount(ctx, suite.agency)
// 	token, _ := suite.accountService.Login(ctx, "agency@agency.com", "P@ssword123")
// 	s, _ := suite.session.Get(token)
// 	ctx = context.WithValue(ctx, session.User, s)

// 	lastReservationDate := time.Now()
// 	startDate := lastReservationDate.AddDate(0, 0, 1)
// 	endDate := startDate.AddDate(0, 0, 1)

// 	trip := &model.Trip{
// 		Name:                "Thailand",
// 		MaxGuest:            50,
// 		StartDate:           &startDate,
// 		EndDate:             &endDate,
// 		LastReservationDate: &lastReservationDate,
// 		Schedule:            "schedule",
// 		DiveMasters:         []model.DiveMaster{},
// 		TripTemplate: model.TripTemplate{
// 			Name:        "",
// 			Description: "",
// 			Type:        model.ONSHORE,
// 			HotelID:     1,
// 			BoatID:      1,
// 			Files: []*model.File{
// 				{
// 					Filename: "image.jpg",
// 					Buffer:   []byte{1, 2, 3},
// 					Private:  false,
// 				},
// 			},
// 		},
// 		DiveSites: []model.DiveSite{},
// 	}

// 	hotelRoomTypePrices := []model.HotelRoomTypeTripPrice{
// 		{
// 			HotelID:    1,
// 			RoomTypeID: 1,
// 			Price:      500,
// 		},
// 	}

// 	roomTypePrices := make([]model.RoomTypeTripPrice, 0, len(hotelRoomTypePrices))
// 	for _, roomTypePrice := range hotelRoomTypePrices {
// 		roomTypePrices = append(roomTypePrices, &roomTypePrice)
// 	}

// 	suite.agencyService.AddTrip(ctx, trip, roomTypePrices)

// 	//Act
// 	report, err := suite.agencyService.GenerateIncomingTripsReport(ctx, 1, 25, 0)

// 	// Assert
// 	suite.Nil(err)
// 	suite.Equal(0, len(report))
// }
