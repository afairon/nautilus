package entity

import (
	"errors"
	"strings"
)

func (m *DiveMaster) SetDiveMasterFirstName(firstName string) error {
	// Dive master's first name is empty.
	if strings.TrimSpace(firstName) == "" {
		return errors.New("firstName: empty")
	}

	// Dive master's first name contains space.
	if strings.Contains(firstName, " ") {
		return errors.New("firstName: contains space")
	}

	m.FirstName = firstName

	return nil
}

func (m *DiveMaster) SetDiveMasterLastName(lastName string) error {
	// Dive master's last name is empty.
	if strings.TrimSpace(lastName) == "" {
		return errors.New("lastName: empty")
	}

	// Dive master's last name contains space.
	if strings.Contains(lastName, " ") {
		return errors.New("lastName: contains space")
	}

	m.LastName = lastName

	return nil
}
