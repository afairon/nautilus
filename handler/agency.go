package handler

import (
	"context"

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
			Boat: boat,
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
			DiveMaster: diveMaster,
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
		resp := &pb.ListHotelsResponse{
			Hotel: hotel,
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
		return err
	}

	for _, liveaboard := range liveaboards {
		resp := &pb.ListLiveaboardsResponse{
			Liveaboard: liveaboard,
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
				CreatedOn: &staff.CreatedAt,
				UpdatedOn: &staff.UpdatedAt,
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
				Description:  tripTemplate.Descirption,
				TripType:     pb.TripType(tripTemplate.Type),
				HotelId:      uint64(tripTemplate.HotelID),
				BoatId:       uint64(tripTemplate.BoatID),
				LiveaboardId: uint64(tripTemplate.LiveaboardID),
				CreatedOn:    &tripTemplate.CreatedAt,
				UpdatedOn:    &tripTemplate.UpdatedAt,
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
				CreatedOn:           &trip.CreatedAt,
				UpdatedOn:           &trip.UpdatedAt,
			},
		}
		srv.Send(resp)
	}

	return nil
}
