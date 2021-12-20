package entity

import (
	"errors"
	"net/mail"
	"strings"

	pass "github.com/afairon/nautilus/internal/password"
	"github.com/afairon/nautilus/pb"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
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
	email = strings.ToLower(email)
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

// SetAccount checks if the username is valid, the email is valid,
// and the password is valid.
func (m *Account) SetAccount(src *pb.Account) error {
	if src == nil {
		return status.Error(codes.InvalidArgument, "missing account")
	}
	// Set a valid username.
	err := m.SetUsername(src.GetUsername())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid email.
	err = m.SetEmail(strings.ToLower(src.GetEmail()))
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid password.
	err = m.SetPassword(src.GetPassword())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	return nil
}
