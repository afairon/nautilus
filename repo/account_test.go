package repo_test

import (
	"github.com/DATA-DOG/go-sqlmock"
	"github.com/afairon/nautilus/repo"
	"github.com/stretchr/testify/suite"
	"gorm.io/gorm"
)

type AccountRepositorySuite struct {
	suite.Suite
	DB *gorm.DB
	sqlmock.Sqlmock

	repository repo.AccountRepository
}
