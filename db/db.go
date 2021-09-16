package db

import (
	"fmt"

	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq"
)

var DB *sqlx.DB

func Connect(host string, port int, user, password, dbname string) (err error) {
	dataSourceName := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=require",
		host,
		port,
		user,
		password,
		dbname)
	DB, err = sqlx.Open("postgres", dataSourceName)
	if err != nil {
		return
	}

	err = DB.Ping()

	return
}

func Close() error {
	return DB.Close()
}
