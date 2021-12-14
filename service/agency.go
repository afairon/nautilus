package service

import (
	"bytes"
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AgencyService defines operations on agency.
type AgencyService interface {
	AddDiveMaster(context.Context, *pb.DiveMaster, uint64) error
	AddStaff(context.Context, *pb.AddStaffRequest) error
	AddTripTemplate(context.Context, *pb.AddTripTemplateRequest) error
	AddTrip(context.Context, *pb.TripTemplate, *pb.Trip, uint64) error
	AddDivingBoat(context.Context, *pb.AddDivingBoatRequest) error
	AddHotel(context.Context, *pb.Hotel, uint64, uint64) error
	AddLiveaboard(context.Context, *pb.AddLiveaboardRequest) error
}

// agencyService implements AgencyService interface above.
type agencyService struct {
	repo    *repo.Repo
	session session.Session
	media   media.Store
}

func NewAgencyService(repo *repo.Repo, session session.Session, media media.Store) *agencyService {
	return &agencyService{
		repo:    repo,
		session: session,
		media:   media,
	}
}

func setDiveMaster(dst *entity.DiveMaster, src *pb.DiveMaster) error {
	// Set a valid dive master first name
	err := dst.SetDiveMasterFirstName(src.GetFirstName())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	// Set a valid dive master last name
	err = dst.SetDiveMasterLastName(src.GetLastName())
	if err != nil {
		return status.Error(codes.InvalidArgument, err.Error())
	}

	return nil
}

func (service *agencyService) AddDiveMaster(ctx context.Context, diveMaster *pb.DiveMaster, agency_id uint64) error {
	newDiveMaster := entity.DiveMaster{}

	// Copy dive master information and verify the dive master's information
	err := setDiveMaster(&newDiveMaster, diveMaster)
	if err != nil {
		return err
	}

	newDiveMaster.Level = diveMaster.Level
	newDiveMaster.AgencyId = agency_id

	reader := bytes.NewReader(diveMaster.FrontImage.File)
	objectID, err := service.media.Put(diveMaster.FrontImage.Filename, media.PRIVATE, reader)
	if err != nil {
		return err
	}
	newDiveMaster.Documents = append(newDiveMaster.Documents, objectID)

	reader = bytes.NewReader(diveMaster.BackImage.File)
	objectID, err = service.media.Put(diveMaster.BackImage.Filename, media.PRIVATE, reader)
	if err != nil {
		return err
	}
	newDiveMaster.Documents = append(newDiveMaster.Documents, objectID)

	_, err = service.repo.Agency.CreateDiveMaster(ctx, &newDiveMaster)

	return err
}

func setHotel(dst *entity.Hotel, src *pb.Hotel) {
	dst.Name = src.GetHotelName()
	dst.Description = src.GetHotelDescription()
	dst.Phone = src.GetPhone()
}

func (service *agencyService) AddHotel(ctx context.Context, hotel *pb.Hotel, agency_id uint64, address_id uint64) error {
	newHotel := entity.Hotel{}

	// Copy dive master information and verify the dive master's information
	setHotel(&newHotel, hotel)

	newHotel.AgencyId = agency_id
	newHotel.AddressId = address_id

	for _, image := range hotel.GetImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

		if err != nil {
			return err
		}

		newHotel.Images = append(newHotel.Images, objectID)
	}

	err := service.repo.ExecTx(ctx, func(query *repo.Queries) error {
		createdHotel, err := service.repo.Agency.CreateHotel(ctx, &newHotel)
		// fmt.Printf("%+v\n", createdHotel)
		// fmt.Printf("%+v\n", err)

		if err != nil {
			return err
		}

		entityRoomTypes := []entity.RoomType{}
		modelRoomTypes := hotel.GetRoomTypes()

		// Copy room types information
		for _, rt := range modelRoomTypes {
			tempRoomType := entity.RoomType{}
			tempRoomType.Name = rt.GetName()
			tempRoomType.Description = rt.GetDescription()
			tempRoomType.MaxGuest = rt.GetMaxGuest()
			tempRoomType.Price = rt.GetPrice()
			tempRoomType.Quantity = rt.GetQuantity()
			tempRoomType.HotelId = createdHotel.GetId()

			for _, image := range rt.GetRoomImages() {
				reader := bytes.NewReader(image.GetFile())
				objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

				if err != nil {
					return err
				}

				tempRoomType.Images = append(tempRoomType.Images, objectID)
			}

			entityRoomTypes = append(entityRoomTypes, tempRoomType)
		}

		// Create RoomTypes and amenities and the links between them.
		for i, rt := range entityRoomTypes {
			createdRoomType, err := service.repo.Agency.CreateRoomType(ctx, &rt, true)

			if err != nil {
				return err
			}

			modelAmenities := modelRoomTypes[i].GetAmenities()

			// Create Amenities of a room type
			for _, modelAmenity := range modelAmenities {
				entityAmenity := entity.Amenity{
					Name:        modelAmenity.GetName(),
					Description: modelAmenity.GetDescription(),
				}

				createdAmenity, err := service.repo.Agency.CreateAmenity(ctx, &entityAmenity)

				if err != nil {
					return err
				}

				roomAmenity := entity.RoomAmenity{
					RoomTypeId: createdRoomType.GetId(),
					AmenityId:  createdAmenity.GetId(),
				}

				_, err = service.repo.Agency.CreateRoomAmenity(ctx, &roomAmenity)

				if err != nil {
					return err
				}
			}
		}

		return err
	})

	return err
}

func (service *agencyService) AddStaff(ctx context.Context, req *pb.AddStaffRequest) error {
	return status.Error(codes.Unimplemented, "AddStaff unimplemented")
}

func (service *agencyService) AddTripTemplate(ctx context.Context, req *pb.AddTripTemplateRequest) error {
	return status.Error(codes.Unimplemented, "AddTripTemplate unimplemented")
}

func (service *agencyService) AddTrip(ctx context.Context, tripTemplate *pb.TripTemplate, trip *pb.Trip, agency_id uint64) error {
	return status.Error(codes.Unimplemented, "AddTripTemplate unimplemented")
}

func (service *agencyService) AddDivingBoat(ctx context.Context, req *pb.AddDivingBoatRequest) error {
	return status.Error(codes.Unimplemented, "AddDivingBoat unimplemented")
}

func (service *agencyService) AddLiveaboard(ctx context.Context, req *pb.AddLiveaboardRequest) error {
	return status.Error(codes.Unimplemented, "AddLiveaboard unimplemented")
}
