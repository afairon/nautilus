package model

import (
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

var (
	ErrEmptyUsername        = errors.New("username: empty")
	ErrUsernameContainSpace = errors.New("username: contains space")
	ErrMissingAccount       = status.Error(codes.InvalidArgument, "missing account")

	ErrEmptyFirstName = errors.New("firstname: empty")
	ErrEmptyLastName  = errors.New("lastname: empty")
)
