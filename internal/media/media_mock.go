package media

import (
	"io"

	"github.com/stretchr/testify/mock"
)

type storeMock struct {
	mock.Mock
}

func NewStoreMock() *storeMock {
	return &storeMock{}
}

func (m *storeMock) Put(filename string, perm Permission, reader io.ReadSeeker) (string, error) {
	args := m.Called(filename, perm, reader)
	return args.String(0), args.Error(1)
}

func (m *storeMock) Get(filename string, signed bool) string {
	args := m.Called(filename, signed)
	return args.String(0)
}

func (m *storeMock) Delete(filename string) error {
	args := m.Called(filename)
	return args.Error(0)
}
