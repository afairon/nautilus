package service

import (
	"bytes"
	"context"

	"github.com/afairon/nautilus/entity"
	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AgencyService defines operations on agency.
type AgencyService interface {
	AddDiveMaster(context.Context, *pb.DiveMaster) error
	AddStaff(context.Context, *pb.Staff) error
	AddTripTemplate(context.Context, *pb.AddTripTemplateRequest) error
	AddTrip(context.Context, *pb.TripTemplate, *pb.Trip) error
	AddDivingBoat(context.Context, *pb.DivingBoat) error
	AddHotel(context.Context, *pb.Hotel) error
	AddLiveaboard(context.Context, *pb.Liveaboard) error

	ListBoats(ctx context.Context, limit, offset uint64) ([]*pb.ListBoatsResponse_Boat, error)
	ListDiveMasters(ctx context.Context, limit, offset uint64) ([]*pb.ListDiveMastersResponse_DiveMaster, error)
	ListHotels(ctx context.Context, limit, offset uint64) ([]*pb.ListHotelsResponse_Hotel, error)
	ListLiveaboards(ctx context.Context, limit, offset uint64) ([]*pb.ListLiveaboardsResponse_Liveaboard, error)
	ListStaffs(ctx context.Context, limit, offset uint64) ([]*pb.ListStaffsResponse_Staff, error)
	ListTripTemplates(ctx context.Context, limit, offset uint64) ([]*pb.ListTripTemplatesResponse_TripTemplate, error)
	ListTrips(ctx context.Context, limit, offset uint64) ([]*pb.ListTripsResponse_Trip, error)
}

// agencyService implements AgencyService interface above.
type agencyService struct {
	repo  *repo.Repo
	media media.Store
}

func NewAgencyService(repo *repo.Repo, media media.Store) *agencyService {
	return &agencyService{
		repo:  repo,
		media: media,
	}
}

func getUserInformationFromContext(ctx context.Context) (*pb.Agency, error) {
	// Obtaining value at session.User
	user := ctx.Value(session.User)

	if user == nil {
		// Handle nil condition
		return nil, status.Error(codes.Unauthenticated, "user not found")
	}
	// Type assertion
	v, ok := user.(*pb.Agency) // Casting to Agency
	if !ok {
		// Handle error
		return nil, status.Error(codes.Internal, "casting user to Agency failed")
	}

	return v, nil
}

func (service *agencyService) AddDiveMaster(ctx context.Context, diveMaster *pb.DiveMaster) error {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return err
	}

	newDiveMaster := &model.DiveMaster{}

	// Copy dive master information and verify the dive master's information
	err = newDiveMaster.SetDiveMaster(diveMaster)

	if err != nil {
		return err
	}

	newDiveMaster.Level = model.LevelType(diveMaster.Level)

	newDiveMaster.AgencyID = uint(agency.Id)

	var reader *bytes.Reader
	var objectID string

	if diveMaster.FrontImage.GetFile() != nil {
		reader = bytes.NewReader(diveMaster.FrontImage.File)
		objectID, err = service.media.Put(diveMaster.FrontImage.Filename, media.PRIVATE, reader)

		if err != nil {
			return err
		}
		newDiveMaster.Documents = append(newDiveMaster.Documents, objectID)
	}

	if diveMaster.BackImage.GetFile() != nil {
		reader = bytes.NewReader(diveMaster.BackImage.File)
		objectID, err = service.media.Put(diveMaster.BackImage.Filename, media.PRIVATE, reader)

		if err != nil {
			return err
		}

		newDiveMaster.Documents = append(newDiveMaster.Documents, objectID)
	}

	_, err = service.repo.Agency.CreateDiveMaster(newDiveMaster)

	return err
}

func (service *agencyService) AddHotel(ctx context.Context, hotel *pb.Hotel) error {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return err
	}

	addr := hotel.GetAddress()

	hotelAddress := model.Address{
		AddressLine_1: addr.GetAddressLine_1(),
		AddressLine_2: addr.GetAddressLine_2(),
		City:          addr.GetCity(),
		Postcode:      addr.GetPostcode(),
		Region:        addr.GetRegion(),
		Country:       addr.GetCountry(),
	}

	newHotel := model.Hotel{
		Address:     &hotelAddress,
		Name:        hotel.GetHotelName(),
		Description: hotel.GetHotelDescription(),
		Stars:       hotel.GetStar(),
		Phone:       hotel.GetPhone(),
		AgencyID:    uint(agency.GetId()),
	}

	for _, image := range hotel.GetImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

		if err != nil {
			return err
		}

		newHotel.Images = append(newHotel.Images, objectID)
	}

	roomTypes := []model.RoomType{}
	pbRoomTypes := hotel.GetRoomTypes()

	// Copy room types information
	for _, rt := range pbRoomTypes {
		tempRoomType := model.RoomType{
			Name:        rt.GetName(),
			Description: rt.GetDescription(),
			MaxGuest:    rt.GetMaxGuest(),
			Price:       rt.GetPrice(),
			Quantity:    rt.GetQuantity(),
			HotelID:     uint(agency.GetId()),
		}

		for _, image := range rt.GetRoomImages() {
			reader := bytes.NewReader(image.GetFile())
			objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

			if err != nil {
				return err
			}

			tempRoomType.Images = append(tempRoomType.Images, objectID)
		}

		roomTypes = append(roomTypes, tempRoomType)
	}

	// set room types of hotel
	newHotel.RoomTypes = roomTypes
	service.repo.Agency.CreateHotel(&newHotel)

	return err
}

func (service *agencyService) AddStaff(ctx context.Context, req *pb.Staff) error {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return err
	}

	newStaff := model.Staff{
		FirstName: req.GetFirstName(),
		LastName:  req.GetLastName(),
		Position:  req.GetPosition(),
		Gender:    model.GenderType(req.GetGender()),
		AgencyID:  uint(agency.GetId()),
	}

	_, err = service.repo.Agency.CreateStaff(&newStaff)

	return err
}

func (service *agencyService) AddTripTemplate(ctx context.Context, req *pb.AddTripTemplateRequest) error {
	return status.Error(codes.Unimplemented, "AddTripTemplate unimplemented")
}

func (service *agencyService) AddTrip(ctx context.Context, tripTemplate *pb.TripTemplate, trip *pb.Trip) error {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return err
	}

	newTripTemplate := model.TripTemplate{
		Name:        tripTemplate.GetName(),
		Descirption: tripTemplate.GetDescription(),
		Type:        model.TripType(tripTemplate.GetTripType()),
		AgencyID:    uint(agency.GetId()),
	}

	if newTripTemplate.Type == model.ONSHORE {
		onShoreInfo := tripTemplate.GetHotelAndBoatId()

		newTripTemplate.HotelID = uint(onShoreInfo.GetHotelId())

		newTripTemplate.BoatID = uint(onShoreInfo.GetBoatId())
	} else {
		newTripTemplate.LiveaboardID = uint(tripTemplate.GetLiveaboardId())
	}

	for _, image := range tripTemplate.GetImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

		if err != nil {
			return err
		}

		newTripTemplate.Images = append(newTripTemplate.Images, objectID)
	}

	// create trip template
	_, err = service.repo.Agency.CreateTripTemplate(&newTripTemplate)

	if err != nil {
		return err
	}

	newTrip := model.Trip{
		MaxGuest:            trip.GetMaxCapacity(),
		Price:               trip.GetPrice(),
		StartDate:           trip.GetFrom(),
		EndDate:             trip.GetTo(),
		LastReservationDate: trip.GetLastReservationDate(),
		TripTemplateID:      newTripTemplate.ID,
		AgencyID:            uint(agency.GetId()),
	}

	_, err = service.repo.Agency.CreateTrip(&newTrip)

	return err
}

func (service *agencyService) AddDivingBoat(ctx context.Context, divingBoat *pb.DivingBoat) error {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return err
	}

	addr := divingBoat.GetAddress()

	divingBoatAddress := model.Address{
		AddressLine_1: addr.GetAddressLine_1(),
		AddressLine_2: addr.GetAddressLine_2(),
		City:          addr.GetCity(),
		Postcode:      addr.GetPostcode(),
		Region:        addr.GetRegion(),
		Country:       addr.GetCountry(),
	}

	newDivingBoat := model.Boat{
		Address:       &divingBoatAddress,
		Name:          divingBoat.GetName(),
		Description:   divingBoat.GetDescription(),
		TotalCapacity: divingBoat.GetTotalCapacity(),
		DiverCapacity: divingBoat.GetDiverCapacity(),
		StaffCapacity: divingBoat.GetStaffCapacity(),
		AgencyID:      uint(agency.GetId()),
	}

	for _, image := range divingBoat.GetBoatImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

		if err != nil {
			return err
		}

		newDivingBoat.Images = append(newDivingBoat.Images, objectID)
	}

	_, err = service.repo.Agency.CreateBoat(&newDivingBoat)

	return err
}

func (service *agencyService) AddLiveaboard(ctx context.Context, liveaboard *pb.Liveaboard) error {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return err
	}

	newLiveaboard := entity.Liveaboard{
		Name:        liveaboard.GetName(),
		Description: liveaboard.GetDescription(),
		Length:      liveaboard.GetLength(),
		Width:       liveaboard.GetWidth(),
		AgencyId:    agency.Id,
	}

	for _, image := range liveaboard.GetImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

		if err != nil {
			return err
		}

		newLiveaboard.Images = append(newLiveaboard.Images, objectID)
	}

	// err = service.repo.ExecTx(ctx, func(query *repo.Queries) error {
	// 	createdLiveaboard, err := query.Agency.CreateLiveaboard(ctx, &newLiveaboard)

	// 	if err != nil {
	// 		return err
	// 	}

	// 	entityRoomTypes := []entity.RoomType{}
	// 	modelRoomTypes := liveaboard.GetRoomTypes()

	// 	// Copy room types information
	// 	for _, rt := range modelRoomTypes {
	// 		tempRoomType := entity.RoomType{
	// 			Name:         rt.GetName(),
	// 			Description:  rt.GetDescription(),
	// 			MaxGuest:     rt.GetMaxGuest(),
	// 			Price:        rt.GetPrice(),
	// 			Quantity:     rt.GetQuantity(),
	// 			LiveaboardId: createdLiveaboard.GetId(),
	// 		}

	// 		for _, image := range rt.GetRoomImages() {
	// 			reader := bytes.NewReader(image.GetFile())
	// 			objectID, err := service.media.Put(image.GetFilename(), media.PRIVATE, reader)

	// 			if err != nil {
	// 				return err
	// 			}

	// 			tempRoomType.Images = append(tempRoomType.Images, objectID)
	// 		}

	// 		entityRoomTypes = append(entityRoomTypes, tempRoomType)
	// 	}

	// 	// Create RoomTypes and amenities and the links between them.
	// 	for i, rt := range entityRoomTypes {
	// 		createdRoomType, err := query.Agency.CreateRoomType(ctx, &rt, false)

	// 		if err != nil {
	// 			return err
	// 		}

	// 		modelAmenities := modelRoomTypes[i].GetAmenities()

	// 		// Create Amenities of a room type
	// 		for _, modelAmenity := range modelAmenities {
	// 			entityAmenity := entity.Amenity{
	// 				Name:        modelAmenity.GetName(),
	// 				Description: modelAmenity.GetDescription(),
	// 			}

	// 			createdAmenity, err := query.Agency.CreateAmenity(ctx, &entityAmenity)

	// 			if err != nil {
	// 				return err
	// 			}

	// 			roomAmenity := entity.RoomAmenity{
	// 				RoomTypeId: createdRoomType.GetId(),
	// 				AmenityId:  createdAmenity.GetId(),
	// 			}

	// 			_, err = query.Agency.CreateRoomAmenity(ctx, &roomAmenity)

	// 			if err != nil {
	// 				return err
	// 			}
	// 		}
	// 	}

	// 	return err
	// })

	return err
}

// ListBoats returns list of boats associated with the agency.
func (service *agencyService) ListBoats(ctx context.Context, limit, offset uint64) ([]*pb.ListBoatsResponse_Boat, error) {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	boats, err := service.repo.Boat.ListBoatsByAgency(ctx, agency.Id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, boat := range boats {
		for _, image := range boat.GetImages() {
			image.Link = service.media.Get(image.GetLink(), false)
		}
	}

	return boats, nil
}

// ListDiveMasters returns list of divemasters associated with the agency.
func (service *agencyService) ListDiveMasters(ctx context.Context, limit, offset uint64) ([]*pb.ListDiveMastersResponse_DiveMaster, error) {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	diveMasters, err := service.repo.DiveMaster.ListDiveMastersByAgency(ctx, agency.Id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, diveMaster := range diveMasters {
		for _, document := range diveMaster.GetDocuments() {
			document.Link = service.media.Get(document.GetLink(), false)
		}
	}

	return diveMasters, nil
}

// ListHotels returns list of hotels associated with the agency.
func (service *agencyService) ListHotels(ctx context.Context, limit, offset uint64) ([]*pb.ListHotelsResponse_Hotel, error) {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	hotels, err := service.repo.Hotel.ListHotelsByAgency(ctx, agency.Id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, hotel := range hotels {
		for _, image := range hotel.GetImages() {
			image.Link = service.media.Get(image.GetLink(), false)
		}
	}

	return hotels, nil
}

// ListLiveaboards returns list of liveaboards associated with the agency.
func (service *agencyService) ListLiveaboards(ctx context.Context, limit, offset uint64) ([]*pb.ListLiveaboardsResponse_Liveaboard, error) {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	liveaboards, err := service.repo.Liveaboard.ListLiveaboardsByAgency(ctx, agency.Id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, liveaboard := range liveaboards {
		for _, image := range liveaboard.GetImages() {
			image.Link = service.media.Get(image.GetLink(), false)
		}
	}

	return liveaboards, nil
}

// ListStaffs returns list of staffs associated with the agency.
func (service *agencyService) ListStaffs(ctx context.Context, limit, offset uint64) ([]*pb.ListStaffsResponse_Staff, error) {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	return service.repo.Staff.ListStaffsByAgency(ctx, agency.Id, limit, offset)
}

// ListTripTemplates returns list of trip templates associated with the agency.
func (service *agencyService) ListTripTemplates(ctx context.Context, limit, offset uint64) ([]*pb.ListTripTemplatesResponse_TripTemplate, error) {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	templates, err := service.repo.TripTemplate.ListTripTemplatesByAgency(ctx, agency.Id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, template := range templates {
		for _, image := range template.GetImages() {
			image.Link = service.media.Get(image.GetLink(), false)
		}
	}

	return templates, nil
}

// ListTrips returns list of trips associated with the agency.
func (service *agencyService) ListTrips(ctx context.Context, limit, offset uint64) ([]*pb.ListTripsResponse_Trip, error) {
	agency, err := getUserInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	trips, err := service.repo.Trip.ListTripsByAgency(ctx, agency.Id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, trip := range trips {
		if trip.GetTemplate() != nil {
			for _, image := range trip.GetTemplate().GetImages() {
				image.Link = service.media.Get(image.GetLink(), false)
			}
		}
	}

	return trips, nil
}
