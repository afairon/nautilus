package repo_test

import (
	"database/sql"
	"testing"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/afairon/nautilus/repo"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

type AccountRepositorySuite struct {
	suite.Suite
	DB   *gorm.DB
	mock sqlmock.Sqlmock

	repository repo.AccountRepository
}

func (s *AccountRepositorySuite) SetupSuite() {
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

	s.repository = repo.NewAccountRepository(s.DB)
}

func (s *AccountRepositorySuite) AfterTest(_, _ string) {
	require.NoError(s.T(), s.mock.ExpectationsWereMet())
}

func TestInit(t *testing.T) {
	suite.Run(t, new(AccountRepositorySuite))
}
