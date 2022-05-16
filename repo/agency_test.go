package repo_test

import (
	"context"
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

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

func TestAgencyCreate(t *testing.T) {
	//Arrange
	db, err := newInMemoryDB()

	require.NoError(t, err)

	db.Logger.LogMode(logger.Info)

	agencyRepo := repo.NewAgencyRepository(db)

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
	agency, err = agencyRepo.Create(ctx, agency)

	require.NoError(t, err)
	assert.Equal(t, expectedId, int(agency.ID))
}

func TestAgencyUpdate(t *testing.T) {

}
