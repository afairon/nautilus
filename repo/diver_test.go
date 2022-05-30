package repo

import (
	"context"
	"errors"
	"testing"
	"time"

	"github.com/afairon/nautilus/internal/password"
	"github.com/afairon/nautilus/model"
	"github.com/mattn/go-sqlite3"
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

type testCaseCreateDiver struct {
	name  string
	input model.Diver
	err   error
}

func (suite *DiverTestSuite) TestCreate() {
	TestCases := []testCaseCreateDiver{
		{
			name: "Success",
			input: model.Diver{
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
			},
			err: nil,
		},
		{
			name: "Duplicated email",
			input: model.Diver{
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
			},
			err: sqlite3.ErrConstraint,
		},
		{
			name: "Invalid password",
			input: model.Diver{
				Account: &model.Account{
					Email:    "janedoe@example.com",
					Username: "janedoe",
					Password: "verysecret",
					Type:     model.DIVER,
				},
				Level:     model.OPEN_WATER,
				FirstName: "Jane",
				LastName:  "Doe",
				Phone:     "+66222222222",
				BirthDate: time.Date(1991, 10, 10, 0, 0, 0, 0, time.UTC),
			},
			err: password.ErrUpper,
		},
	}

	var oldCount int64
	var newCount int64

	suite.db.Model(&model.Diver{}).Count(&oldCount)

	for _, tc := range TestCases {
		suite.T().Run(tc.name, func(t *testing.T) {
			ctx := context.Background()
			ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
			defer cancel()

			_, err := suite.repo.Create(ctx, &tc.input)
			if tc.err == nil {
				assert.NoError(t, err)
				suite.db.Model(&model.Diver{}).Count(&newCount)
				assert.Equal(t, oldCount+1, newCount)
				oldCount++
				return
			}

			var sqliteErr sqlite3.Error
			if errors.As(err, &sqliteErr) {
				assert.ErrorIs(t, sqliteErr.Code, tc.err)
				return
			}

			assert.ErrorIs(t, err, tc.err)
		})
	}
}

type testCaseUpdateDiver struct {
	name  string
	input model.Diver
	err   error
}

func (suite *DiverTestSuite) TestUpdate() {
	divers := []model.Diver{
		{
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
		},
		{
			Account: &model.Account{
				Email:    "janedoe@example.com",
				Username: "jane",
				Password: "P@ssword123",
				Type:     model.DIVER,
			},
			Level:     model.OPEN_WATER,
			FirstName: "Jane",
			LastName:  "Doe",
			Phone:     "+66222222222",
			BirthDate: time.Date(1995, 1, 15, 0, 0, 0, 0, time.UTC),
		},
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	for _, d := range divers {
		suite.repo.Create(ctx, &d)
	}

	TestCases := []testCaseUpdateDiver{
		{
			name: "Success update profile",
			input: model.Diver{
				Model: gorm.Model{
					ID: 1,
				},
				Level:     model.RESCUE,
				FirstName: "Jane",
				LastName:  "Doe",
				Phone:     "+32111111111",
				BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
			},
			err: nil,
		},
		{
			name: "Success update account",
			input: model.Diver{
				Model: gorm.Model{
					ID: 1,
				},
				Account: &model.Account{
					Model: gorm.Model{
						ID: 1,
					},
					Email:       "joker@example.com",
					Username:    "joker",
					Password:    "P@ssword1",
					OldPassword: "P@ssword123",
					Type:        model.DIVER,
				},
				Level:     model.RESCUE,
				FirstName: "Joker",
				LastName:  "Crazy",
				Phone:     "+32111111111",
				BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
			},
			err: nil,
		},
		{
			name: "Invalid diver id",
			input: model.Diver{
				Model: gorm.Model{
					ID: 0,
				},
				Level:     model.RESCUE,
				FirstName: "Jane",
				LastName:  "Doe",
				Phone:     "+32111111111",
				BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
			},
			err: gorm.ErrMissingWhereClause,
		},
		{
			name: "Invalid account id",
			input: model.Diver{
				Model: gorm.Model{
					ID: 1,
				},
				Account: &model.Account{
					Model: gorm.Model{
						ID: 0,
					},
					Email:       "joker@example.com",
					Username:    "joker",
					Password:    "P@ssword1",
					OldPassword: "P@ssword123",
					Type:        model.DIVER,
				},
				Level:     model.RESCUE,
				FirstName: "Joker",
				LastName:  "Crazy",
				Phone:     "+32111111111",
				BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
			},
			err: gorm.ErrMissingWhereClause,
		},
		{
			name: "Duplicate email",
			input: model.Diver{
				Model: gorm.Model{
					ID: 1,
				},
				Account: &model.Account{
					Model: gorm.Model{
						ID: 1,
					},
					Email:    "janedoe@example.com",
					Username: "janedoe",
					Type:     model.DIVER,
				},
				Level:     model.RESCUE,
				FirstName: "Jane",
				LastName:  "Doe",
				Phone:     "+32111111111",
				BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
			},
			err: sqlite3.ErrConstraint,
		},
		{
			name: "Invalid password",
			input: model.Diver{
				Model: gorm.Model{
					ID: 1,
				},
				Account: &model.Account{
					Model: gorm.Model{
						ID: 1,
					},
					Email:       "janedoe@example.com",
					Username:    "janedoe",
					Password:    "verysecret",
					OldPassword: "P@ssword123",
					Type:        model.DIVER,
				},
				Level:     model.RESCUE,
				FirstName: "Jane",
				LastName:  "Doe",
				Phone:     "+32111111111",
				BirthDate: time.Date(1995, 4, 15, 10, 15, 12, 0, time.UTC),
			},
			err: password.ErrUpper,
		},
	}

	for _, tc := range TestCases {
		suite.T().Run(tc.name, func(t *testing.T) {
			ctx := context.Background()
			ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
			defer cancel()

			err := suite.repo.Update(ctx, &tc.input)
			if tc.err == nil {
				assert.NoError(t, err)
				return
			}

			var sqliteErr sqlite3.Error
			if errors.As(err, &sqliteErr) {
				assert.ErrorIs(t, sqliteErr.Code, tc.err)
				return
			}

			assert.ErrorIs(t, err, tc.err)
		})
	}
}

type testCaseGetDiver struct {
	name   string
	input  uint64
	output model.Diver
	err    error
}

func (suite *DiverTestSuite) TestGet() {
	divers := []model.Diver{
		{
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
		},
		{
			Account: &model.Account{
				Email:    "janedoe@example.com",
				Username: "jane",
				Password: "P@ssword123",
				Type:     model.DIVER,
			},
			Level:     model.OPEN_WATER,
			FirstName: "Jane",
			LastName:  "Doe",
			Phone:     "+66222222222",
			BirthDate: time.Date(1995, 1, 15, 0, 0, 0, 0, time.UTC),
		},
	}

	ctx := context.Background()
	ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	for _, d := range divers {
		suite.repo.Create(ctx, &d)
	}

	TestCases := []testCaseGetDiver{
		{
			name:  "Success",
			input: 1,
			output: model.Diver{
				Model: gorm.Model{
					ID: 1,
				},
				Level:     model.ADVANCED_OPEN_WATER,
				FirstName: "John",
				LastName:  "Doe",
				Phone:     "+66111111111",
				BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
			},
			err: nil,
		},
		{
			name:  "Success",
			input: 2,
			output: model.Diver{
				Model: gorm.Model{
					ID: 2,
				},
				Level:     model.OPEN_WATER,
				FirstName: "Jane",
				LastName:  "Doe",
				Phone:     "+66222222222",
				BirthDate: time.Date(1995, 1, 15, 0, 0, 0, 0, time.UTC),
			},
			err: nil,
		},
		{
			name:   "Record not found",
			input:  0,
			output: model.Diver{},
			err:    gorm.ErrRecordNotFound,
		},
		{
			name:   "Record not found",
			input:  5,
			output: model.Diver{},
			err:    gorm.ErrRecordNotFound,
		},
	}

	for _, tc := range TestCases {
		suite.T().Run(tc.name, func(t *testing.T) {
			ctx := context.Background()
			ctx, cancel := context.WithTimeout(ctx, 5*time.Second)
			defer cancel()

			ret, err := suite.repo.Get(ctx, tc.input)
			if tc.err == nil {
				assert.NoError(t, err)
				assert.True(t, ret.ID == tc.output.ID &&
					ret.FirstName == tc.output.FirstName && ret.LastName == tc.output.LastName &&
					ret.Phone == tc.output.Phone && ret.BirthDate == tc.output.BirthDate &&
					ret.Level == tc.output.Level,
				)
				return
			}

			var sqliteErr sqlite3.Error
			if errors.As(err, &sqliteErr) {
				assert.ErrorIs(t, sqliteErr.Code, tc.err)
				return
			}

			assert.ErrorIs(t, err, tc.err)
		})
	}
}

// func (suite *DiverTestSuite) TestList() {}

func (suite *DiverTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteDiverRepo(t *testing.T) {
	suite.Run(t, new(DiverTestSuite))
}
