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
	"gorm.io/gorm"
)

func TestLiveaboardGetLiveaboard(t *testing.T) {
	type liveaboardGetLiveaboardTestCases struct {
		name           string
		expectedError  error
		expectedOutput *model.Liveaboard
	}

	testCases := []liveaboardGetLiveaboardTestCases{
		{
			name:          "successful",
			expectedError: nil,
			expectedOutput: &model.Liveaboard{
				Model: gorm.Model{
					ID: 1,
				},
			},
		},
		{
			name:          "fail",
			expectedError: errors.New(""),
		},
	}

	req := &pb.GetLiveaboardRequest{
		Id: 1,
	}
	ctx := context.Background()

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			liveaboardService := service.NewLiveaboardServiceMock()
			liveaboardService.On("GetLiveaboard", ctx, req.Id).Return(c.expectedOutput, c.expectedError)
			liveaboardHandler := handler.NewLiveaboardHandler(liveaboardService)

			//Act
			resp, err := liveaboardHandler.GetLiveaboard(ctx, req)

			//Assert
			if c.expectedError != nil {
				assert.ErrorIs(t, err, c.expectedError)
				assert.Nil(t, resp)
			} else {
				assert.NoError(t, err)
				assert.Equal(t, int(c.expectedOutput.ID), int(resp.Liveaboard.Id))
			}
		})
	}
}
