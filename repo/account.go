package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"gorm.io/gorm"
)

// AccountRepository defines interface for interaction
// with the account repository.
type AccountRepository interface {
	// Create(ctx context.Context, account *entity.Account) (*entity.Account, error)
	Get(ctx context.Context, id uint64) (*entity.Account, error)
	GetByEmail(ctx context.Context, email string) (*model.Account, error)
	GetByUsername(ctx context.Context, username string) (*entity.Account, error)
	GetAdminAccount(ctx context.Context, id uint64) (*pb.Admin, error)
	GetAgencyAccount(ctx context.Context, id uint64) (*pb.Agency, error)
	GetDiverAccount(ctx context.Context, id uint64) (*pb.Diver, error)
	List(ctx context.Context, limit, offset uint64) ([]pb.Account, error)
}

// accountRepository implements AccountRepository interface.
type accountRepository struct {
	db *gorm.DB
}

// NewAccountRepository creates a new AccountRepository.
func NewAccountRepository(db *gorm.DB) *accountRepository {
	return &accountRepository{
		db: db,
	}
}

// Create creates an account record and returns the newly created record.
func (repo *accountRepository) Create(ctx context.Context, account *model.Account) (*model.Account, error) {
	// var result model.Account

	// err := repo.db.GetContext(ctx, &result, `
	// 	INSERT INTO
	// 		public.account
	// 		(username, email, "password", "type")
	// 	VALUES
	// 		($1, LOWER($2), $3, $4)
	// 	RETURNING id, username, email, "type", verified, active, created_on, updated_on
	// `, account.Username, account.Email, account.Password, account.Type)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// Get retrieves the account record by its id.
func (repo *accountRepository) Get(ctx context.Context, id uint64) (*entity.Account, error) {
	// var result entity.Account

	// err := repo.db.GetContext(ctx, &result, `
	// 	SELECT
	// 		id, username, LOWER(email) AS email, "password", "type", verified, active, created_on, updated_on
	// 	FROM
	// 		public.account
	// 	WHERE
	// 		id = $1
	// `, id)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

// Get retrieves the account record by its email.
func (repo *accountRepository) GetByEmail(ctx context.Context, email string) (*model.Account, error) {
	// var result entity.Account

	// err := repo.db.GetContext(ctx, &result, `
	// 	SELECT
	// 		id, username, LOWER(email) AS email, "password", "type", verified, active, created_on, updated_on
	// 	FROM
	// 		public.account
	// 	WHERE
	// 		LOWER(email) = LOWER($1)
	// `, email)

	// return &result, err

	var account model.Account

	result := repo.db.Where("LOWER(email) = ?", email).First(&account)
	return &account, result.Error
}

// Get retrieves the account record by its username.
func (repo *accountRepository) GetByUsername(ctx context.Context, username string) (*entity.Account, error) {
	// var result entity.Account

	// err := repo.db.GetContext(ctx, &result, `
	// 	SELECT
	// 		id, username, LOWER(email) AS email, "password", "type", verified, active, created_on, updated_on
	// 	FROM
	// 		public.account
	// 	WHERE
	// 		username = $1
	// `, username)

	// return &result, err
	return nil, errors.New("Unimplemented")
}

func (repo *accountRepository) GetAdminAccount(ctx context.Context, id uint64) (*pb.Admin, error) {
	var admin model.Admin

	r := repo.db.Joins("Account").First(&admin, id)

	if r.Error != nil {
		return nil, r.Error
	}

	var result pb.Admin
	result.Account = &pb.Account{
		Id:        uint64(admin.ID),
		Username:  admin.Account.Username,
		Email:     admin.Account.Email,
		Password:  admin.Account.Password,
		Type:      pb.AccountType(admin.Account.Type),
		Verified:  admin.Account.Verified,
		Active:    admin.Account.Active,
		CreatedOn: &admin.CreatedAt,
		UpdatedOn: &admin.UpdatedAt,
	}

	return &result, nil
}

func (repo *accountRepository) GetAgencyAccount(ctx context.Context, id uint64) (*pb.Agency, error) {
	// 	var result pb.Agency
	// 	result.Account = &pb.Account{}

	// 	rows, err := repo.db.Queryx(`
	// 		SELECT
	// 			agency.id, agency."name", agency."phone", agency.created_on, agency.updated_on,
	// 			account.id, account.username, LOWER(account.email) AS "account.email", account."password", account."type", account.verified, account.active, account.created_on, account.updated_on
	// 		FROM
	// 			public.agency agency
	// 		JOIN
	// 			public.account account
	// 		ON
	// 			agency.account_id = account.id
	// 		WHERE
	// 			account.id = $1
	// 	`, id)
	// 	if err != nil {
	// 		return nil, err
	// 	}
	// 	defer rows.Close()

	// 	for rows.Next() {
	// 		err = rows.Scan(&result.Id, &result.Name, &result.Phone, &result.CreatedOn, &result.UpdatedOn,
	// 			&result.Account.Id, &result.Account.Username, &result.Account.Email, &result.Account.Password, &result.Account.Type, &result.Account.Verified, &result.Account.Active, &result.Account.CreatedOn, &result.Account.UpdatedOn,
	// 		)
	// 		if err != nil {
	// 			return nil, err
	// 		}
	// 	}

	// // 	return &result, nil

	var agency model.Agency
	r := repo.db.Joins("Account").First(&agency, id)

	if r.Error != nil {
		return nil, r.Error
	}

	result := pb.Agency{
		Id:    uint64(agency.Account.AgencyID),
		Name:  agency.Name,
		Phone: agency.Phone,
		Account: &pb.Account{
			Id:        uint64(agency.ID),
			Username:  agency.Account.Username,
			Email:     agency.Account.Email,
			Password:  agency.Account.Password,
			Type:      pb.AccountType(agency.Account.Type),
			Verified:  agency.Account.Verified,
			Active:    agency.Account.Active,
			CreatedOn: &agency.Account.CreatedAt,
			UpdatedOn: &agency.Account.UpdatedAt,
		},
		CreatedOn: &agency.CreatedAt,
		UpdatedOn: &agency.UpdatedAt,
	}

	return &result, nil
}

func (repo *accountRepository) GetDiverAccount(ctx context.Context, id uint64) (*pb.Diver, error) {
	// var result pb.Diver
	// result.Account = &pb.Account{}

	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		diver.id, diver.first_name, diver.last_name, diver.phone, diver.birth_date, diver."level", diver.created_on, diver.updated_on,
	// 		account.id, account.username, LOWER(account.email) AS "account.email", account."password", account."type", account.verified, account.active, account.created_on, account.updated_on
	// 	FROM
	// 		public.diver diver
	// 	JOIN
	// 		public.account account
	// 	ON
	// 		diver.account_id = account.id
	// 	WHERE
	// 		account.id = $1
	// `, id)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// for rows.Next() {
	// 	err = rows.Scan(&result.Id, &result.FirstName, &result.LastName, &result.Phone, &result.BirthDate, &result.Level, &result.CreatedOn, &result.UpdatedOn,
	// 		&result.Account.Id, &result.Account.Username, &result.Account.Email, &result.Account.Password, &result.Account.Type, &result.Account.Verified, &result.Account.Active, &result.Account.CreatedOn, &result.Account.UpdatedOn,
	// 	)
	// 	if err != nil {
	// 		return nil, err
	// 	}
	// }

	// return &result, nil
	var diver model.Diver
	r := repo.db.Joins("Account").First(&diver, id)

	if r.Error != nil {
		return nil, r.Error
	}

	result := pb.Diver{
		Id:        uint64(diver.ID),
		FirstName: diver.FirstName,
		LastName:  diver.LastName,
		Phone:     diver.Phone,
		BirthDate: diver.BirthDate,
		Level:     pb.LevelType(diver.Level),
		Account: &pb.Account{
			Id:        uint64(diver.ID),
			Username:  diver.Account.Username,
			Email:     diver.Account.Email,
			Password:  diver.Account.Password,
			Type:      pb.AccountType(diver.Account.Type),
			Verified:  diver.Account.Verified,
			Active:    diver.Account.Active,
			CreatedOn: &diver.Account.CreatedAt,
			UpdatedOn: &diver.Account.UpdatedAt,
		},
		CreatedOn: &diver.CreatedAt,
		UpdatedOn: &diver.UpdatedAt,
	}

	return &result, nil
}

// List returns list of accounts.
func (repo *accountRepository) List(ctx context.Context, limit uint64, offset uint64) ([]pb.Account, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		id, username, LOWER(email) AS email, "type", verified, active, created_on, updated_on
	// 	FROM
	// 		public.account
	// 	LIMIT
	// 		$1
	// 	OFFSET
	// 		$2
	// `, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]pb.Account, 0, limit)

	// for rows.Next() {
	// 	account := pb.Account{}

	// 	err = rows.Scan(&account.Id, &account.Email, &account.Type, &account.Verified, &account.Active, &account.CreatedOn, &account.UpdatedOn)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	results = append(results, account)
	// }

	// return results, nil
	return nil, errors.New("Unimplemented")
}
