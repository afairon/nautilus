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

func (m AccountType) Value() (driver.Value, error) {
	return m.String(), nil
}

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

func (m GenderType) Value() (driver.Value, error) {
	return m.String(), nil
}

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

func (m LevelType) Value() (driver.Value, error) {
	return m.String(), nil
}

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

func (m TripType) Value() (driver.Value, error) {
	return m.String(), nil
}
