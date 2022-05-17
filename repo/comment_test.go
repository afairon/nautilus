package repo

import (
	"testing"

	"github.com/afairon/nautilus/model"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type CommentTestSuite struct {
	suite.Suite
	db   *gorm.DB
	repo CommentRepository
}

func (suite *CommentTestSuite) SetupTest() {
	var err error

	suite.db, err = gorm.Open(sqlite.Open("file::memory:?cache=shared"), &gorm.Config{})
	assert.Equal(suite.T(), nil, err)

	err = suite.db.AutoMigrate(&model.Agency{}, &model.Diver{}, &model.Account{},
		&model.DiveMaster{}, &model.Staff{}, &model.Boat{}, &model.TripTemplate{},
		&model.Liveaboard{}, &model.Hotel{}, &model.Reservation{}, &model.HotelComment{},
		&model.LiveaboardComment{}, &model.TripComment{}, &model.Amenity{}, &model.Trip{},
		&model.RoomType{}, &model.DiveSite{}, &model.Payment{}, &model.HotelRoomTypeTripPrice{}, &model.LiveaboardRoomTypeTripPrice{})
	assert.Equal(suite.T(), nil, err)

	suite.repo = NewCommentRepository(suite.db)
}

func (suite *CommentTestSuite) TestCreateTripComment() {}

func (suite *CommentTestSuite) TestCreateHotelComment() {}

func (suite *CommentTestSuite) TestCreateLiveaboardComment() {}

func (suite *CommentTestSuite) TestFindTripComment() {}

func (suite *CommentTestSuite) TestFindHotelComment() {}

func (suite *CommentTestSuite) TestFindLiveaboardComment() {}

func (suite *CommentTestSuite) TestUpdateTripComment() {}

func (suite *CommentTestSuite) TestUpdateHotelComment() {}

func (suite *CommentTestSuite) TestUpdateLiveaboardComment() {}

func (suite *CommentTestSuite) TestDeleteTripComment() {}

func (suite *CommentTestSuite) TestDeleteHotelComment() {}

func (suite *CommentTestSuite) TestDeleteLiveaboardComment() {}

func (suite *CommentTestSuite) TearDownTest() {
	db, _ := suite.db.DB()
	db.Close()
}

func TestSuiteCommentRepo(t *testing.T) {
	suite.Run(t, new(CommentTestSuite))
}
