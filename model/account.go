package model

import (
	"net/mail"
	"strings"

	pass "github.com/afairon/nautilus/internal/password"
	"gorm.io/gorm"
)

// CheckPassword compares the password and the hash.
func (m *Account) CheckPassword(password string) bool {
	return pass.CheckPasswordHash(password, m.Password)
}

// validUsername checks if username is not empty and does not contain spaces.
func (a *Account) validUsername() error {
	// Username is empty.
	if strings.TrimSpace(a.Username) == "" {
		return ErrEmptyUsername
	}

	// Username contains space.
	if strings.Contains(a.Username, " ") {
		return ErrUsernameContainSpace
	}

	return nil
}

// validEmail checks if email is valid.
func (a *Account) validEmail() error {
	a.Email = strings.ToLower(a.Email)

	_, err := mail.ParseAddress(a.Email)
	if err != nil {
		// Invalid email
		return err
	}

	return nil
}

// validPassword checks if password is valid.
func (a *Account) validPassword() error {
	err := pass.ValidatePassword(a.Password)
	if err != nil {
		// Invalid password
		return err
	}

	return nil
}

// Verify checks if username, email, and password are valid.
func (a *Account) Verify() error {
	// Verify username
	err := a.validUsername()
	if err != nil {
		return err
	}

	// Verify email
	err = a.validEmail()
	if err != nil {
		return err
	}

	// Verify password
	err = a.validPassword()
	if err != nil {
		return err
	}

	return nil
}

// BeforeCreate checks user account information and hash password.
func (a *Account) BeforeCreate(tx *gorm.DB) error {
	err := a.Verify()
	if err != nil {
		return err
	}

	var hash string

	if hash, err = pass.HashPassword(a.Password); err != nil {
		return err
	}

	a.Password = hash

	return nil
}

// BeforeUpdate updates non empty fields.
func (a *Account) BeforeUpdate(tx *gorm.DB) error {
	var err error

	if a.Username != "" {
		if err = a.validUsername(); err != nil {
			return err
		}
	}

	if a.Email != "" {
		if err = a.validEmail(); err != nil {
			return err
		}
	}

	if a.Password != "" {
		if err = a.validPassword(); err != nil {
			return err
		}

		var hash string

		if hash, err = pass.HashPassword(a.Password); err != nil {
			return err
		}

		a.Password = hash
		tx.Statement.SetColumn("Password", hash)
	}

	return nil
}

// Verify checks if agency has a valid account.
func (a *Agency) Verify() error {
	if a.Account == nil {
		return ErrMissingAccount
	}

	return a.Account.Verify()
}

// BeforeCreate checks agency information.
func (a *Agency) BeforeCreate(tx *gorm.DB) error {
	err := a.Verify()
	if err != nil {
		return err
	}

	a.Account.Type = AGENCY

	return nil
}

// Verify checks if diver has a valid account.
func (d *Diver) Verify() error {
	if d.Account == nil {
		return ErrMissingAccount
	}

	if strings.TrimSpace(d.FirstName) == "" {
		return ErrEmptyFirstName
	}

	if strings.TrimSpace(d.LastName) == "" {
		return ErrEmptyLastName
	}

	return d.Account.Verify()
}

// BeforeCreate checks diver information.
func (d *Diver) BeforeCreate(tx *gorm.DB) error {
	err := d.Verify()
	if err != nil {
		return err
	}

	if strings.TrimSpace(d.FirstName) == "" {
		return ErrEmptyFirstName
	}

	if strings.TrimSpace(d.LastName) == "" {
		return ErrEmptyLastName
	}

	d.Account.Type = DIVER

	return nil
}

func (d *Diver) BeforeUpdate(tx *gorm.DB) error {
	if strings.TrimSpace(d.FirstName) == "" {
		return ErrEmptyFirstName
	}

	if strings.TrimSpace(d.LastName) == "" {
		return ErrEmptyLastName
	}

	if d.Account != nil {
		d.Account.Type = DIVER
	}

	return nil
}
