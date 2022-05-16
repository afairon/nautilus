package repo_test

import (
	"context"
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

type AgencyRepositorySuite struct {
	suite.Suite
	DB *gorm.DB

	repository repo.AgencyRepository
}

func newInMemoryDB() (*gorm.DB, error) {
	db, err := gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})

	if err != nil {
		return nil, err
	}

	err = db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})

	if err != nil {
		return nil, err
	}

	err = db.SetupJoinTable(&model.Trip{}, "DiveMasters", &model.DiveMasterTrip{})

	if err != nil {
		return nil, err
	}

	err = db.SetupJoinTable(&model.Reservation{}, "RoomTypes", &model.ReservationRoomType{})

	if err != nil {
		return nil, err
	}

	return db, nil
}

func (s *AgencyRepositorySuite) SetupSuite() {
	db, err := newInMemoryDB()

	require.NoError(s.T(), err)

	s.DB = db
	s.DB.Logger.LogMode(logger.Info)

	s.repository = repo.NewAgencyRepository(s.DB)
}

func TestAgencyRepositorySuite(t *testing.T) {
	suite.Run(t, new(AgencyRepositorySuite))
}

func (s *AgencyRepositorySuite) TestAgencyCreate() {
	//Arrange
	ctx := context.Background()
	agency := &model.Agency{
		AddressID: 0,
		Address:   model.Address{AddressLine_1: "", AddressLine_2: "", City: "", Postcode: "", Region: "", Country: ""},
		Account: &model.Account{
			Email:       "testing@gmail.com",
			Username:    "pokin",
			Password:    "P@ssword123",
			OldPassword: "iopewr",
			Type:        1,
		},
		Name:  "testingAgency",
		Phone: "0923618383",
	}

	expectedId := 1

	//Act
	agency, err := s.repository.Create(ctx, agency)

	//Assert
	require.NoError(s.T(), err)
	assert.Equal(s.T(), expectedId, int(agency.ID))
}

func (s *AgencyRepositorySuite) TestAgencyUpdate() {
	type updateTestCase struct {
		name    string
		coord   *model.Coordinate
		account *model.Account
	}

	testCases := []updateTestCase{
		{
			name: "update agency with no account and no coordinate",
		},
		{
			name: "update agency with no account",
			coord: &model.Coordinate{
				Lat:  0,
				Long: 0,
			},
		},
		{
			name: "update with account that sets email, username, and password fields to empty",
			account: &model.Account{
				Model: gorm.Model{
					ID: 1,
				},
				Email:       "",
				Username:    "",
				Password:    "",
				OldPassword: "",
			},
		},
	}

	for _, c := range testCases {
		s.Run(c.name, func() {
			//Arrange
			ctx := context.Background()
			agency := &model.Agency{
				Model: gorm.Model{
					ID: 1,
				},
				Coordinate: c.coord,
				Address:    model.Address{AddressLine_1: "", AddressLine_2: "", City: "", Postcode: "", Region: "", Country: ""},
				Account:    c.account,
				Name:       "testingAgency",
				Phone:      "0923618383",
			}

			//Act
			err := s.repository.Update(ctx, agency)

			//Assert
			require.NoError(s.T(), err)
		})
	}
}
