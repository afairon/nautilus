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
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
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

func TestAccountUpdateAccount(t *testing.T) {
	type updateAccountTestCase struct {
		name          string
		account       *pb.Account
		expectedError error
	}

	testCases := []updateAccountTestCase{
		{
			name:          "invalid request account nil",
			expectedError: status.Error(codes.InvalidArgument, "account: invalid request"),
		},
		{
			name:          "successfully update account",
			account:       &pb.Account{},
			expectedError: nil,
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			ctx := context.Background()
			account := &pb.UpdateAccountRequest{
				Account: c.account,
			}
			accountService := service.NewAccountServiceMock()
			accountService.On("UpdateAccount", ctx, &model.Account{}).Return(nil)
			accountHandler := handler.NewAccountHandler(accountService)

			//Act
			_, err := accountHandler.UpdateAccount(ctx, account)

			//Assert
			assert.ErrorIs(t, err, c.expectedError)
		})
	}

	t.Run("UpdateAccount service error", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		account := &pb.UpdateAccountRequest{
			Account: &pb.Account{},
		}
		accountService := service.NewAccountServiceMock()
		accountService.On("UpdateAccount", ctx, &model.Account{}).Return(errors.New(""))
		accountHandler := handler.NewAccountHandler(accountService)

		//Act
		_, err := accountHandler.UpdateAccount(ctx, account)

		//Assert
		assert.Error(t, err)
	})
}

func TestAccountLogin(t *testing.T) {
	t.Run("Login successfully", func(t *testing.T) {
		//Arrange
		expectedToken := "tokenString"
		ctx := context.Background()
		loginRequest := &pb.LoginRequest{
			Email:    "pokin67890@gmail.com",
			Password: "P@ssword123",
		}
		accountService := service.NewAccountServiceMock()
		accountService.On("Login", ctx, "pokin67890@gmail.com", "P@ssword123").Return(expectedToken, nil)
		accountHandler := handler.NewAccountHandler(accountService)

		//Act
		response, err := accountHandler.Login(ctx, loginRequest)

		//Assert
		assert.Equal(t, expectedToken, response.Token)
		assert.NoError(t, err)
	})

	t.Run("Login failed", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		loginRequest := &pb.LoginRequest{
			Email:    "pokin67890@gmail.com",
			Password: "P@ssword123",
		}
		accountService := service.NewAccountServiceMock()
		accountService.On("Login", ctx, "pokin67890@gmail.com", "P@ssword123").Return("", errors.New(""))
		accountHandler := handler.NewAccountHandler(accountService)

		//Act
		response, err := accountHandler.Login(ctx, loginRequest)

		//Assert
		assert.Nil(t, response)
		assert.Error(t, err)
	})
}

func TestAccountGetProfile(t *testing.T) {
	t.Run("get agency profile", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		accountService := service.NewAccountServiceMock()
		agencyAccount := &model.Agency{}
		expected := agencyAccount.GetProto()
		accountService.On("GetProfile", ctx).Return(agencyAccount, nil)
		accountHandler := handler.NewAccountHandler(accountService)

		//Act
		response, err := accountHandler.GetProfile(ctx, &emptypb.Empty{})

		//Assert
		assert.Equal(t, expected, response.GetAgency())
		assert.NoError(t, err)
	})

	t.Run("get diver profile", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		accountService := service.NewAccountServiceMock()
		diverAccount := &model.Diver{}
		expected := diverAccount.GetProto()
		accountService.On("GetProfile", ctx).Return(diverAccount, nil)
		accountHandler := handler.NewAccountHandler(accountService)

		//Act
		response, err := accountHandler.GetProfile(ctx, &emptypb.Empty{})

		//Assert
		assert.Equal(t, expected, response.GetDiver())
		assert.NoError(t, err)
	})

	t.Run("get profile service fail", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		accountService := service.NewAccountServiceMock()
		accountService.On("GetProfile", ctx).Return(nil, errors.New("service error"))
		accountHandler := handler.NewAccountHandler(accountService)

		//Act
		response, err := accountHandler.GetProfile(ctx, &emptypb.Empty{})

		//Assert
		assert.Nil(t, response)
		assert.Error(t, err)
	})
}
