package model

// AgencyRepository defines interface for interaction
// with the agency repository.
type AgencyRepository interface {
	Create(agency Agency) (Agency, error)
	CreateDiveMaster(diveMaster DiveMaster) (DiveMaster, error)
	CreateHotel(hotel Hotel) (Hotel, error)
	CreateRoomType(roomType RoomType, isHotel bool) (RoomType, error)
	CreateAmenity(amenity Amenity) (Amenity, error)
	// CreateRoomAmenity(roomAmenity RoomAmenity) (RoomAmenity, error)
	CreateTripTemplate(tripTemplate TripTemplate) (TripTemplate, error)
	CreateTrip(trip Trip) (Trip, error)
	// CreateDiveMasterTripLink(diveMasterTripLink DiverMasterTrip) (DiverMasterTrip, error)
	CreateBoat(divingBoat Boat) (Boat, error)
	CreateStaff(staff Staff) (Staff, error)
	CreateLiveaboard(liveaboard Liveaboard) (Liveaboard, error)
	CreateAddress(address Address) (Address, error)
	Get(id uint64) (Agency, error)
	List(limit, offset uint64) (Agency, error)
}
