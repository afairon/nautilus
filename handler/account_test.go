package handler_test

import (
	"context"
	"errors"
	"testing"

	"github.com/afairon/nautilus/handler"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/stretchr/testify/assert"
)

func TestAccountCreate(t *testing.T) {
	type accountCreateTestCase struct {
		name        string
		expectError bool
	}

	testCases := []accountCreateTestCase{
		{
			name:        "successfully create agency",
			expectError: false,
		},
		{
			name:        "failed creating agency account",
			expectError: true,
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			ctx := context.Background()
			accountRequest := &pb.AccountRequest{
				Type: &pb.AccountRequest_Agency{
					Agency: &pb.Agency{},
				},
			}
			accountService := service.NewAccountServiceMock()

			err := errors.New("")
			if !c.expectError {
				err = nil
			}

			accountService.On("CreateAgencyAccount", ctx, &model.Agency{}).Return(err)

			accountHandler := handler.NewAccountHandler(accountService)

			//Act
			_, err = accountHandler.Create(ctx, accountRequest)

			//Assert
			if !c.expectError {
				assert.NoError(t, err)
			} else {
				assert.Error(t, err)
			}
		})
	}

	testCases = []accountCreateTestCase{
		{
			name:        "successfully create diver",
			expectError: false,
		},
		{
			name:        "failed creating diver account",
			expectError: true,
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			ctx := context.Background()
			accountRequest := &pb.AccountRequest{
				Type: &pb.AccountRequest_Diver{
					Diver: &pb.Diver{},
				},
			}
			accountService := service.NewAccountServiceMock()

			err := errors.New("")
			if !c.expectError {
				err = nil
			}

			accountService.On("CreateDiverAccount", ctx, &model.Diver{}).Return(err)

			accountHandler := handler.NewAccountHandler(accountService)

			//Act
			_, err = accountHandler.Create(ctx, accountRequest)

			//Assert
			if !c.expectError {
				assert.NoError(t, err)
			} else {
				assert.Error(t, err)
			}
		})
	}
}

func TestAccountUpdate(t *testing.T) {
	type accountUpdateTestCase struct {
		name        string
		expectError bool
	}

	testCases := []accountUpdateTestCase{
		{
			name:        "successfully update agency",
			expectError: false,
		},
		{
			name:        "failed update agency account",
			expectError: true,
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			ctx := context.Background()
			updateRequest := &pb.UpdateRequest{
				Type: &pb.UpdateRequest_Agency{
					Agency: &pb.Agency{},
				},
			}
			accountService := service.NewAccountServiceMock()

			err := errors.New("")
			if !c.expectError {
				err = nil
			}

			accountService.On("UpdateAgencyAccount", ctx, &model.Agency{}).Return(err)

			accountHandler := handler.NewAccountHandler(accountService)

			//Act
			_, err = accountHandler.Update(ctx, updateRequest)

			//Assert
			if !c.expectError {
				assert.NoError(t, err)
			} else {
				assert.Error(t, err)
			}
		})
	}

	testCases = []accountUpdateTestCase{
		{
			name:        "successfully update diver",
			expectError: false,
		},
		{
			name:        "failed update diver account",
			expectError: true,
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			ctx := context.Background()
			updateRequest := &pb.UpdateRequest{
				Type: &pb.UpdateRequest_Diver{
					Diver: &pb.Diver{},
				},
			}
			accountService := service.NewAccountServiceMock()

			err := errors.New("")
			if !c.expectError {
				err = nil
			}

			accountService.On("UpdateDiverAccount", ctx, &model.Diver{}).Return(err)

			accountHandler := handler.NewAccountHandler(accountService)

			//Act
			_, err = accountHandler.Update(ctx, updateRequest)

			//Assert
			if !c.expectError {
				assert.NoError(t, err)
			} else {
				assert.Error(t, err)
			}
		})
	}
}

func TestUpdateAccount(t *testing.T) {
	type updateAccountTestCase struct {
		name string
	}
}
