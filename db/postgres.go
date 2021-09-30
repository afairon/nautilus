package db

import (
	"fmt"

	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq"
)

// DB postgres connection
var DB *sqlx.DB

// Connect creates a postgres connection.
func Connect(host string, port int, user, password, dbname string) (*sqlx.DB, error) {
	dataSourceName := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=require",
		host,
		port,
		user,
		password,
		dbname,
	)
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

// Close closes postgres connection.
func Close() error {
	return DB.Close()
}
