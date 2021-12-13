package db

import (
	"fmt"

	"github.com/afairon/nautilus/config"
	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq"
)

// DB postgres connection
var DB *sqlx.DB

// Connect creates a postgres connection.
func Connect(host string, port int, user, password, dbname string, ssl bool) (*sqlx.DB, error) {
	var dataSourceName string
	if ssl {
		dataSourceName = fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=require",
			host,
			port,
			user,
			password,
			dbname,
		)
	} else {
		dataSourceName = fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable",
			host,
			port,
			user,
			password,
			dbname,
		)
	}

	DB, err := sqlx.Open("postgres", dataSourceName)
	if err != nil {
		return nil, err
	}

	err = DB.Ping()
	if err != nil {
		return nil, err
	}

	return DB, nil
}

// ConnectFromConfig creates a postgres connection from configuration.
func ConnectFromConfig(conf *config.PostgreSQL) (*sqlx.DB, error) {
	return Connect(
		conf.Host,
		conf.Port,
		conf.User,
		conf.Password,
		conf.DBName,
		conf.SSL,
	)
}

// Close closes postgres connection.
func Close() error {
	return DB.Close()
}
