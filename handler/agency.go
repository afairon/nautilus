package handler

import (
	"context"
	"fmt"

	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// AgencyHandler implements the Agency rpc interface.
type AgencyHandler struct {
	agencyService service.AgencyService
}

func NewAgencyHandler(agencyService service.AgencyService) *AgencyHandler {
	return &AgencyHandler{
		agencyService: agencyService,
	}
}

// AddDiveMaster handles dive master creation. It delegates the dive master creation to agencyService.
func (handler *AgencyHandler) AddDiveMaster(ctx context.Context, req *pb.AddDiveMasterRequest) (*empty.Empty, error) {
	err := handler.agencyService.AddDiveMaster(ctx, req.GetDiveMaster())

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) AddHotel(ctx context.Context, req *pb.AddHotelRequest) (*empty.Empty, error) {
	err := handler.agencyService.AddHotel(ctx, req.GetHotel())

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) AddStaff(ctx context.Context, req *pb.AddStaffRequest) (*empty.Empty, error) {
	err := handler.agencyService.AddStaff(ctx, req.GetStaff())

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) AddTripTemplate(ctx context.Context, req *pb.AddTripTemplateRequest) (*empty.Empty, error) {
	return nil, status.Error(codes.Unimplemented, "AddTripTemplate unimplemented")
}

func (handler *AgencyHandler) AddTrip(ctx context.Context, req *pb.AddTripRequest) (*empty.Empty, error) {
	err := handler.agencyService.AddTrip(ctx, req.GetTripTemplate(), req.GetTrip())

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) AddDivingBoat(ctx context.Context, req *pb.AddDivingBoatRequest) (*empty.Empty, error) {
	err := handler.agencyService.AddDivingBoat(ctx, req.GetDivingBoat())

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) AddLiveaboard(ctx context.Context, req *pb.AddLiveaboardRequest) (*empty.Empty, error) {
	err := handler.agencyService.AddLiveaboard(ctx, req.GetLiveaboard())

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

// ListBoats retrieves list of boats associated with the agency.
func (handler *AgencyHandler) ListBoats(req *pb.ListBoatsRequest, srv pb.AgencyService_ListBoatsServer) error {
	ctx := srv.Context()

	boats, err := handler.agencyService.ListBoats(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		return err
	}

	for _, boat := range boats {
		resp := &pb.ListBoatsResponse{
			Boat: &pb.ListBoatsResponse_Boat{
				Id:            uint64(boat.ID),
				Name:          boat.Name,
				TotalCapacity: boat.TotalCapacity,
				DiverCapacity: boat.DiverCapacity,
				StaffCapacity: boat.StaffCapacity,
				CreatedAt:     &boat.CreatedAt,
				UpdatedAt:     &boat.UpdatedAt,
			},
		}

		if len(boat.Images) > 0 {
			resp.Boat.Images = make([]*pb.File, 0, len(boat.Images))

			for _, link := range boat.Images {
				file := &pb.File{
					Link: link,
				}

				resp.Boat.Images = append(resp.Boat.Images, file)
			}
		}

		srv.Send(resp)
	}

	return nil
}

// ListDiveMasters retrieves list of divemasters associated with the agency.
func (handler *AgencyHandler) ListDiveMasters(req *pb.ListDiveMastersRequest, srv pb.AgencyService_ListDiveMastersServer) error {
	ctx := srv.Context()

	diveMasters, err := handler.agencyService.ListDiveMasters(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		return err
	}

	for _, diveMaster := range diveMasters {
		resp := &pb.ListDiveMastersResponse{
			DiveMaster: &pb.ListDiveMastersResponse_DiveMaster{
				Id:        uint64(diveMaster.ID),
				FirstName: diveMaster.FirstName,
				LastName:  diveMaster.LastName,
				Level:     pb.LevelType(diveMaster.Level),
				CreatedAt: &diveMaster.CreatedAt,
				UpdatedAt: &diveMaster.UpdatedAt,
			},
		}

		if len(diveMaster.Documents) > 0 {
			resp.DiveMaster.Documents = make([]*pb.File, 0, len(diveMaster.Documents))

			for _, link := range diveMaster.Documents {
				file := &pb.File{
					Link: link,
				}

				resp.DiveMaster.Documents = append(resp.DiveMaster.Documents, file)
			}
		}

		srv.Send(resp)
	}

	return nil
}

// ListHotels retrieves list of hotels associated with the agency.
func (handler *AgencyHandler) ListHotels(req *pb.ListHotelsRequest, srv pb.AgencyService_ListHotelsServer) error {
	ctx := srv.Context()

	hotels, err := handler.agencyService.ListHotels(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		return err
	}

	for _, hotel := range hotels {
		fmt.Printf("Trying to print hotel properties\n")
		fmt.Printf("%+v\n", hotel)

		resp := &pb.ListHotelsResponse{
			Hotel: &pb.ListHotelsResponse_Hotel{
				Id:          uint64(hotel.ID),
				Name:        hotel.Name,
				Description: hotel.Description,
				Stars:       hotel.Stars,
				Phone:       hotel.Phone,
				Address: &pb.Address{
					Id:            uint64(hotel.ID),
					AddressLine_1: hotel.Address.AddressLine_1,
					AddressLine_2: hotel.Address.AddressLine_2,
					City:          hotel.Address.City,
					Postcode:      hotel.Address.Postcode,
					Region:        hotel.Address.Region,
					Country:       hotel.Address.Country,
					CreatedAt:     &hotel.Address.CreatedAt,
					UpdatedAt:     &hotel.Address.UpdatedAt,
				},
				CreatedAt: &hotel.CreatedAt,
				UpdatedAt: &hotel.UpdatedAt,
			},
		}

		if len(hotel.Images) > 0 {
			resp.Hotel.Images = make([]*pb.File, 0, len(hotel.Images))

			for _, link := range hotel.Images {
				file := &pb.File{
					Link: link,
				}

				resp.Hotel.Images = append(resp.Hotel.Images, file)
			}
		}

		srv.Send(resp)
	}

	return nil
}

// ListLiveaboards retrieves list of liveaboards associated with the agency.
func (handler *AgencyHandler) ListLiveaboards(req *pb.ListLiveaboardsRequest, srv pb.AgencyService_ListLiveaboardsServer) error {
	ctx := srv.Context()

	liveaboards, err := handler.agencyService.ListLiveaboards(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		fmt.Printf("%+v\n", err)
		return err
	}

	for _, liveaboard := range liveaboards {
		resp := &pb.ListLiveaboardsResponse{
			Liveaboard: &pb.ListLiveaboardsResponse_Liveaboard{
				Id:            uint64(liveaboard.ID),
				Name:          liveaboard.Name,
				Description:   liveaboard.Description,
				Length:        float32(liveaboard.Length),
				Width:         float32(liveaboard.Width),
				TotalCapacity: liveaboard.TotalCapacity,
				DiverRooms:    liveaboard.DiverRooms,
				StaffRooms:    liveaboard.StaffRooms,
				Address: &pb.Address{
					AddressLine_1: liveaboard.Address.AddressLine_1,
					AddressLine_2: liveaboard.Address.AddressLine_2,
					City:          liveaboard.Address.City,
					Postcode:      liveaboard.Address.Postcode,
					Region:        liveaboard.Address.Region,
					Country:       liveaboard.Address.Country,
					CreatedAt:     &liveaboard.Address.CreatedAt,
					UpdatedAt:     &liveaboard.Address.UpdatedAt,
				},
				CreatedAt: &liveaboard.CreatedAt,
				UpdatedAt: &liveaboard.UpdatedAt,
			},
		}

		if len(liveaboard.Images) > 0 {
			resp.Liveaboard.Images = make([]*pb.File, 0, len(liveaboard.Images))

			for _, link := range liveaboard.Images {
				file := &pb.File{
					Link: link,
				}

				resp.Liveaboard.Images = append(resp.Liveaboard.Images, file)
			}
		}

		srv.Send(resp)
	}

	return nil
}

// ListStaffs retrieves list of staffs associated with the agency.
func (handler *AgencyHandler) ListStaffs(req *pb.ListStaffsRequest, srv pb.AgencyService_ListStaffsServer) error {
	ctx := srv.Context()

	staffs, err := handler.agencyService.ListStaffs(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		return err
	}

	if len(staffs) == 0 {
		return status.Error(codes.NotFound, "ListStaffs: not found")
	}

	for _, staff := range staffs {
		resp := &pb.ListStaffsResponse{
			Staff: &pb.ListStaffsResponse_Staff{
				Id:        uint64(staff.ID),
				FirstName: staff.FirstName,
				LastName:  staff.LastName,
				Position:  staff.Position,
				Gender:    pb.GenderType(staff.Gender),
				CreatedAt: &staff.CreatedAt,
				UpdatedAt: &staff.UpdatedAt,
			},
		}
		srv.Send(resp)
	}

	return nil
}

// ListTripTemplates retrieves list of trip templates associated with the agency.
func (handler *AgencyHandler) ListTripTemplates(req *pb.ListTripTemplatesRequest, srv pb.AgencyService_ListTripTemplatesServer) error {
	ctx := srv.Context()

	tripTemplates, err := handler.agencyService.ListTripTemplates(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		return err
	}

	if len(tripTemplates) == 0 {
		return status.Error(codes.NotFound, "ListTripTemplates: not found")
	}

	for _, tripTemplate := range tripTemplates {
		resp := &pb.ListTripTemplatesResponse{
			Template: &pb.ListTripTemplatesResponse_TripTemplate{
				Id:           uint64(tripTemplate.ID),
				Name:         tripTemplate.Name,
				Description:  tripTemplate.Description,
				TripType:     pb.TripType(tripTemplate.Type),
				HotelId:      uint64(tripTemplate.HotelID),
				BoatId:       uint64(tripTemplate.BoatID),
				LiveaboardId: uint64(tripTemplate.LiveaboardID),
				CreatedAt:    &tripTemplate.CreatedAt,
				UpdatedAt:    &tripTemplate.UpdatedAt,
			},
		}

		if len(tripTemplate.Images) > 0 {
			resp.Template.Images = make([]*pb.File, 0, len(tripTemplate.Images))
			for _, link := range tripTemplate.Images {
				file := &pb.File{
					Link: link,
				}
				resp.Template.Images = append(resp.Template.Images, file)
			}
		}

		srv.Send(resp)
	}

	return nil
}

// ListTrips retrieves list of trips associated with the agency.
func (handler *AgencyHandler) ListTrips(req *pb.ListTripsRequest, srv pb.AgencyService_ListTripsServer) error {
	ctx := srv.Context()

	trips, err := handler.agencyService.ListTrips(ctx, req.GetLimit(), req.GetOffset())
	if err != nil {
		return err
	}

	if len(trips) == 0 {
		return status.Error(codes.NotFound, "ListTrips: not found")
	}

	for _, trip := range trips {
		resp := &pb.ListTripsResponse{
			Trip: &pb.ListTripsResponse_Trip{
				Id:                  uint64(trip.ID),
				TripTemplateId:      uint64(trip.TripTemplateID),
				MaxGuest:            trip.MaxGuest,
				Price:               trip.Price,
				FromDate:            trip.StartDate,
				ToDate:              trip.EndDate,
				LastReservationDate: trip.LastReservationDate,
				CreatedAt:           &trip.CreatedAt,
				UpdatedAt:           &trip.UpdatedAt,
			},
		}
		srv.Send(resp)
	}

	return nil
}

func (handler *AgencyHandler) SearchTrips(req *pb.SearchTripsRequest, srv pb.AgencyService_SearchTripsServer) error {
	ctx := srv.Context()

	trips, err := handler.agencyService.SearchOnshoreTrips(ctx, req.GetSearchTripsOptions(), req.GetLimit(), req.GetOffset())

	if err != nil {
		return err
	}

	if len(trips) == 0 {
		return status.Error(codes.NotFound, "SearchOnshoreTrips: not found")
	}

	for _, trip := range trips {
		resp := &pb.SearchTripsResponse{
			Trip: &pb.SearchTripsResponse_Trip{
				Id:                  uint64(trip.ID),
				TripTemplateId:      uint64(trip.TripTemplateID),
				MaxGuest:            trip.MaxGuest,
				Price:               trip.Price,
				FromDate:            trip.StartDate,
				ToDate:              trip.EndDate,
				LastReservationDate: trip.LastReservationDate,
				CreatedAt:           &trip.CreatedAt,
				UpdatedAt:           &trip.UpdatedAt,
				TripTemplate: &pb.SearchTripsResponse_TripTemplate{
					Id:           uint64(trip.TripTemplate.ID),
					Name:         trip.TripTemplate.Name,
					Description:  trip.TripTemplate.Description,
					TripType:     pb.TripType(trip.TripTemplate.Type),
					HotelId:      uint64(trip.TripTemplate.HotelID),
					BoatId:       uint64(trip.TripTemplate.BoatID),
					LiveaboardId: uint64(trip.TripTemplate.LiveaboardID),
					Address: &pb.Address{
						Id:            uint64(trip.TripTemplate.Address.ID),
						AddressLine_1: trip.TripTemplate.Address.AddressLine_1,
						AddressLine_2: trip.TripTemplate.Address.AddressLine_2,
						City:          trip.TripTemplate.Address.City,
						Postcode:      trip.TripTemplate.Address.Postcode,
						Region:        trip.TripTemplate.Address.Region,
						Country:       trip.TripTemplate.Address.Country,
						CreatedAt:     &trip.TripTemplate.Address.CreatedAt,
						UpdatedAt:     &trip.TripTemplate.Address.UpdatedAt,
					},
					CreatedAt: &trip.TripTemplate.CreatedAt,
					UpdatedAt: &trip.TripTemplate.UpdatedAt,
				},
			},
		}

		if len(trip.DiveMasters) > 0 {
			resp.Trip.DiveMasters = make([]*pb.DiveMaster, 0, len(trip.DiveMasters))
			for _, dive_master := range trip.DiveMasters {
				resp.Trip.DiveMasters = append(resp.Trip.DiveMasters, &pb.DiveMaster{
					FirstName: dive_master.FirstName,
					LastName:  dive_master.LastName,
					Level:     pb.LevelType(dive_master.Level),
				},
				)
			}
		}

		// if len(tripTemplate.Images) > 0 {
		// 	resp.Template.Images = make([]*pb.File, 0, len(tripTemplate.Images))
		// 	for _, link := range tripTemplate.Images {
		// 		file := &pb.File{
		// 			Link: link,
		// 		}
		// 		resp.Template.Images = append(resp.Template.Images, file)
		// 	}
		// }

		srv.Send(resp)
	}

	fmt.Println(trips, err)

	return nil
}
