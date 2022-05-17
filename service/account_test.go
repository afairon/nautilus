package service

import (
	"context"
	"testing"
	"time"

	"github.com/afairon/nautilus/internal/media/fs"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type AccountTestSuite struct {
	suite.Suite
	db      *gorm.DB
	service AccountService
	session session.Session
}

func (suite *AccountTestSuite) SetupTest() {
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

	suite.service = NewAccountService(repository, suite.session, media)
}

func (suite *AccountTestSuite) TestCreateAdminAccount() {
	admin := model.Admin{
		Account: &model.Account{
			Email:    "admin@admin.com",
			Username: "admin",
			Password: "P@ssword123",
			Type:     model.ADMIN,
		},
	}

	var oldCount int64
	suite.db.Model(&model.Account{}).Count(&oldCount)

	err := suite.db.Create(admin.Account).Error
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Account{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AccountTestSuite) TestUpdateAdminAccount() {
	admin := model.Admin{
		Account: &model.Account{
			Email:    "admin@admin.com",
			Username: "admin",
			Password: "P@ssword123",
			Type:     model.ADMIN,
		},
	}

	suite.db.Create(admin.Account)

	updatedAdmin := model.Admin{
		Account: &model.Account{
			Model: gorm.Model{
				ID: 1,
			},
			Email:       "superuser@admin.com",
			Username:    "superuser",
			Password:    "P@ssword1",
			OldPassword: "P@ssword123",
			Type:        model.ADMIN,
		},
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	token, _ := suite.service.Login(ctx, "admin@admin.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)

	err := suite.service.UpdateAdminAccount(ctx, &updatedAdmin)
	suite.Nil(err)

	token, err = suite.service.Login(ctx, "superuser@admin.com", "P@ssword1")
	suite.Nil(err)
	suite.NotEmpty(token)

	s, err = suite.session.Get(token)
	suite.Nil(err)
	suite.NotNil(s)

	record, ok := s.(*model.Admin)
	suite.True(ok)
	suite.True(record.Email == updatedAdmin.Email && record.Username == updatedAdmin.Username)
}

func (suite *AccountTestSuite) TestLoginAdmin() {
	admin := model.Admin{
		Account: &model.Account{
			Email:    "admin@admin.com",
			Username: "admin",
			Password: "P@ssword123",
			Type:     model.ADMIN,
		},
	}

	suite.db.Create(admin.Account)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	token, err := suite.service.Login(ctx, "admin@admin.com", "P@ssword123")
	suite.Nil(err)
	suite.NotEmpty(token)

	s, err := suite.session.Get(token)
	suite.Nil(err)
	suite.NotNil(s)
}

func (suite *AccountTestSuite) TestProfileAdmin() {
	admin := model.Admin{
		Account: &model.Account{
			Email:    "admin@admin.com",
			Username: "admin",
			Password: "P@ssword123",
			Type:     model.ADMIN,
		},
	}

	suite.db.Create(admin.Account)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	token, _ := suite.service.Login(ctx, "admin@admin.com", "P@ssword123")

	s, _ := suite.session.Get(token)

	ctx = context.WithValue(ctx, session.User, s)
	profile, err := suite.service.GetProfile(ctx)
	suite.Nil(err)
	suite.NotNil(profile)
}

func (suite *AccountTestSuite) TestCreateAgencyAccount() {
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

	err := suite.service.CreateAgencyAccount(ctx, &agency)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Agency{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AccountTestSuite) TestUpdateAgencyAccount() {
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

	suite.service.CreateAgencyAccount(ctx, &agency)

	updatedAgency := model.Agency{
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
			Email:       "agency@nyc.com",
			Username:    "agencyNYC",
			Password:    "P@ssword1",
			OldPassword: "P@ssword123",
			Type:        model.AGENCY,
		},
	}

	token, _ := suite.service.Login(ctx, "agency@agency.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)

	err := suite.service.UpdateAgencyAccount(ctx, &updatedAgency)
	suite.Nil(err)

	token, err = suite.service.Login(ctx, "agency@nyc.com", "P@ssword1")
	suite.Nil(err)
	suite.NotEmpty(token)

	s, err = suite.session.Get(token)
	suite.Nil(err)
	suite.NotNil(s)

	record, ok := s.(*model.Agency)
	suite.True(ok)
	suite.True(record.Lat == updatedAgency.Lat && record.Long == updatedAgency.Long &&
		record.Address.AddressLine_1 == updatedAgency.Address.AddressLine_1 && record.Address.AddressLine_2 == updatedAgency.Address.AddressLine_2 &&
		record.Address.City == updatedAgency.Address.City && record.Address.Postcode == updatedAgency.Address.Postcode &&
		record.Address.Region == updatedAgency.Address.Region && record.Address.Country == updatedAgency.Address.Country &&
		record.Account.Email == updatedAgency.Account.Email && record.Account.Username == updatedAgency.Account.Username,
	)
}

func (suite *AccountTestSuite) TestLoginAgency() {
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

	suite.service.CreateAgencyAccount(ctx, &agency)

	token, err := suite.service.Login(ctx, "agency@agency.com", "P@ssword123")
	suite.Nil(err)
	suite.NotEmpty(token)

	s, err := suite.session.Get(token)
	suite.Nil(err)
	suite.NotNil(s)
}

func (suite *AccountTestSuite) TestProfileAgency() {
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

	suite.service.CreateAgencyAccount(ctx, &agency)

	token, _ := suite.service.Login(ctx, "agency@agency.com", "P@ssword123")

	s, _ := suite.session.Get(token)

	ctx = context.WithValue(ctx, session.User, s)
	profile, err := suite.service.GetProfile(ctx)
	suite.Nil(err)
	suite.NotNil(profile)
}

func (suite *AccountTestSuite) TestCreateDiverAccount() {
	diver := model.Diver{
		Account: &model.Account{
			Email:    "johndoe@example.com",
			Username: "johndoe",
			Password: "P@ssword123",
			Type:     model.DIVER,
		},
		Level:     model.ADVANCED_OPEN_WATER,
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
	}

	var oldCount int64
	suite.db.Model(&model.Diver{}).Count(&oldCount)

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	err := suite.service.CreateDiverAccount(ctx, &diver)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Diver{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *AccountTestSuite) TestUpdateDiverAccount() {
	diver := model.Diver{
		Account: &model.Account{
			Email:    "johndoe@example.com",
			Username: "johndoe",
			Password: "P@ssword123",
			Type:     model.DIVER,
		},
		Level:     model.ADVANCED_OPEN_WATER,
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.service.CreateDiverAccount(ctx, &diver)

	updatedDiver := model.Diver{
		Account: &model.Account{
			Email:       "janedoe@example.com",
			Username:    "janedoe",
			Password:    "P@ssword1",
			OldPassword: "P@ssword123",
			Type:        model.DIVER,
		},
		Level:     model.RESCUE,
		FirstName: "Jane",
		LastName:  "Doe",
		Phone:     "+32111111111",
		BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
	}

	token, _ := suite.service.Login(ctx, "johndoe@example.com", "P@ssword123")
	s, _ := suite.session.Get(token)
	ctx = context.WithValue(ctx, session.User, s)

	err := suite.service.UpdateDiverAccount(ctx, &updatedDiver)
	suite.Nil(err)

	token, err = suite.service.Login(ctx, "janedoe@example.com", "P@ssword1")
	suite.Nil(err)
	suite.NotEmpty(token)

	s, err = suite.session.Get(token)
	suite.Nil(err)
	suite.NotNil(s)

	record, ok := s.(*model.Diver)
	suite.True(ok)
	suite.True(record.Account.Email == updatedDiver.Account.Email && record.Account.Username == updatedDiver.Account.Username &&
		record.FirstName == updatedDiver.FirstName && record.LastName == updatedDiver.LastName &&
		record.Phone == updatedDiver.Phone && record.BirthDate == updatedDiver.BirthDate && record.Level == updatedDiver.Level,
	)
}

func (suite *AccountTestSuite) TestLoginDiver() {
	diver := model.Diver{
		Account: &model.Account{
			Email:    "johndoe@example.com",
			Username: "johndoe",
			Password: "P@ssword123",
			Type:     model.DIVER,
		},
		Level:     model.ADVANCED_OPEN_WATER,
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.service.CreateDiverAccount(ctx, &diver)

	token, err := suite.service.Login(ctx, "johndoe@example.com", "P@ssword123")
	suite.Nil(err)
	suite.NotEmpty(token)

	s, err := suite.session.Get(token)
	suite.Nil(err)
	suite.NotNil(s)
}

func (suite *AccountTestSuite) TestProfileDiver() {
	diver := model.Diver{
		Account: &model.Account{
			Email:    "johndoe@example.com",
			Username: "johndoe",
			Password: "P@ssword123",
			Type:     model.DIVER,
		},
		Level:     model.ADVANCED_OPEN_WATER,
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	suite.service.CreateDiverAccount(ctx, &diver)

	token, _ := suite.service.Login(ctx, "johndoe@example.com", "P@ssword123")

	s, _ := suite.session.Get(token)

	ctx = context.WithValue(ctx, session.User, s)
	profile, err := suite.service.GetProfile(ctx)
	suite.Nil(err)
	suite.NotNil(profile)
}

func (suite *AccountTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteAccountService(t *testing.T) {
	suite.Run(t, new(AccountTestSuite))
}
