package service

import (
	"context"
	"testing"
	"time"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"github.com/stretchr/testify/mock"
	"github.com/stretchr/testify/suite"
	"gorm.io/gorm"
)

type CommentTestSuite struct {
	suite.Suite
	mock    repo.CommentRepositoryMock
	service CommentService
}

func (suite *CommentTestSuite) SetupTest() {
	suite.mock = repo.CommentRepositoryMock{}
	suite.service = NewCommentService(&repo.Repo{
		Queries: &repo.Queries{
			Comment: &suite.mock,
		},
	})
}

func (suite *CommentTestSuite) TestCreateTripComment() {
	comment := model.TripComment{
		Comment:       "Trip Comment",
		Stars:         5,
		ReservationID: 1,
	}

	suite.mock.On("CreateTripComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(&model.TripComment{
		Model: gorm.Model{
			ID: 1,
		},
		DiverID:       1,
		Comment:       "Trip Comment",
		Stars:         5,
		ReservationID: 1,
	}, nil,
	)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	ret, err := suite.service.CreateTripComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "CreateTripComment", ctx, &comment)
	suite.NoError(err)
	suite.NotNil(ret)
}

func (suite *CommentTestSuite) TestCreateHotelComment() {
	comment := model.HotelComment{
		Comment:       "Hotel Comment",
		Stars:         5,
		ReservationID: 1,
	}

	suite.mock.On("CreateHotelComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(&model.HotelComment{
		Model: gorm.Model{
			ID: 1,
		},
		DiverID:       1,
		Comment:       "Hotel Comment",
		Stars:         5,
		ReservationID: 1,
	}, nil,
	)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	ret, err := suite.service.CreateHotelComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "CreateHotelComment", ctx, &comment)
	suite.NoError(err)
	suite.NotNil(ret)
}

func (suite *CommentTestSuite) TestCreateLiveaboardComment() {
	comment := model.LiveaboardComment{
		Comment:       "Liveaboard Comment",
		Stars:         5,
		ReservationID: 1,
	}

	suite.mock.On("CreateLiveaboardComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(&model.LiveaboardComment{
		Model: gorm.Model{
			ID: 1,
		},
		DiverID:       1,
		Comment:       "Liveaboard Comment",
		Stars:         5,
		ReservationID: 1,
	}, nil,
	)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	ret, err := suite.service.CreateLiveaboardComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "CreateLiveaboardComment", ctx, &comment)
	suite.NoError(err)
	suite.NotNil(ret)
}

func (suite *CommentTestSuite) TestGetTripComment() {
	comment := model.TripComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment:       "Trip Comment",
		Stars:         5,
		ReservationID: 1,
	}

	suite.mock.On("FindTripComment", mock.AnythingOfType("*context.emptyCtx"), uint64(1)).Return(&comment, nil)

	ctx := context.Background()
	ret, err := suite.service.GetTripComment(ctx, &model.TripComment{Model: gorm.Model{ID: 1}})

	suite.mock.AssertCalled(suite.T(), "FindTripComment", ctx, uint64(1))
	suite.NoError(err)
	suite.Equal(&comment, ret)
}

func (suite *CommentTestSuite) TestGetHotelComment() {
	comment := model.HotelComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment:       "Hotel Comment",
		Stars:         5,
		ReservationID: 1,
	}

	suite.mock.On("FindHotelComment", mock.AnythingOfType("*context.emptyCtx"), uint64(1)).Return(&comment, nil)

	ctx := context.Background()
	ret, err := suite.service.GetHotelComment(ctx, &model.HotelComment{Model: gorm.Model{ID: 1}})

	suite.mock.AssertCalled(suite.T(), "FindHotelComment", ctx, uint64(1))
	suite.NoError(err)
	suite.Equal(&comment, ret)
}

func (suite *CommentTestSuite) TestGetLiveaboardComment() {
	comment := model.LiveaboardComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment:       "Liveaboard Comment",
		Stars:         5,
		ReservationID: 1,
	}

	suite.mock.On("FindLiveaboardComment", mock.AnythingOfType("*context.emptyCtx"), uint64(1)).Return(&comment, nil)

	ctx := context.Background()
	ret, err := suite.service.GetLiveaboardComment(ctx, &model.LiveaboardComment{Model: gorm.Model{ID: 1}})

	suite.mock.AssertCalled(suite.T(), "FindLiveaboardComment", ctx, uint64(1))
	suite.NoError(err)
	suite.Equal(&comment, ret)
}

func (suite *CommentTestSuite) TestUpdateTripComment() {
	comment := model.TripComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment: "Trip Comment",
		Stars:   5,
		Reservation: &model.Reservation{
			Model: &gorm.Model{
				ID: 1,
			},
			DiverID: 1,
		},
	}

	suite.mock.On("FindTripComment", mock.AnythingOfType("*context.valueCtx"), uint64(1)).Return(&comment, nil)
	suite.mock.On("UpdateTripComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(nil)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	err := suite.service.UpdateTripComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "FindTripComment", ctx, uint64(1))
	suite.mock.AssertCalled(suite.T(), "UpdateTripComment", ctx, &comment)
	suite.NoError(err)
}

func (suite *CommentTestSuite) TestUpdateHotelComment() {
	comment := model.HotelComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment: "Hotel Comment",
		Stars:   5,
		Reservation: &model.Reservation{
			Model: &gorm.Model{
				ID: 1,
			},
			DiverID: 1,
		},
	}

	suite.mock.On("FindHotelComment", mock.AnythingOfType("*context.valueCtx"), uint64(1)).Return(&comment, nil)
	suite.mock.On("UpdateHotelComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(nil)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	err := suite.service.UpdateHotelComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "FindHotelComment", ctx, uint64(1))
	suite.mock.AssertCalled(suite.T(), "UpdateHotelComment", ctx, &comment)
	suite.NoError(err)
}

func (suite *CommentTestSuite) TestUpdateLiveaboardComment() {
	comment := model.LiveaboardComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment: "Liveaboard Comment",
		Stars:   5,
		Reservation: &model.Reservation{
			Model: &gorm.Model{
				ID: 1,
			},
			DiverID: 1,
		},
	}

	suite.mock.On("FindLiveaboardComment", mock.AnythingOfType("*context.valueCtx"), uint64(1)).Return(&comment, nil)
	suite.mock.On("UpdateLiveaboardComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(nil)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	err := suite.service.UpdateLiveaboardComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "FindLiveaboardComment", ctx, uint64(1))
	suite.mock.AssertCalled(suite.T(), "UpdateLiveaboardComment", ctx, &comment)
	suite.NoError(err)
}

func (suite *CommentTestSuite) TestDeleteTripComment() {
	comment := model.TripComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment: "Trip Comment",
		Stars:   5,
		Reservation: &model.Reservation{
			Model: &gorm.Model{
				ID: 1,
			},
			DiverID: 1,
		},
	}

	suite.mock.On("FindTripComment", mock.AnythingOfType("*context.valueCtx"), uint64(1)).Return(&comment, nil)
	suite.mock.On("DeleteTripComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(nil)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	err := suite.service.DeleteTripComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "FindTripComment", ctx, uint64(1))
	suite.mock.AssertCalled(suite.T(), "DeleteTripComment", ctx, &comment)
	suite.NoError(err)
}

func (suite *CommentTestSuite) TestDeleteHotelComment() {
	comment := model.HotelComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment: "Hotel Comment",
		Stars:   5,
		Reservation: &model.Reservation{
			Model: &gorm.Model{
				ID: 1,
			},
			DiverID: 1,
		},
	}

	suite.mock.On("FindHotelComment", mock.AnythingOfType("*context.valueCtx"), uint64(1)).Return(&comment, nil)
	suite.mock.On("DeleteHotelComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(nil)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	err := suite.service.DeleteHotelComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "FindHotelComment", ctx, uint64(1))
	suite.mock.AssertCalled(suite.T(), "DeleteHotelComment", ctx, &comment)
	suite.NoError(err)
}

func (suite *CommentTestSuite) TestDeleteLiveaboardComment() {
	comment := model.LiveaboardComment{
		Model: gorm.Model{
			ID: 1,
		},
		Comment: "Liveaboard Comment",
		Stars:   5,
		Reservation: &model.Reservation{
			Model: &gorm.Model{
				ID: 1,
			},
			DiverID: 1,
		},
	}

	suite.mock.On("FindLiveaboardComment", mock.AnythingOfType("*context.valueCtx"), uint64(1)).Return(&comment, nil)
	suite.mock.On("DeleteLiveaboardComment", mock.AnythingOfType("*context.valueCtx"), &comment).Return(nil)

	user := model.Diver{
		Model: gorm.Model{
			ID: 1,
		},
		FirstName: "John",
		LastName:  "Doe",
		Phone:     "+66111111111",
		BirthDate: time.Date(1990, 10, 10, 0, 0, 0, 0, time.UTC),
		Level:     model.ADVANCED_OPEN_WATER,
	}
	ctx := context.Background()
	ctx = context.WithValue(ctx, session.User, &user)
	err := suite.service.DeleteLiveaboardComment(ctx, &comment)

	suite.mock.AssertCalled(suite.T(), "FindLiveaboardComment", ctx, uint64(1))
	suite.mock.AssertCalled(suite.T(), "DeleteLiveaboardComment", ctx, &comment)
	suite.NoError(err)
}

func TestSuiteCommentService(t *testing.T) {
	suite.Run(t, new(CommentTestSuite))
}
