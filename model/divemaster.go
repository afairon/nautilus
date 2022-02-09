package model

import (
	"errors"
	"strings"

	"github.com/afairon/nautilus/pb"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
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

func (m *DiveMaster) SetDiveMaster(src *pb.DiveMaster) error {
	// Set a valid dive master first name
	err := m.SetDiveMasterFirstName(src.GetFirstName())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid dive master last name
	err = m.SetDiveMasterLastName(src.GetLastName())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	return nil
}
