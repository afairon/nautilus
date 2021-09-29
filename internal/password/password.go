package password

import "unicode"

const (
	// Length of the password
	minLength = 8
	// Password contains lowercase letter
	requiresLower = true
	// Password contains uppercase letter
	requiresUpper = true
	// Password contains number
	requiresNumber = true
	// Password contains special character
	requiresSpecial = true
)

// ValidatePassword verifies if the password is strong enough.
func ValidatePassword(password string) error {
	var (
		length     = 0
		hasLower   = false
		hasUpper   = false
		hasNumber  = false
		hasSpecial = false
	)

	for _, c := range password {
		switch {
		// Character is lowercase letter
		case unicode.IsLower(c):
			hasLower = true
		// Character is uppercase letter
		case unicode.IsUpper(c):
			hasUpper = true
		// Character is number
		case unicode.IsNumber(c):
			hasNumber = true
		// Character is special character
		case unicode.IsPunct(c) || unicode.IsSymbol(c):
			hasSpecial = true
		// Unknown character
		default:
			return ErrUnknown
		}

		length++
	}

	if length < minLength {
		return ErrLength
	}

	if requiresLower && !hasLower {
		return ErrLower
	}

	if requiresUpper && !hasUpper {
		return ErrUpper
	}

	if requiresNumber && !hasNumber {
		return ErrNumber
	}

	if requiresSpecial && !hasSpecial {
		return ErrSpecial
	}

	return nil
}
