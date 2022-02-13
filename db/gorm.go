package db

import (
	"fmt"

	"github.com/afairon/nautilus/config"
	"github.com/afairon/nautilus/model"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

var GormStore *gorm.DB

func InitGormStore(host string, port int, user, password, dbname string, ssl bool) (*gorm.DB, error) {
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
	// dsn = "postgres://pg:pass@localhost:5432/crud"

	// sqlDB, err := sqlx.Open("postgres", dsn)
	// if err != nil {
	// 	return nil, err
	// }

	// err = sqlDB.Ping()
	// if err != nil {
	// 	return nil, err
	// }

	// GormStore, err := gorm.Open(postgres.New(postgres.Config{
	// 	Conn: sqlDB,
	// }), &gorm.Config{})

	GormStore, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})

	if err != nil {
		return nil, err
	}

	GormStore.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{})

	err = GormStore.SetupJoinTable(&model.Trip{}, "DiveMasters", &model.DiveMasterTrip{})

	if err != nil {
		return nil, err
	}

	return GormStore, nil
}

// InitGormStoreFromConfig creates a postgres connection from configuration.
func InitGormStoreFromConfig(conf *config.PostgreSQL) (*gorm.DB, error) {
	return InitGormStore(
		conf.Host,
		conf.Port,
		conf.User,
		conf.Password,
		conf.DBName,
		conf.SSL,
	)
}
