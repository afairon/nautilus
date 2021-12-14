package session

import (
	"errors"
	"time"

	"github.com/afairon/nautilus/config"
	"github.com/afairon/nautilus/entity"
	"github.com/golang-jwt/jwt"
)

// JWTManager implements Session interface.
type JWTManager struct {
	secret   string
	duration time.Duration
}

// UserClaims contains jwt information and
// user account information.
type UserClaims struct {
	jwt.StandardClaims
	entity.Account
}

// NewJWTManager creates a new jwt manager.
func NewJWTManager(secret string, duration time.Duration) *JWTManager {
	return &JWTManager{
		secret:   secret,
		duration: duration,
	}
}

// NewJWTManagerFromConfig creates a new jwt manager from configuration.
func NewJWTManagerFromConfig(conf *config.Session) *JWTManager {
	return NewJWTManager(
		conf.Secret,
		time.Duration(conf.Timeout)*time.Second,
	)
}

// Create creates a jwt token with user account information.
func (manager *JWTManager) Create(account entity.Account) (string, error) {
	// Clear password hash.
	account.Password = ""

	// Issued at
	now := time.Now()

	claims := UserClaims{
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: now.Add(manager.duration).Unix(),
			IssuedAt:  now.Unix(),
		},
		Account: account,
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)

	return token.SignedString([]byte(manager.secret))
}

// Get verifies if the token is present in the context and
// checks if the token is still valid, if it's valid it returns
// the user account.
func (manager *JWTManager) Get(token string) (entity.Account, error) {
	var userClaims UserClaims

	jwt, err := jwt.ParseWithClaims(
		token,
		&userClaims,
		func(token *jwt.Token) (interface{}, error) {
			_, ok := token.Method.(*jwt.SigningMethodHMAC)
			if !ok {
				return nil, errors.New("authorization: unexpected token signing method")
			}

			return []byte(manager.secret), nil
		},
	)
	if err != nil {
		return userClaims.Account, errors.New("authorization: invalid token")
	}

	claims, ok := jwt.Claims.(*UserClaims)
	if !ok {
		return userClaims.Account, errors.New("authorization: invalid token")
	}

	return claims.Account, nil
}
