package db

import (
	"database/sql"
	"fmt"
)

func NewDB(connStr string) *sql.DB {
	db, err := sql.Open("postgres", connStr)

	if err != nil {
		fmt.Println(err)
	}

	err = db.Ping()
	if err != nil {
		fmt.Println(err)
	}

	return db
}
