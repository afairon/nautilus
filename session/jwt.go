package session

import (
	"errors"
	"time"

	"github.com/afairon/nautilus/config"
	"github.com/afairon/nautilus/pb"
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
	Admin  *pb.Admin  `json:"admin,omitempty"`
	Agency *pb.Agency `json:"agency,omitempty"`
	Diver  *pb.Diver  `json:"diver,omitempty"`
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
func (manager *JWTManager) Create(account Account) (string, error) {
	if account == nil {
		return "", errors.New("authorization: empty account")
	}

	// Issued at
	now := time.Now()

	// User claims
	var claims UserClaims
	claims.StandardClaims.IssuedAt = now.Unix()
	claims.StandardClaims.ExpiresAt = now.Add(manager.duration).Unix()

	// Clear password hash.
	if account.GetAccount() == nil {
		return "", errors.New("authorization: empty account")
	}
	account.GetAccount().Password = ""

	// Type assertion, conversion from interface type to concrete type
	switch v := account.(type) {
	case *pb.Admin:
		claims.Admin = v
	case *pb.Agency:
		claims.Agency = v
	case *pb.Diver:
		claims.Diver = v
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)

	return token.SignedString([]byte(manager.secret))
}

// Get verifies if the token is present in the context and
// checks if the token is still valid, if it's valid it returns
// the user account.
func (manager *JWTManager) Get(token string) (Account, error) {
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
		return nil, errors.New("authorization: invalid token")
	}

	claims, ok := jwt.Claims.(*UserClaims)
	if !ok {
		return nil, errors.New("authorization: invalid token")
	}

	if claims.Admin != nil {
		return claims.Admin, nil
	}

	if claims.Agency != nil {
		return claims.Agency, nil
	}

	return claims.Diver, nil
}
