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

type AgencyTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo AgencyRepository
}

func (suite *AgencyTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewAgencyRepository(suite.db)
}

func (suite *AgencyTestSuite) TestCreate() {
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

	var oldCount int64
	suite.db.Model(&model.Agency{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	_, err := suite.repo.Create(ctx, &agency)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Agency{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencyTestSuite) TestUpdate() {
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
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)

	updatedAgency := model.Agency{
		Model: gorm.Model{
			ID: 1,
		},
		Coordinate: &model.Coordinate{
			Lat:  40.0,
			Long: 75.0,
		},
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "NYC",
			Postcode:      "10001",
			Region:        "New York",
			Country:       "USA",
		},
		Account: &model.Account{
			Model: gorm.Model{
				ID: 1,
			},
			Email:       "agency@nyc.com",
			Username:    "agencyNYC",
			Password:    "P@ssword1",
			OldPassword: "P@ssword123",
			Type:        model.AGENCY,
		},
	}

	err := suite.repo.Update(ctx, &updatedAgency)
	suite.Nil(err)
}

func (suite *AgencyTestSuite) TestCreateDiveMaster() {
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
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)

	diveMaster := model.DiveMaster{
		FirstName: "John",
		LastName:  "Doe",
		Level:     model.INSTRUCTOR,
		AgencyID:  1,
	}

	var oldCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&oldCount)

	_, err := suite.repo.CreateDiveMaster(ctx, &diveMaster)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.DiveMaster{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencyTestSuite) TestCreateHotel() {
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
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)

	hotel := model.Hotel{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:  "Ritz Resort",
		Stars: 5,
		Phone: "+66111111111",
		RoomTypes: []*model.RoomType{
			{
				Name:     "Deluxe",
				MaxGuest: 2,
				Price:    2000.0,
				Quantity: 12,
			},
			{
				Name:     "Single",
				MaxGuest: 1,
				Price:    1000.0,
				Quantity: 24,
			},
		},
		AgencyID: 1,
	}

	var oldCount int64
	suite.db.Model(&model.Hotel{}).Count(&oldCount)

	_, err := suite.repo.CreateHotel(ctx, &hotel)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Hotel{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

// func (suite *AgencyTestSuite) TestCreateRoomType() {}

// func (suite *AgencyTestSuite) TestCreateAmenity() {}

// func (suite *AgencyTestSuite) TestCreateRoomAmenity() {}

func (suite *AgencyTestSuite) TestCreateTripTemplate() {
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

	hotel := model.Hotel{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:  "Ritz Resort",
		Stars: 5,
		Phone: "+66111111111",
		RoomTypes: []*model.RoomType{
			{
				Name:     "Deluxe",
				MaxGuest: 2,
				Price:    2000.0,
				Quantity: 12,
			},
			{
				Name:     "Single",
				MaxGuest: 1,
				Price:    1000.0,
				Quantity: 24,
			},
		},
		AgencyID: 1,
	}

	boat := model.Boat{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:          "Nemo",
		TotalCapacity: 25,
		DiverCapacity: 15,
		StaffCapacity: 6,
		AgencyID:      1,
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)
	suite.repo.CreateHotel(ctx, &hotel)
	suite.repo.CreateBoat(ctx, &boat)

	template := model.TripTemplate{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:     "Amazing trip",
		Type:     model.ONSHORE,
		HotelID:  1,
		BoatID:   1,
		AgencyID: 1,
	}

	var oldCount int64
	suite.db.Model(&model.TripTemplate{}).Count(&oldCount)

	_, err := suite.repo.CreateTripTemplate(ctx, &template)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.TripTemplate{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencyTestSuite) TestCreateTrip() {
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

	diveMaster := model.DiveMaster{
		FirstName: "John",
		LastName:  "Doe",
		Level:     model.INSTRUCTOR,
		AgencyID:  1,
	}

	hotel := model.Hotel{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:  "Ritz Resort",
		Stars: 5,
		Phone: "+66111111111",
		RoomTypes: []*model.RoomType{
			{
				Name:     "Deluxe",
				MaxGuest: 2,
				Price:    2000.0,
				Quantity: 12,
			},
			{
				Name:     "Single",
				MaxGuest: 1,
				Price:    1000.0,
				Quantity: 24,
			},
		},
		AgencyID: 1,
	}

	boat := model.Boat{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:          "Nemo",
		TotalCapacity: 25,
		DiverCapacity: 15,
		StaffCapacity: 6,
		AgencyID:      1,
	}

	template := model.TripTemplate{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:     "Amazing trip",
		Type:     model.ONSHORE,
		HotelID:  1,
		BoatID:   1,
		AgencyID: 1,
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)
	suite.repo.CreateDiveMaster(ctx, &diveMaster)
	suite.repo.CreateHotel(ctx, &hotel)
	suite.repo.CreateBoat(ctx, &boat)
	suite.repo.CreateTripTemplate(ctx, &template)

	start := time.Now().AddDate(0, 0, 7)
	end := start.AddDate(0, 0, 5)
	lastReservation := start.AddDate(0, 0, -1)
	trip := model.Trip{
		MaxGuest:                12,
		StartDate:               &start,
		EndDate:                 &end,
		LastReservationDate:     &lastReservation,
		DiveMasters:             []model.DiveMaster{{Model: gorm.Model{ID: 1}}},
		DiveSites:               []model.DiveSite{{Name: "Trench", MinDepth: 8, MaxDepth: 80}},
		HotelRoomTypeTripPrices: []model.HotelRoomTypeTripPrice{{HotelID: 1, RoomTypeID: 2, Price: 3500.0}},
		TripTemplateID:          1,
		AgencyID:                1,
	}

	var oldCount int64
	suite.db.Model(&model.Trip{}).Count(&oldCount)

	_, err := suite.repo.CreateTrip(ctx, &trip)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Trip{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencyTestSuite) TestCreateDiveMasterTripLink() {
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

	diveMaster1 := model.DiveMaster{
		FirstName: "John",
		LastName:  "Doe",
		Level:     model.INSTRUCTOR,
		AgencyID:  1,
	}

	diveMaster2 := model.DiveMaster{
		FirstName: "Jane",
		LastName:  "Doe",
		Level:     model.RESCUE,
		AgencyID:  1,
	}

	hotel := model.Hotel{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:  "Ritz Resort",
		Stars: 5,
		Phone: "+66111111111",
		RoomTypes: []*model.RoomType{
			{
				Name:     "Deluxe",
				MaxGuest: 2,
				Price:    2000.0,
				Quantity: 12,
			},
			{
				Name:     "Single",
				MaxGuest: 1,
				Price:    1000.0,
				Quantity: 24,
			},
		},
		AgencyID: 1,
	}

	boat := model.Boat{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:          "Nemo",
		TotalCapacity: 25,
		DiverCapacity: 15,
		StaffCapacity: 6,
		AgencyID:      1,
	}

	template := model.TripTemplate{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:     "Amazing trip",
		Type:     model.ONSHORE,
		HotelID:  1,
		BoatID:   1,
		AgencyID: 1,
	}

	start := time.Now().AddDate(0, 0, 7)
	end := start.AddDate(0, 0, 5)
	lastReservation := start.AddDate(0, 0, -1)
	trip := model.Trip{
		MaxGuest:                12,
		StartDate:               &start,
		EndDate:                 &end,
		LastReservationDate:     &lastReservation,
		DiveMasters:             []model.DiveMaster{{Model: gorm.Model{ID: 1}}},
		DiveSites:               []model.DiveSite{{Name: "Trench", MinDepth: 8, MaxDepth: 80}},
		HotelRoomTypeTripPrices: []model.HotelRoomTypeTripPrice{{HotelID: 1, RoomTypeID: 2, Price: 3500.0}},
		TripTemplateID:          1,
		AgencyID:                1,
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)
	suite.repo.CreateDiveMaster(ctx, &diveMaster1)
	suite.repo.CreateDiveMaster(ctx, &diveMaster2)
	suite.repo.CreateHotel(ctx, &hotel)
	suite.repo.CreateBoat(ctx, &boat)
	suite.repo.CreateTripTemplate(ctx, &template)
	suite.repo.CreateTrip(ctx, &trip)

	diveMasterTrip := model.DiveMasterTrip{
		DiveMasterID: 2,
		TripID:       1,
	}

	var oldCount int64
	suite.db.Model(&model.DiveMasterTrip{}).Count(&oldCount)

	_, err := suite.repo.CreateDiveMasterTripLink(ctx, &diveMasterTrip)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.DiveMasterTrip{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencyTestSuite) TestCreateBoat() {
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
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)

	boat := model.Boat{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:          "Nemo",
		TotalCapacity: 25,
		DiverCapacity: 15,
		StaffCapacity: 6,
		AgencyID:      1,
	}

	var oldCount int64
	suite.db.Model(&model.Boat{}).Count(&oldCount)

	_, err := suite.repo.CreateBoat(ctx, &boat)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Boat{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencyTestSuite) TestCreateStaff() {
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
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)

	staff := model.Staff{
		FirstName: "John",
		LastName:  "Doe",
		Position:  "Manager",
		Gender:    model.MALE,
		AgencyID:  1,
	}

	var oldCount int64
	suite.db.Model(&model.Staff{}).Count(&oldCount)

	_, err := suite.repo.CreateStaff(ctx, &staff)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Staff{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AgencyTestSuite) TestCreateLiveaboard() {
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
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.repo.Create(ctx, &agency)

	liveaboard := model.Liveaboard{
		Address: model.Address{
			AddressLine_1: "Street 1",
			AddressLine_2: "Street 2",
			City:          "London",
			Postcode:      "SE1",
			Region:        "London",
			Country:       "England",
		},
		Name:          "Ritz Resort",
		Length:        28,
		Width:         15,
		TotalCapacity: 16,
		DiverRooms:    6,
		StaffRooms:    3,
		RoomTypes: []*model.RoomType{
			{
				Name:     "Deluxe",
				MaxGuest: 2,
				Price:    2000.0,
				Quantity: 12,
			},
			{
				Name:     "Single",
				MaxGuest: 1,
				Price:    1000.0,
				Quantity: 24,
			},
		},
		AgencyID: 1,
	}

	var oldCount int64
	suite.db.Model(&model.Liveaboard{}).Count(&oldCount)

	_, err := suite.repo.CreateLiveaboard(ctx, &liveaboard)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Liveaboard{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

// func (suite *AgencyTestSuite) TestCreateAddress() {}

// func (suite *AgencyTestSuite) TestGet() {}

// func (suite *AgencyTestSuite) TestList() {}

func (suite *AgencyTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteAgencyRepo(t *testing.T) {
	suite.Run(t, new(AgencyTestSuite))
}
