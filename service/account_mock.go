package service

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/session"
	"github.com/stretchr/testify/mock"
)

func NewAccountServiceMock() *accountServiceMock {
	return &accountServiceMock{}
}

type accountServiceMock struct {
	mock.Mock
}

func (m *accountServiceMock) CreateAgencyAccount(ctx context.Context, agency *model.Agency) error {
	args := m.Called(ctx, agency)
	return args.Error(0)
}

func (m *accountServiceMock) CreateDiverAccount(ctx context.Context, diver *model.Diver) error {
	args := m.Called(ctx, diver)
	return args.Error(0)
}
func (m *accountServiceMock) UpdateAccount(ctx context.Context, account *model.Account) error {
	args := m.Called(ctx, account)
	return args.Error(0)
}

func (m *accountServiceMock) UpdateAdminAccount(ctx context.Context, admin *model.Admin) error {
	args := m.Called(ctx, admin)
	return args.Error(0)
}

func (m *accountServiceMock) UpdateAgencyAccount(ctx context.Context, agency *model.Agency) error {
	args := m.Called(ctx, agency)
	return args.Error(0)
}

func (m *accountServiceMock) UpdateDiverAccount(ctx context.Context, diver *model.Diver) error {
	args := m.Called(ctx, diver)
	return args.Error(0)
}
func (m *accountServiceMock) Login(ctx context.Context, email, password string) (string, error) {
	args := m.Called(ctx, email, password)
	return args.String(0), args.Error(1)
}

func (m *accountServiceMock) GetProfile(ctx context.Context) (session.Account, error) {
	args := m.Called(ctx)
	return args.Get(0).(session.Account), args.Error(1)
}
