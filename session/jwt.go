package session

import (
	"context"
	"errors"
	"time"

	"github.com/afairon/nautilus/entity"
	"github.com/golang-jwt/jwt"
	"google.golang.org/grpc/metadata"
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

// Verify verifies if the token is present in the context and
// checks if the token is still valid.
func (manager *JWTManager) Verify(ctx context.Context) (entity.Account, error) {
	var userClaims UserClaims

	if headers, ok := metadata.FromIncomingContext(ctx); ok {
		authorization := headers["authorization"]
		if len(authorization) == 0 {
			return userClaims.Account, errors.New("authorization: empty")
		}

		token, err := jwt.ParseWithClaims(
			authorization[0],
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

		claims, ok := token.Claims.(*UserClaims)
		if !ok {
			return userClaims.Account, errors.New("authorization: invalid token")
		}

		return claims.Account, nil
	}

	return userClaims.Account, errors.New("authorization: failed to get metadata")
}
