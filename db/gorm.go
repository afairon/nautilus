package db

import (
	"fmt"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

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

	db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})

	if err != nil {
		return nil, err
	}

	return db, nil
}
