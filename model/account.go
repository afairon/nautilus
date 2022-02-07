package model

// AccountRepository defines interface for interaction
// with the account repository.
type AccountRepository interface {
	Create(account Account) (Account, error)
	Get(id uint64) (Account, error)
	GetByEmail(email string) (Account, error)
	GetByUsername(username string) (Account, error)
	// GetAdminAccount(id uint64) (Admin, error)
	GetAgencyAccount(id uint64) (Agency, error)
	GetDiverAccount(id uint64) (Diver, error)
	List(limit, offset uint64) (Account, error)
}
