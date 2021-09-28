package db

import (
	"fmt"

	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq"
)

// DB postgres connection
var DB *sqlx.DB

// Connect creates a postgres connection.
func Connect(host string, port int, user, password, dbname string) (err error) {
	dataSourceName := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=require",
		host,
		port,
		user,
		password,
		dbname,
	)
	DB, err = sqlx.Open("postgres", dataSourceName)
	if err != nil {
		return
	}

	err = DB.Ping()

	return
}

// Close closes postgres connection.
func Close() error {
	return DB.Close()
}
