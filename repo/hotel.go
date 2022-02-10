package repo

import (
	"context"
	"errors"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"gorm.io/gorm"
)

// HotelRepository defines interface for interaction
// with the hotel repository.
type HotelRepository interface {
	ListHotelsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListHotelsResponse_Hotel, error)
	GetHotel(id uint) (*model.Hotel, error)
}

// hotelRepository implements HotelRepository interface.
type hotelRepository struct {
	db *gorm.DB
}

// NewHotelRepository creates a new HotelRepository.
func NewHotelRepository(db *gorm.DB) *hotelRepository {
	return &hotelRepository{
		db: db,
	}
}

// ListHotelsByAgency returns list of hotels by agency id.
func (repo *hotelRepository) ListHotelsByAgency(ctx context.Context, id, limit, offset uint64) ([]*pb.ListHotelsResponse_Hotel, error) {
	// rows, err := repo.db.Queryx(`
	// 	SELECT
	// 		hotel.id, hotel."name", hotel.description, hotel.stars, hotel.phone, hotel.images, hotel.created_on, hotel.updated_on,
	// 		address.id, address.address_line_1, address.address_line_2, address.city, address.postcode, address.region, address.country
	// 	FROM
	// 		public.hotel hotel
	// 	JOIN
	// 		public.address address
	// 	ON
	// 		hotel.address_id = address.id
	// 	WHERE
	// 		hotel.agency_id = $1
	// 	LIMIT
	// 		$2
	// 	OFFSET
	// 		$3
	// `, id, limit, offset)
	// if err != nil {
	// 	return nil, err
	// }
	// defer rows.Close()

	// results := make([]*pb.ListHotelsResponse_Hotel, 0, limit)

	// for rows.Next() {
	// 	hotel := &pb.ListHotelsResponse_Hotel{}
	// 	hotel.Address = &pb.Address{}
	// 	var images pq.StringArray

	// 	err = rows.Scan(&hotel.Id, &hotel.Name, &hotel.Description, &hotel.Stars, &hotel.Phone, &images, &hotel.CreatedOn, &hotel.UpdatedOn,
	// 		&hotel.Address.Id, &hotel.Address.AddressLine_1, &hotel.Address.AddressLine_2, &hotel.Address.City, &hotel.Address.Postcode, &hotel.Address.Region, &hotel.Address.Country,
	// 	)
	// 	if err != nil {
	// 		return nil, err
	// 	}

	// 	if len(images) > 0 {
	// 		hotel.Images = make([]*pb.File, 0, len(images))

	// 		for _, image := range images {
	// 			file := &pb.File{
	// 				Link: image,
	// 			}
	// 			hotel.Images = append(hotel.Images, file)
	// 		}
	// 	}

	// 	results = append(results, hotel)
	// }

	// return results, nil
	return nil, errors.New("Unimplemented")
}

func (repo *hotelRepository) GetHotel(id uint) (*model.Hotel, error) {
	var hotel model.Hotel

	result := repo.db.First(&hotel, id)
	return &hotel, result.Error
}
