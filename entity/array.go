package entity

import (
	"database/sql/driver"

	"github.com/lib/pq"
)

// StringArray represents a one-dimensional array of the PostgreSQL character types.
type StringArray []string

// Scan implements the sql.Scanner interface.
func (a *StringArray) Scan(src interface{}) error {
	s := pq.StringArray(*a)
	if err := s.Scan(src); err != nil {
		return err
	}
	return nil
}

// Value implements the driver.Valuer interface.
func (a StringArray) Value() (driver.Value, error) {
	s := pq.StringArray(a)
	return s.Value()
}
