package db

import (
	"fmt"

	"github.com/afairon/nautilus/model"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

var GormStore *gorm.DB

func NewGormConnection(host string, user string, password string, dbname string, port int, ssl bool) (*gorm.DB, error) {
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

	GormStore, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})

	if err != nil {
		return nil, err
	}

	return GormStore, nil
}

// Automatically migrate when the schemas change
func MigrateGormStore() {
	GormStore.AutoMigrate(&model.Account{}, &model.Agency{}, &model.Diver{})
}
