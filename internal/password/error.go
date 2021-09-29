package password

import "errors"

var (
	// ErrLength means that the password is too short.
	ErrLength = errors.New("password: too short")

	// ErrLower means that the password does not contain any lowercase.
	ErrLower = errors.New("password: missing lowercase")

	// ErrUpper means that the password does not contain any uppercase.
	ErrUpper = errors.New("password: missing uppercase")

	// ErrNumber means that the password does not contain any number.
	ErrNumber = errors.New("password: missing number")

	// ErrSpecial means that the password does not contain any special character.
	ErrSpecial = errors.New("password: missing special character")

	// ErrUnknown means that the password contains an unknown character.
	ErrUnknown = errors.New("password: unknown character")
)
