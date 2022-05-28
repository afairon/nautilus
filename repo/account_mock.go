package repo

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/mock"
)

type accountRepositoryMock struct {
	mock.Mock
}

func NewAccountRepositoryMock() *accountRepositoryMock {
	return &accountRepositoryMock{}
}

func (m *accountRepositoryMock) Create(ctx context.Context, account *model.Account) (*model.Account, error) {
	args := m.Called(ctx, account)
	if v, ok := args.Get(0).(*model.Account); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *accountRepositoryMock) Update(ctx context.Context, account *model.Account) error {
	args := m.Called(ctx, account)
	return args.Error(0)
}

func (m *accountRepositoryMock) FindByID(ctx context.Context, id uint64) (*model.Account, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Account); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *accountRepositoryMock) FindByEmail(ctx context.Context, email string) (*model.Account, error) {
	args := m.Called(ctx, email)
	if v, ok := args.Get(0).(*model.Account); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *accountRepositoryMock) FindByUsername(ctx context.Context, username string) (*model.Account, error) {
	args := m.Called(ctx, username)
	if v, ok := args.Get(0).(*model.Account); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *accountRepositoryMock) FindAdminByAccountID(ctx context.Context, id uint64) (*model.Admin, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Admin); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *accountRepositoryMock) FindAgencyByAccountID(ctx context.Context, id uint64) (*model.Agency, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Agency); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *accountRepositoryMock) FindDiverByAccountID(ctx context.Context, id uint64) (*model.Diver, error) {
	args := m.Called(ctx, id)
	if v, ok := args.Get(0).(*model.Diver); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}

func (m *accountRepositoryMock) List(ctx context.Context, limit, offset uint64) ([]*model.Account, error) {
	args := m.Called(ctx, limit, offset)
	if v, ok := args.Get(0).([]*model.Account); ok {
		return v, args.Error(1)
	}

	return nil, args.Error(1)
}
