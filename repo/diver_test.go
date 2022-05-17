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

type DiverTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo DiverRepository
}

func (suite *DiverTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewDiverRepository(suite.db)
}

func (suite *DiverTestSuite) TestCreate() {
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

	_, err := suite.repo.Create(ctx, &diver)
	suite.Nil(err)

	var newCount int64
	suite.db.Model(&model.Diver{}).Count(&newCount)
	suite.Equal(oldCount+1, newCount)
}

func (suite *DiverTestSuite) TestUpdate() {
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

	suite.repo.Create(ctx, &diver)

	updatedDiver := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		Account: &model.Account{
			Model: gorm.Model{
				ID: 1,
			},
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

	err := suite.repo.Update(ctx, &updatedDiver)
	suite.Nil(err)
}

func (suite *DiverTestSuite) TestGet() {
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

	suite.repo.Create(ctx, &diver)

	ret, err := suite.repo.Get(ctx, 1)
	suite.NoError(err)
	suite.True(
		ret.FirstName == diver.FirstName && ret.LastName == diver.LastName &&
			ret.Phone == diver.Phone && ret.BirthDate == diver.BirthDate &&
			ret.Level == diver.Level,
	)
}

// func (suite *DiverTestSuite) TestList() {}

func (suite *DiverTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteDiverRepo(t *testing.T) {
	suite.Run(t, new(DiverTestSuite))
}
