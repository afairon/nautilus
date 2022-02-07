package db

import (
	"fmt"

	"github.com/afairon/nautilus/model"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

var GormStore *gorm.DB

func InitGormStore(host string, user string, password string, dbname string, port int, ssl bool) (*gorm.DB, error) {
	var dsn string

	if ssl {
		dsn = fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=require",
			host,
			port,
			user,
			password,
			dbname,
		)
	} else {
		dsn = fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable",
			host,
			port,
			user,
			password,
			dbname,
		)
	}

	// for testing purpose
	dsn = "postgres://pg:pass@localhost:5432/crud"

	GormStore, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})

	if err != nil {
		return nil, err
	}

	GormStore.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{})

	return GormStore, nil
}
