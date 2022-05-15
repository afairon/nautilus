package repo_test

import (
	"context"
	"database/sql"
	"testing"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/repo"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

type AgencyRepositorySuite struct {
	suite.Suite
	DB   *gorm.DB
	mock sqlmock.Sqlmock

	repository repo.AgencyRepository
}

func (s *AgencyRepositorySuite) SetupSuite() {
	var (
		db  *sql.DB
		err error
	)

	db, s.mock, err = sqlmock.New()
	require.NoError(s.T(), err)

	s.DB, err = gorm.Open(postgres.New(postgres.Config{
		Conn: db,
	}))
	require.NoError(s.T(), err)

	s.DB.Logger.LogMode(logger.Info)

	s.repository = repo.NewAgencyRepository(s.DB)
}

func (s *AgencyRepositorySuite) AfterTest(_, _ string) {
	require.NoError(s.T(), s.mock.ExpectationsWereMet())
}

func TestAgencyRepositoryTestSuite(t *testing.T) {
	suite.Run(t, new(AgencyRepositorySuite))
}

func (s *AgencyRepositorySuite) TestCreateAgencyAccount() {
	//Arrange
	newId := 1
	ctx := context.Background()
	account := &model.Account{
		Email:    "testing@gmail.com",
		Username: "Pokin",
		Password: "P@ssword123",
		Verified: false,
		Type:     1,
		Active:   false,
		AgencyID: 1,
	}
	agency := &model.Agency{
		Account: account,
		Name:    "",
		Phone:   "",
	}
	const sqlInsertAccount = `*`

	// s.mock.ExpectBegin()
	s.mock.ExpectQuery(sqlInsertAccount).
		WithArgs(account.Email, account.Username, account.Password, account.Verified, account.Type, account.Active, account.AgencyID).
		WillReturnRows(sqlmock.NewRows([]string{"id", "agency_id", "diver_id", "admin_id"}).AddRow(newId))
	s.mock.ExpectCommit()

	//Act
	agency, err := s.repository.Create(ctx, agency)

	//Assert
	s.Assertions.NoError(err)
	s.Assertions.Equal(newId, agency.ID)
}
