package pb

import (
	"database/sql/driver"
	"errors"
)

var (
	// ErrInvalidSource means that the scan source is not of type []byte.
	ErrInvalidSourceEnum = errors.New("enum: scan source is not of type []byte")

	// ErrUnknownEnum means that the enum does not exist.
	ErrUnknownEnum = errors.New("enum: unknown enum")
)

// Scan implements the sql.Scanner interface.
// It maps postgres data type with AccountType enum.
func (m *AccountType) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return ErrInvalidSourceEnum
	}
	v, ok := AccountType_value[string(b)]
	if !ok {
		return ErrUnknownEnum
	}
	*m = AccountType(v)
	return nil
}

// Value implements the driver.Valuer interface.
// It converts AccountType enum to string so that postgres
// can understand.
func (m AccountType) Value() (driver.Value, error) {
	return m.String(), nil
}

// Scan implements the sql.Scanner interface.
// It maps postgres data type with GenderType enum.
func (m *GenderType) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return ErrInvalidSourceEnum
	}
	v, ok := GenderType_value[string(b)]
	if !ok {
		return ErrUnknownEnum
	}
	*m = GenderType(v)
	return nil
}

// Value implements the driver.Valuer interface.
// It converts GenderType enum to string so that postgres
// can understand.
func (m GenderType) Value() (driver.Value, error) {
	return m.String(), nil
}

// Scan implements the sql.Scanner interface.
// It maps postgres data type with LevelType enum.
func (m *LevelType) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return ErrInvalidSourceEnum
	}
	v, ok := LevelType_value[string(b)]
	if !ok {
		return ErrUnknownEnum
	}
	*m = LevelType(v)
	return nil
}

// Value implements the driver.Valuer interface.
// It converts LevelType enum to string so that postgres
// can understand.
func (m LevelType) Value() (driver.Value, error) {
	return m.String(), nil
}

// Scan implements the sql.Scanner interface.
// It maps postgres data type with TripType enum.
func (m *TripType) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return ErrInvalidSourceEnum
	}
	v, ok := TripType_value[string(b)]
	if !ok {
		return ErrUnknownEnum
	}
	*m = TripType(v)
	return nil
}

// Value implements the driver.Valuer interface.
// It converts TripType enum to string so that postgres
// can understand.
func (m TripType) Value() (driver.Value, error) {
	return m.String(), nil
}
