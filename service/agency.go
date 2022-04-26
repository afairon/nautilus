package service

import (
	"bytes"
	"context"
	"time"

	"github.com/afairon/nautilus/internal/media"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/repo"
	"github.com/afairon/nautilus/session"
	"github.com/lib/pq"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AgencyService defines operations on agency.
type AgencyService interface {
	AddDiveMaster(context.Context, *pb.DiveMaster) error
	AddStaff(context.Context, *pb.Staff) error
	AddTripTemplate(context.Context, *pb.AddTripTemplateRequest) error
	AddTrip(context.Context, *model.Trip, []model.RoomTypeTripPrice) error
	AddDivingBoat(context.Context, *pb.Boat) error
	AddHotel(context.Context, *pb.Hotel) error
	AddLiveaboard(context.Context, *pb.Liveaboard) error

	UpdateTrip(ctx context.Context, trip *model.Trip) error
	UpdateHotel(ctx context.Context, hotel *model.Hotel) error
	UpdateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) error
	UpdateBoat(ctx context.Context, boat *model.Boat) error
	UpdateDiveMaster(ctx context.Context, diveMaster *model.DiveMaster) error
	UpdateStaff(ctx context.Context, staff *model.Staff) error
	UpdateTripTemplate(ctx context.Context, tripTemplate *model.TripTemplate) error

	ListBoats(ctx context.Context, limit, offset uint64) ([]*model.Boat, error)
	ListDiveMasters(ctx context.Context, limit, offset uint64) ([]*model.DiveMaster, error)
	ListHotels(ctx context.Context, limit, offset uint64) ([]*model.Hotel, error)
	ListLiveaboards(ctx context.Context, limit, offset uint64) ([]*model.Liveaboard, error)
	ListStaffs(ctx context.Context, limit, offset uint64) ([]*model.Staff, error)
	ListTripTemplates(ctx context.Context, limit, offset uint64) ([]*model.TripTemplate, error)
	ListTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error)
	ListTripsWithTemplates(ctx context.Context, limit, offset uint64) ([]*model.Trip, error)
	ListRoomTypesByHotelID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error)
	ListRoomTypesByLiveaboardID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error)

	SearchTrips(ctx context.Context, searchOnShoreTrips *pb.SearchTripsOptions, limit, offset uint64) ([]*model.Trip, error)

	GenerateCurrentTripsReport(ctx context.Context, limit, offset uint64) ([]*model.ReportTrip, error)
	GenerateYearlyEndedTripsReport(ctx context.Context, years uint32, limit, offset uint64) ([][]*model.ReportTrip, error)
	GenerateIncomingTripsReport(ctx context.Context, weeks uint32, limit, offset uint64) ([]*model.ReportTrip, error)
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

func getAgencyInformationFromContext(ctx context.Context) (*model.Agency, error) {
	// Obtaining value at session.User
	user := ctx.Value(session.User)

	if user == nil {
		// Handle nil condition
		return nil, status.Error(codes.Unauthenticated, "user not found")
	}
	// Type assertion
	v, ok := user.(*model.Agency) // Casting to Agency
	if !ok {
		// Handle error
		return nil, status.Error(codes.Internal, "casting user to Agency failed")
	}

	return v, nil
}

func (service *agencyService) AddDiveMaster(ctx context.Context, diveMaster *pb.DiveMaster) error {
	agency, err := getAgencyInformationFromContext(ctx)

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

	newDiveMaster.AgencyID = agency.ID

	for _, image := range diveMaster.GetDocuments() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PUBLIC_READ, reader)

		if err != nil {
			return err
		}

		newDiveMaster.Documents = append(newDiveMaster.Documents, objectID)
	}

	_, err = service.repo.Agency.CreateDiveMaster(ctx, newDiveMaster)

	return err
}

func (service *agencyService) AddHotel(ctx context.Context, hotel *pb.Hotel) error {
	agency, err := getAgencyInformationFromContext(ctx)

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
		Address:     hotelAddress,
		Name:        hotel.GetName(),
		Description: hotel.GetDescription(),
		Stars:       hotel.GetStars(),
		Phone:       hotel.GetPhone(),
		AgencyID:    agency.ID,
	}

	for _, image := range hotel.GetImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PUBLIC_READ, reader)

		if err != nil {
			return err
		}

		newHotel.Images = append(newHotel.Images, objectID)
	}

	pbRoomTypes := hotel.GetRoomTypes()
	roomTypes := make([]model.RoomType, 0, len(pbRoomTypes))

	// Copy room types information
	for _, rt := range pbRoomTypes {
		roomType := model.RoomType{
			Name:        rt.GetName(),
			Description: rt.GetDescription(),
			MaxGuest:    rt.GetMaxGuest(),
			Price:       rt.GetPrice(),
			Quantity:    rt.GetQuantity(),
			// HotelID:     uint(agency.GetId()),
		}

		for _, image := range rt.GetRoomImages() {
			reader := bytes.NewReader(image.GetFile())
			objectID, err := service.media.Put(image.GetFilename(), media.PUBLIC_READ, reader)

			if err != nil {
				return err
			}

			roomType.Images = append(roomType.Images, objectID)
		}

		amenities := make([]model.Amenity, 0, len(rt.GetAmenities()))
		// set amenities of room types
		for _, a := range rt.GetAmenities() {
			amenity := model.Amenity{}
			amenity.From(a)
			amenities = append(amenities, amenity)
		}

		roomType.Amenities = amenities
		roomTypes = append(roomTypes, roomType)
	}

	// set room types of hotel
	newHotel.RoomTypes = roomTypes
	_, err = service.repo.Agency.CreateHotel(ctx, &newHotel)

	return err
}

func (service *agencyService) AddStaff(ctx context.Context, req *pb.Staff) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	newStaff := model.Staff{
		FirstName: req.GetFirstName(),
		LastName:  req.GetLastName(),
		Position:  req.GetPosition(),
		Gender:    model.GenderType(req.GetGender()),
		AgencyID:  agency.ID,
	}

	_, err = service.repo.Agency.CreateStaff(ctx, &newStaff)

	return err
}

func (service *agencyService) AddTripTemplate(ctx context.Context, req *pb.AddTripTemplateRequest) error {
	return status.Error(codes.Unimplemented, "AddTripTemplate unimplemented")
}

func (service *agencyService) AddTrip(ctx context.Context, trip *model.Trip, roomTypePrices []model.RoomTypeTripPrice) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	trip.AgencyID = agency.ID
	trip.TripTemplate.AgencyID = agency.ID

	// Save trip template's files.
	if len(trip.TripTemplate.Files) > 0 {
		trip.TripTemplate.Images = make(pq.StringArray, 0, len(trip.TripTemplate.Files))
		for _, doc := range trip.TripTemplate.Files {
			reader := bytes.NewReader(doc.Buffer)
			objectID, err := service.media.Put(doc.Filename, media.PUBLIC_READ, reader)
			if err != nil {
				return err
			}
			trip.TripTemplate.Images = append(trip.TripTemplate.Images, objectID)
		}
	}

	err = service.repo.Transaction(ctx, func(query *repo.Queries) error {
		trip, err = query.Agency.CreateTrip(ctx, trip)

		if err != nil {
			return err
		}

		switch trip.TripTemplate.Type {
		case model.ONSHORE:
			if len(roomTypePrices) > 0 {
				for _, roomTypePrice := range roomTypePrices {
					if v, ok := roomTypePrice.(*model.HotelRoomTypeTripPrice); ok {
						v.TripID = uint64(trip.ID)
						_, err = query.HotelRoomTypeTripPrice.Create(ctx, v)

						if err != nil {
							return err
						}
					}
				}
			}
		case model.OFFSHORE:
			if len(roomTypePrices) > 0 {

				for _, roomTypePrice := range roomTypePrices {
					if v, ok := roomTypePrice.(*model.LiveaboardRoomTypeTripPrice); ok {
						v.TripID = uint64(trip.ID)
						_, err = query.LiveaboardRoomTypeTripPrice.Create(ctx, v)
					}

					if err != nil {
						return err
					}
				}
			}
		}

		return nil
	})

	return err
}

func (service *agencyService) AddDivingBoat(ctx context.Context, divingBoat *pb.Boat) error {
	agency, err := getAgencyInformationFromContext(ctx)

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
		Address:       divingBoatAddress,
		Name:          divingBoat.GetName(),
		Description:   divingBoat.GetDescription(),
		TotalCapacity: divingBoat.GetTotalCapacity(),
		DiverCapacity: divingBoat.GetDiverCapacity(),
		StaffCapacity: divingBoat.GetStaffCapacity(),
		AgencyID:      agency.ID,
	}

	for _, image := range divingBoat.GetImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PUBLIC_READ, reader)

		if err != nil {
			return err
		}

		newDivingBoat.Images = append(newDivingBoat.Images, objectID)
	}

	_, err = service.repo.Agency.CreateBoat(ctx, &newDivingBoat)

	return err
}

func (service *agencyService) AddLiveaboard(ctx context.Context, liveaboard *pb.Liveaboard) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	addr := liveaboard.GetAddress()
	divingBoatAddress := model.Address{
		AddressLine_1: addr.GetAddressLine_1(),
		AddressLine_2: addr.GetAddressLine_2(),
		City:          addr.GetCity(),
		Postcode:      addr.GetPostcode(),
		Region:        addr.GetRegion(),
		Country:       addr.GetCountry(),
	}

	newLiveaboard := model.Liveaboard{
		Address:       divingBoatAddress,
		Name:          liveaboard.GetName(),
		Description:   liveaboard.GetDescription(),
		Length:        uint32(liveaboard.GetLength()),
		Width:         uint32(liveaboard.GetWidth()),
		TotalCapacity: liveaboard.GetTotalCapacity(),
		DiverRooms:    liveaboard.GetDiverRooms(),
		StaffRooms:    liveaboard.GetStaffRooms(),
		AgencyID:      agency.ID,
	}

	for _, image := range liveaboard.GetImages() {
		reader := bytes.NewReader(image.GetFile())
		objectID, err := service.media.Put(image.GetFilename(), media.PUBLIC_READ, reader)

		if err != nil {
			return err
		}

		newLiveaboard.Images = append(newLiveaboard.Images, objectID)
	}

	pbRoomTypes := liveaboard.GetRoomTypes()
	roomTypes := make([]model.RoomType, 0, len(pbRoomTypes))

	// Copy room types information
	for _, rt := range pbRoomTypes {
		roomType := model.RoomType{
			Name:        rt.GetName(),
			Description: rt.GetDescription(),
			MaxGuest:    rt.GetMaxGuest(),
			Price:       rt.GetPrice(),
			Quantity:    rt.GetQuantity(),
			// LiveaboardID: uint(agency.GetId()),
		}

		for _, image := range rt.GetRoomImages() {
			reader := bytes.NewReader(image.GetFile())
			objectID, err := service.media.Put(image.GetFilename(), media.PUBLIC_READ, reader)

			if err != nil {
				return err
			}

			roomType.Images = append(roomType.Images, objectID)
		}

		amenities := make([]model.Amenity, 0, len(rt.GetAmenities()))
		// set amenities of room types
		for _, a := range rt.GetAmenities() {
			amenity := model.Amenity{}
			amenity.From(a)
			amenities = append(amenities, amenity)
		}

		roomType.Amenities = amenities
		roomTypes = append(roomTypes, roomType)
	}

	// set room types of hotel
	newLiveaboard.RoomTypes = roomTypes
	_, err = service.repo.Agency.CreateLiveaboard(ctx, &newLiveaboard)

	return err
}

// ListBoats returns list of boats associated with the agency.
func (service *agencyService) ListBoats(ctx context.Context, limit, offset uint64) ([]*model.Boat, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	boats, err := service.repo.Boat.ListBoatsByAgency(ctx, uint64(agency.ID), limit, offset)
	if err != nil {
		return nil, err
	}

	for _, boat := range boats {
		for _, doc := range boat.Images {
			file := model.File{
				Filename: doc,
				URL:      service.media.Get(doc, true),
			}
			boat.Files = append(boat.Files, &file)
		}
	}

	return boats, nil
}

// ListDiveMasters returns list of divemasters associated with the agency.
func (service *agencyService) ListDiveMasters(ctx context.Context, limit, offset uint64) ([]*model.DiveMaster, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	diveMasters, err := service.repo.DiveMaster.ListDiveMastersByAgency(ctx, uint64(agency.ID), limit, offset)
	if err != nil {
		return nil, err
	}

	for _, diveMaster := range diveMasters {
		for idx, id := range diveMaster.Documents {
			diveMaster.Documents[idx] = service.media.Get(id, false)
		}
	}

	return diveMasters, nil
}

// ListHotels returns list of hotels associated with the agency.
func (service *agencyService) ListHotels(ctx context.Context, limit, offset uint64) ([]*model.Hotel, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	hotels, err := service.repo.Hotel.ListHotelsByAgency(ctx, uint64(agency.ID), limit, offset)
	if err != nil {
		return nil, err
	}

	for _, hotel := range hotels {
		for idx, id := range hotel.Images {
			hotel.Images[idx] = service.media.Get(id, false)
		}
	}

	return hotels, nil
}

// ListLiveaboards returns list of liveaboards associated with the agency.
func (service *agencyService) ListLiveaboards(ctx context.Context, limit, offset uint64) ([]*model.Liveaboard, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	liveaboards, err := service.repo.Liveaboard.ListLiveaboardsByAgency(ctx, uint64(agency.ID), limit, offset)
	if err != nil {
		return nil, err
	}

	for _, liveaboard := range liveaboards {
		for idx, id := range liveaboard.Images {
			liveaboard.Images[idx] = service.media.Get(id, false)
		}
	}

	return liveaboards, nil
}

// ListStaffs returns list of staffs associated with the agency.
func (service *agencyService) ListStaffs(ctx context.Context, limit, offset uint64) ([]*model.Staff, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	return service.repo.Staff.ListStaffsByAgency(ctx, uint64(agency.ID), limit, offset)
}

// ListTripTemplates returns list of trip templates associated with the agency.
func (service *agencyService) ListTripTemplates(ctx context.Context, limit, offset uint64) ([]*model.TripTemplate, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	templates, err := service.repo.TripTemplate.ListTripTemplatesByAgency(ctx, uint64(agency.ID), limit, offset)
	if err != nil {
		return nil, err
	}

	for _, template := range templates {
		for idx, id := range template.Images {
			template.Images[idx] = service.media.Get(id, false)
		}
	}

	return templates, nil
}

// ListTrips returns list of trips associated with the agency.
func (service *agencyService) ListTrips(ctx context.Context, limit, offset uint64) ([]*model.Trip, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	trips, err := service.repo.Trip.ListTripsByAgency(ctx, uint64(agency.ID), limit, offset)
	if err != nil {
		return nil, err
	}

	for _, trip := range trips {
		for idx, id := range trip.TripTemplate.Images {
			trip.TripTemplate.Images[idx] = service.media.Get(id, false)
		}
	}

	return trips, nil
}

// ListTrips returns list of trips associated with the agency.
func (service *agencyService) ListTripsWithTemplates(ctx context.Context, limit, offset uint64) ([]*model.Trip, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	trips, err := service.repo.Trip.ListTripsWithTemplatesByAgency(ctx, uint64(agency.ID), limit, offset)
	if err != nil {
		return nil, err
	}

	for _, trip := range trips {
		for idx, id := range trip.TripTemplate.Images {
			trip.TripTemplate.Images[idx] = service.media.Get(id, false)
		}
	}

	return trips, nil
}

func (service *agencyService) ListRoomTypesByHotelID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error) {
	if limit > 20 || limit == 0 {
		limit = 20
	}

	roomTypes, err := service.repo.RoomType.ListRoomTypesByHotelID(ctx, id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, roomType := range roomTypes {
		for idx, id := range roomType.Images {
			roomType.Images[idx] = service.media.Get(id, false)
		}
	}

	return roomTypes, nil
}

func (service *agencyService) ListRoomTypesByLiveaboardID(ctx context.Context, id, limit, offset uint64) ([]*model.RoomType, error) {
	if limit > 20 || limit == 0 {
		limit = 20
	}

	roomTypes, err := service.repo.RoomType.ListRoomTypesByLiveaboardID(ctx, id, limit, offset)
	if err != nil {
		return nil, err
	}

	for _, roomType := range roomTypes {
		for idx, id := range roomType.Images {
			roomType.Images[idx] = service.media.Get(id, false)
		}
	}

	return roomTypes, nil
}

func (service *agencyService) SearchTrips(ctx context.Context, searchTripsOptions *pb.SearchTripsOptions, limit, offset uint64) ([]*model.Trip, error) {
	if limit > 20 || limit == 0 {
		limit = 20
	}

	var err error
	var trips []*model.Trip

	startDate := searchTripsOptions.GetStartDate()

	// default the startDate value to "now" if startDate was not given.
	if startDate == nil {
		now := time.Now()
		startDate = &now
	}

	// TODO deal with files of trip templates.
	switch searchTripsOptions.GetLocationFilter().(type) {
	case *pb.SearchTripsOptions_Country:
		trips, err = service.repo.Trip.SearchTrips(ctx, searchTripsOptions.GetCountry(), "", "", searchTripsOptions.GetDivers(), startDate, searchTripsOptions.GetEndDate(), model.TripType(searchTripsOptions.GetTripType()), uint(limit), uint(offset))
	case *pb.SearchTripsOptions_City:
		trips, err = service.repo.Trip.SearchTrips(ctx, "", searchTripsOptions.GetCity(), "", searchTripsOptions.GetDivers(), startDate, searchTripsOptions.GetEndDate(), model.TripType(searchTripsOptions.GetTripType()), uint(limit), uint(offset))
	case *pb.SearchTripsOptions_Region:
		trips, err = service.repo.Trip.SearchTrips(ctx, "", "", searchTripsOptions.GetRegion(), searchTripsOptions.GetDivers(), startDate, searchTripsOptions.GetEndDate(), model.TripType(searchTripsOptions.GetTripType()), uint(limit), uint(offset))
	}

	if err != nil {
		return nil, err
	}

	for _, trip := range trips {
		for idx, id := range trip.TripTemplate.Images {
			trip.TripTemplate.Images[idx] = service.media.Get(id, false)
		}
	}

	return trips, nil
}

func (service *agencyService) UpdateTrip(ctx context.Context, trip *model.Trip) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	oldTrip, err := service.repo.Trip.Get(ctx, uint64(trip.ID))

	if err != nil {
		return err
	}

	// check if the trip belongs to the agency called the service
	if oldTrip.AgencyID != agency.ID {
		return status.Error(codes.InvalidArgument, "this trip does not belong to this agency")
	}

	trip.AgencyID = oldTrip.AgencyID

	_, err = service.repo.Trip.UpdateTrip(ctx, trip)

	return err
}

func (service *agencyService) UpdateHotel(ctx context.Context, hotel *model.Hotel) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	oldHotel, err := service.repo.Hotel.GetHotel(ctx, hotel.ID)

	if err != nil {
		return err
	}

	// check if the hotel belongs to the agency called the service
	if oldHotel.AgencyID != agency.ID {
		return status.Error(codes.InvalidArgument, "the hotel does not belong to this agency")
	}

	hotel.AgencyID = oldHotel.AgencyID
	hotel.AddressID = oldHotel.AddressID
	hotel.Address.ID = oldHotel.AddressID

	oldHotelDocs := map[string]struct{}{}
	for _, doc := range oldHotel.Images {
		oldHotelDocs[doc] = struct{}{}
	}

	oldRoomTypesDocs := map[string]struct{}{}
	for _, roomType := range oldHotel.RoomTypes {
		for _, doc := range roomType.Images {
			oldRoomTypesDocs[doc] = struct{}{}
		}
	}

	for _, f := range hotel.Files {
		_, ok := oldHotelDocs[f.Filename]
		// append old images
		if ok && len(f.Buffer) == 0 {
			hotel.Images = append(hotel.Images, f.Filename)
			continue
		}

		if len(f.Buffer) > 0 {
			reader := bytes.NewReader(f.Buffer)
			objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			hotel.Images = append(hotel.Images, objectID)
		}
	}

	for _, roomType := range hotel.RoomTypes {
		for _, f := range roomType.Files {
			_, ok := oldRoomTypesDocs[f.Filename]
			// append old images
			if ok && len(f.Buffer) == 0 {
				roomType.Images = append(roomType.Images, f.Filename)
				continue
			}

			if len(f.Buffer) > 0 {
				reader := bytes.NewReader(f.Buffer)
				objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
				if err != nil {
					return err
				}
				roomType.Images = append(roomType.Images, objectID)
			}
		}
	}

	defer func() {
		if err != nil {
			// Delete hotel's and room types' files when save failed.
			for _, doc := range hotel.Images {
				_, ok := oldHotelDocs[doc]
				// skip old images
				if ok {
					continue
				}
				service.media.Delete(doc)
			}

			for _, roomType := range hotel.RoomTypes {
				for _, doc := range roomType.Images {
					_, ok := oldRoomTypesDocs[doc]
					// skip old images
					if ok {
						continue
					}
					service.media.Delete(doc)
				}
			}
		} else {
			for _, doc := range hotel.Images {
				_, ok := oldHotelDocs[doc]
				if ok {
					// Remove files from list to delete
					delete(oldHotelDocs, doc)
				}
			}

			for _, roomType := range hotel.RoomTypes {
				for _, doc := range roomType.Images {
					_, ok := oldRoomTypesDocs[doc]
					if ok {
						// Remove files from list to delete
						delete(oldRoomTypesDocs, doc)
					}
				}
			}

			for doc := range oldHotelDocs {
				// Delete files that are no longer needed
				service.media.Delete(doc)
			}

			for doc := range oldRoomTypesDocs {
				service.media.Delete(doc)
			}
		}
	}()

	_, err = service.repo.Hotel.UpdateHotel(ctx, hotel)

	return err
}

func (service *agencyService) UpdateLiveaboard(ctx context.Context, liveaboard *model.Liveaboard) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	oldLiveaboard, err := service.repo.Liveaboard.GetLiveaboard(ctx, uint64(liveaboard.ID))

	if err != nil {
		return err
	}

	// check if the liveaboard belongs to the agency called the service
	if oldLiveaboard.AgencyID != agency.ID {
		return status.Error(codes.InvalidArgument, "the liveaboard does not belong to this agency")
	}

	liveaboard.AgencyID = oldLiveaboard.AgencyID
	liveaboard.AddressID = oldLiveaboard.AddressID
	liveaboard.Address.ID = oldLiveaboard.AddressID

	// remove the old images.
	for _, image := range oldLiveaboard.Images {
		service.media.Delete(image)
	}

	oldLiveaboardDocs := map[string]struct{}{}
	for _, doc := range oldLiveaboard.Images {
		oldLiveaboardDocs[doc] = struct{}{}
	}

	oldRoomTypesDocs := map[string]struct{}{}
	for _, roomType := range oldLiveaboard.RoomTypes {
		for _, doc := range roomType.Images {
			oldRoomTypesDocs[doc] = struct{}{}
		}
	}

	for _, f := range liveaboard.Files {
		_, ok := oldLiveaboardDocs[f.Filename]
		// append old images
		if ok && len(f.Buffer) == 0 {
			liveaboard.Images = append(liveaboard.Images, f.Filename)
			continue
		}

		if len(f.Buffer) > 0 {
			reader := bytes.NewReader(f.Buffer)
			objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			liveaboard.Images = append(liveaboard.Images, objectID)
		}
	}

	for _, roomType := range liveaboard.RoomTypes {
		for _, f := range roomType.Files {
			_, ok := oldRoomTypesDocs[f.Filename]
			// append old images
			if ok && len(f.Buffer) == 0 {
				roomType.Images = append(roomType.Images, f.Filename)
				continue
			}

			if len(f.Buffer) > 0 {
				reader := bytes.NewReader(f.Buffer)
				objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
				if err != nil {
					return err
				}
				roomType.Images = append(roomType.Images, objectID)
			}
		}
	}

	defer func() {
		if err != nil {
			// Delete liveaboard's and room types' files when save failed.
			for _, doc := range liveaboard.Images {
				_, ok := oldLiveaboardDocs[doc]
				// skip old images
				if ok {
					continue
				}
				service.media.Delete(doc)
			}

			for _, roomType := range liveaboard.RoomTypes {
				for _, doc := range roomType.Images {
					_, ok := oldRoomTypesDocs[doc]
					// skip old images
					if ok {
						continue
					}
					service.media.Delete(doc)
				}
			}
		} else {
			for _, doc := range liveaboard.Images {
				_, ok := oldLiveaboardDocs[doc]
				if ok {
					// Remove files from list to delete
					delete(oldLiveaboardDocs, doc)
				}
			}

			for _, roomType := range liveaboard.RoomTypes {
				for _, doc := range roomType.Images {
					_, ok := oldRoomTypesDocs[doc]
					if ok {
						// Remove files from list to delete
						delete(oldRoomTypesDocs, doc)
					}
				}
			}

			for doc := range oldLiveaboardDocs {
				// Delete files that are no longer needed
				service.media.Delete(doc)
			}

			for doc := range oldRoomTypesDocs {
				service.media.Delete(doc)
			}
		}
	}()

	_, err = service.repo.Liveaboard.UpdateLiveaboard(ctx, liveaboard)

	return err
}

func (service *agencyService) UpdateBoat(ctx context.Context, boat *model.Boat) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	oldBoat, err := service.repo.Boat.GetBoat(ctx, uint(boat.ID))

	if err != nil {
		return err
	}

	// check if the boat belongs to the agency called the service
	if oldBoat.AgencyID != agency.ID {
		return status.Error(codes.InvalidArgument, "the boat does not belong to this agency")
	}

	boat.AgencyID = oldBoat.AgencyID
	boat.AddressID = oldBoat.AddressID
	boat.Address.ID = oldBoat.AddressID

	oldBoatDocs := map[string]struct{}{}
	for _, doc := range oldBoat.Images {
		oldBoatDocs[doc] = struct{}{}
	}

	for _, f := range oldBoat.Files {
		_, ok := oldBoatDocs[f.Filename]
		// append old images
		if ok && len(f.Buffer) == 0 {
			oldBoat.Images = append(oldBoat.Images, f.Filename)
			continue
		}

		if len(f.Buffer) > 0 {
			reader := bytes.NewReader(f.Buffer)
			objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			oldBoat.Images = append(oldBoat.Images, objectID)
		}
	}

	defer func() {
		if err != nil {
			// Delete boat's files when save failed.
			for _, doc := range boat.Images {
				_, ok := oldBoatDocs[doc]
				// skip old images
				if ok {
					continue
				}
				service.media.Delete(doc)
			}
		} else {
			for _, doc := range boat.Images {
				_, ok := oldBoatDocs[doc]
				if ok {
					// Remove files from list to delete
					delete(oldBoatDocs, doc)
				}
			}

			for doc := range oldBoatDocs {
				service.media.Delete(doc)
			}
		}
	}()

	_, err = service.repo.Boat.UpdateBoat(ctx, boat)

	return err
}

func (service *agencyService) UpdateDiveMaster(ctx context.Context, diveMaster *model.DiveMaster) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	oldDiveMaster, err := service.repo.DiveMaster.GetDiveMaster(ctx, uint(diveMaster.ID))

	if err != nil {
		return err
	}

	if oldDiveMaster.AgencyID != agency.ID {
		return status.Error(codes.InvalidArgument, "the diveMaster does not belong to this agency")
	}

	diveMaster.AgencyID = oldDiveMaster.AgencyID

	oldDiveMasterDocs := map[string]struct{}{}
	for _, doc := range oldDiveMaster.Documents {
		oldDiveMasterDocs[doc] = struct{}{}
	}

	for _, f := range diveMaster.Files {
		_, ok := oldDiveMasterDocs[f.Filename]
		// append old images
		if ok && len(f.Buffer) == 0 {
			diveMaster.Documents = append(diveMaster.Documents, f.Filename)
			continue
		}

		if len(f.Buffer) > 0 {
			reader := bytes.NewReader(f.Buffer)
			objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			diveMaster.Documents = append(diveMaster.Documents, objectID)
		}
	}

	_, err = service.repo.DiveMaster.UpdateDiveMaster(ctx, diveMaster)

	return err
}

func (service *agencyService) UpdateStaff(ctx context.Context, staff *model.Staff) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	oldStaff, err := service.repo.Staff.Get(ctx, uint64(staff.ID))

	if err != nil {
		return err
	}

	if oldStaff.AgencyID != agency.ID {
		return status.Error(codes.InvalidArgument, "the staff does not belong to this agency")
	}

	staff.AgencyID = oldStaff.AgencyID

	_, err = service.repo.Staff.UpdateStaff(ctx, staff)

	return err
}

func (service *agencyService) UpdateTripTemplate(ctx context.Context, tripTemplate *model.TripTemplate) error {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return err
	}

	oldTripTemplate, err := service.repo.TripTemplate.Get(ctx, uint64(tripTemplate.ID))

	if err != nil {
		return err
	}

	// check if the trip template belongs to the agency called the service
	if oldTripTemplate.AgencyID != agency.ID {
		return status.Error(codes.InvalidArgument, "the trip template does not belong to this agency")
	}

	tripTemplate.AgencyID = oldTripTemplate.AgencyID
	tripTemplate.AddressID = oldTripTemplate.AddressID
	tripTemplate.Address.ID = oldTripTemplate.AddressID

	oldDocs := map[string]struct{}{}
	for _, doc := range oldTripTemplate.Images {
		oldDocs[doc] = struct{}{}
	}

	for _, f := range tripTemplate.Files {
		_, ok := oldDocs[f.Filename]
		// append old images
		if ok && len(f.Buffer) == 0 {
			tripTemplate.Images = append(tripTemplate.Images, f.Filename)
			continue
		}

		if len(f.Buffer) > 0 {
			reader := bytes.NewReader(f.Buffer)
			objectID, err := service.media.Put(f.Filename, media.PRIVATE, reader)
			if err != nil {
				return err
			}
			tripTemplate.Images = append(tripTemplate.Images, objectID)
		}
	}

	defer func() {
		if err != nil {
			// Delete hotel's and room types' files when save failed.
			for _, doc := range tripTemplate.Images {
				_, ok := oldDocs[doc]
				// skip old images
				if ok {
					continue
				}
				service.media.Delete(doc)
			}
		} else {
			for _, doc := range tripTemplate.Images {
				_, ok := oldDocs[doc]
				if ok {
					// Remove files from list to delete
					delete(oldDocs, doc)
				}
			}

			for doc := range oldDocs {
				// Delete files that are no longer needed
				service.media.Delete(doc)
			}
		}
	}()

	_, err = service.repo.TripTemplate.Update(ctx, tripTemplate)

	return err
}

func (service *agencyService) GenerateCurrentTripsReport(ctx context.Context, limit, offset uint64) ([]*model.ReportTrip, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	var reportTrips []*model.ReportTrip

	// This transaction generates report (model.ReportTrip) by returning trips with divers that went to each of these trips
	err = service.repo.Transaction(ctx, func(query *repo.Queries) error {
		now := time.Now()
		lastReservationDate := &now

		trips, err := service.repo.Trip.ListUnfullTripsByAgency(ctx, lastReservationDate, uint64(agency.ID), limit, offset)

		if err != nil {
			return err
		}

		reportTrips = make([]*model.ReportTrip, 0, len(trips))

		for _, trip := range trips {

			for idx, id := range trip.TripTemplate.Images {
				trip.TripTemplate.Images[idx] = service.media.Get(id, false)
			}

			// create a new trip which will be inside the report
			rt := &model.ReportTrip{
				Trip:           *trip,
				TripTemplateID: uint64(trip.TripTemplateID),
			}

			placesLeft := trip.MaxGuest - trip.CurrentGuest
			rt.PlacesLeft = placesLeft

			reservations, err := query.Reservation.GetReservationsByTrip(ctx, uint64(trip.ID))

			if err != nil {
				return err
			}

			rt.Reservations = make([]*model.Reservation, 0, len(reservations))
			rt.Divers = make([]*model.Diver, 0, len(reservations))

			// get the divers in each reservation
			for _, reservation := range reservations {
				diver, err := query.Diver.Get(ctx, uint64(reservation.DiverID))

				if err != nil {
					return err
				}

				rt.Reservations = append(rt.Reservations, reservation)
				rt.Divers = append(rt.Divers, diver)
			}

			reportTrips = append(reportTrips, rt)
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return reportTrips, nil
}

func (service *agencyService) GenerateYearlyEndedTripsReport(ctx context.Context, years uint32, limit, offset uint64) ([][]*model.ReportTrip, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	yearlyReportTrips := make([][]*model.ReportTrip, 0, years+1)

	// This transaction generates report (model.ReportTrip) by returning trips with divers that went to each of these trips
	err = service.repo.Transaction(ctx, func(query *repo.Queries) error {
		// Must at least call ListEndedTripsOverPeriod once like do while loop
		// In other words, at least get the report for the trips that have ended in this year.
		end := time.Now()
		y, _, _ := end.Date()
		// The first day of the year "y"
		start := time.Date(y, 1, 1, 0, 0, 0, 0, end.Location())
		i := 0

		for {
			trips, err := service.repo.Trip.ListEndedTripsOverPeriod(ctx, &start, &end, uint64(agency.ID), limit, offset)
			i += 1

			if err != nil {
				return err
			}

			reportTrips := make([]*model.ReportTrip, 0, len(trips))

			for _, trip := range trips {

				for idx, id := range trip.TripTemplate.Images {
					trip.TripTemplate.Images[idx] = service.media.Get(id, false)
				}

				// create a new trip which will be inside the report
				rt := &model.ReportTrip{
					Trip:           *trip,
					TripTemplateID: uint64(trip.TripTemplateID),
				}

				placesLeft := trip.MaxGuest - trip.CurrentGuest
				rt.PlacesLeft = placesLeft

				reservations, err := query.Reservation.GetReservationsByTrip(ctx, uint64(trip.ID))

				if err != nil {
					return err
				}

				rt.Divers = make([]*model.Diver, 0, len(reservations))

				// get the divers in each reservation
				for _, reservation := range reservations {
					diver, err := query.Diver.Get(ctx, uint64(reservation.DiverID))

					if err != nil {
						return err
					}

					rt.Divers = append(rt.Divers, diver)
				}

				reportTrips = append(reportTrips, rt)
			}

			yearlyReportTrips = append(yearlyReportTrips, reportTrips)

			if uint32(i) > years {
				break
			}

			// end -> subtracting the first date of the year by one is the end of the previous year
			end = start.AddDate(0, 0, -1)
			y, _, _ := end.Date()
			// get the start date of the new "end" year
			start = time.Date(y, 1, 1, 0, 0, 0, 0, end.Location())
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return yearlyReportTrips, nil
}

// List trips that are starting in "weeks" weeks
func (service *agencyService) GenerateIncomingTripsReport(ctx context.Context, weeks uint32, limit, offset uint64) ([]*model.ReportTrip, error) {
	agency, err := getAgencyInformationFromContext(ctx)

	if err != nil {
		return nil, err
	}

	if limit > 20 || limit == 0 {
		limit = 20
	}

	var reportTrips []*model.ReportTrip

	// This transaction generates report (model.ReportTrip) by returning trips with divers that went to each of these trips
	err = service.repo.Transaction(ctx, func(query *repo.Queries) error {
		start := time.Now()
		end := start.AddDate(0, 0, int(7*weeks))

		trips, err := service.repo.Trip.ListIncomingTripsOverPeriod(ctx, &start, &end, uint64(agency.ID), limit, offset)

		if err != nil {
			return err
		}

		reportTrips = make([]*model.ReportTrip, 0, len(trips))

		for _, trip := range trips {

			for idx, id := range trip.TripTemplate.Images {
				trip.TripTemplate.Images[idx] = service.media.Get(id, false)
			}

			// create a new trip which will be inside the report
			rt := &model.ReportTrip{
				Trip:           *trip,
				TripTemplateID: uint64(trip.TripTemplateID),
			}

			placesLeft := trip.MaxGuest - trip.CurrentGuest
			rt.PlacesLeft = placesLeft

			reservations, err := query.Reservation.GetReservationsByTrip(ctx, uint64(trip.ID))

			if err != nil {
				return err
			}

			rt.Reservations = make([]*model.Reservation, 0, len(reservations))
			rt.Divers = make([]*model.Diver, 0, len(reservations))

			// get the divers in each reservation
			for _, reservation := range reservations {
				diver, err := query.Diver.Get(ctx, uint64(reservation.DiverID))

				if err != nil {
					return err
				}

				rt.Reservations = append(rt.Reservations, reservation)
				rt.Divers = append(rt.Divers, diver)
			}

			reportTrips = append(reportTrips, rt)
		}

		return nil
	})

	if err != nil {
		return nil, err
	}

	return reportTrips, nil
}
