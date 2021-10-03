package pb

import (
	"errors"
	"net/mail"
	strings "strings"

	pass "github.com/afairon/nautilus/internal/password"
)

// SetUsername sets username only if the username is valid.
func (m *Account) SetUsername(username string) error {
	// Username is empty.
	if strings.TrimSpace(username) == "" {
		return errors.New("username: empty")
	}

	// Username contains space.
	if strings.Contains(username, " ") {
		return errors.New("username: contains space")
	}

	m.Username = username

	return nil
}

// SetEmail sets the email only if the email is valid.
func (m *Account) SetEmail(email string) error {
	_, err := mail.ParseAddress(email)
	if err != nil {
		return err
	}

	m.Email = email
	return nil
}

// CheckPassword compares the password and the hash.
func (m *Account) CheckPassword(password string) bool {
	return pass.CheckPasswordHash(password, m.Password)
}

// SetPassword checks if the password is sufficiently strong,
// if so it hashes the password and stores the hash as the
// password attribute.
func (m *Account) SetPassword(password string) error {
	err := pass.ValidatePassword(password)
	if err != nil {
		return err
	}
	var hash string

	if hash, err = pass.HashPassword(password); err != nil {
		return err
	}

	m.Password = hash
	return nil
}
