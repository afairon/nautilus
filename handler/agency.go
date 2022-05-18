package handler

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
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
	trip := model.Trip{}
	trip.FromWithTemplate(req.Trip)
	var roomTypePrices []model.RoomTypeTripPrice
	switch req.Trip.TripTemplate.TripType {
	case pb.ONSHORE:
		roomTypePrices = make([]model.RoomTypeTripPrice, 0, len(req.Trip.TripRoomTypePrices))

		for _, roomTypePrice := range req.Trip.TripRoomTypePrices {
			rtp := &model.HotelRoomTypeTripPrice{}
			rtp.From(roomTypePrice)
			roomTypePrices = append(roomTypePrices, rtp)
		}
	case pb.OFFSHORE:
		roomTypePrices = make([]model.RoomTypeTripPrice, 0, len(req.Trip.TripRoomTypePrices))

		for _, roomTypePrice := range req.Trip.TripRoomTypePrices {
			rtp := model.LiveaboardRoomTypeTripPrice{}
			rtp.From(roomTypePrice)
			roomTypePrices = append(roomTypePrices, &rtp)
		}

	}

	err := handler.agencyService.AddTrip(ctx, &trip, roomTypePrices)

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

	boats, err := handler.agencyService.ListBoats(ctx, req.Limit, req.Offset)
	if err != nil {
		return err
	}

	for _, boat := range boats {
		resp := &pb.ListBoatsResponse{
			Boat: boat.GetProto(),
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
			DiveMaster: diveMaster.GetProto(),
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
			Hotel: hotel.GetProto(),
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
			Liveaboard: liveaboard.GetProto(),
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
			Staff: &pb.Staff{
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
			Template: &pb.TripTemplate{
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
			Trip: &pb.Trip{
				Id:                  uint64(trip.ID),
				TripTemplateId:      uint64(trip.TripTemplateID),
				MaxGuest:            trip.MaxGuest,
				StartDate:           trip.StartDate,
				EndDate:             trip.EndDate,
				LastReservationDate: trip.LastReservationDate,
				CreatedAt:           &trip.CreatedAt,
				UpdatedAt:           &trip.UpdatedAt,
			},
		}
		srv.Send(resp)
	}

	return nil
}

func (handler *AgencyHandler) ListTripsWithTemplates(req *pb.ListTripsWithTemplatesRequest, srv pb.AgencyService_ListTripsWithTemplatesServer) error {
	ctx := srv.Context()

	trips, err := handler.agencyService.ListTripsWithTemplates(ctx, req.Limit, req.Offset)

	if err != nil {
		return err
	}

	if len(trips) == 0 {
		return status.Error(codes.NotFound, "ListTripsWithTemplates: not found")
	}

	for _, trip := range trips {
		resp := &pb.ListTripsWithTemplatesResponse{
			Trip: trip.GetProtoWithTemplate(),
		}

		srv.Send(resp)
	}

	return nil
}

func (handler *AgencyHandler) ListRoomTypes(req *pb.ListRoomTypesRequest, srv pb.AgencyService_ListRoomTypesServer) error {
	ctx := srv.Context()
	var roomTypes []*model.RoomType
	var err error

	switch t := req.Id.(type) {
	case *pb.ListRoomTypesRequest_HotelId:
		roomTypes, err = handler.agencyService.ListRoomTypesByHotelID(ctx, t.HotelId, req.Limit, req.Offset)
		if err != nil {
			return err
		}
	case *pb.ListRoomTypesRequest_LiveaboardId:
		roomTypes, err = handler.agencyService.ListRoomTypesByLiveaboardID(ctx, t.LiveaboardId, req.Limit, req.Offset)
		if err != nil {
			return err
		}
	default:
		// Cannot determine type of id
		return status.Error(codes.InvalidArgument, "account: invalid request")
	}

	for _, roomType := range roomTypes {
		resp := &pb.ListRoomTypesResponse{
			RoomType: roomType.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}
func (handler *AgencyHandler) ListDiveSitesByTrip(req *pb.ListDiveSitesByTripRequest, srv pb.AgencyService_ListDiveSitesByTripServer) error {
	ctx := srv.Context()

	diveSites, err := handler.agencyService.ListDiveSitesByTripID(ctx, req.TripId, req.Limit, req.Offset)
	if err != nil {
		return err
	}

	if len(diveSites) == 0 {
		return status.Error(codes.NotFound, "ListValidTrips: not found")
	}

	for _, diveSite := range diveSites {
		resp := &pb.ListDiveSitesByTripResponse{
			DiveSite: diveSite.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}

func (handler *AgencyHandler) ListDiveMastersByTrip(req *pb.ListDiveMastersByTripRequest, srv pb.AgencyService_ListDiveMastersByTripServer) error {
	ctx := srv.Context()

	diveMasters, err := handler.agencyService.ListDiveMastersByTripID(ctx, req.TripId, req.Limit, req.Offset)
	if err != nil {
		return err
	}

	if len(diveMasters) == 0 {
		return status.Error(codes.NotFound, "ListValidTrips: not found")
	}

	for _, diveMaster := range diveMasters {
		resp := &pb.ListDiveMastersByTripResponse{
			DiveMaster: diveMaster.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}

func (handler *AgencyHandler) SearchTrips(req *pb.SearchTripsRequest, srv pb.AgencyService_SearchTripsServer) error {
	ctx := srv.Context()

	trips, err := handler.agencyService.SearchTrips(ctx, req.GetSearchTripsOptions(), req.GetLimit(), req.GetOffset())

	if err != nil {
		return err
	}

	if len(trips) == 0 {
		return status.Error(codes.NotFound, "SearchTrips: not found")
	}

	for _, trip := range trips {
		resp := &pb.SearchTripsResponse{
			Trip: trip.GetProtoWithTemplate(),
		}

		srv.Send(resp)
	}

	return nil
}

func (handler *AgencyHandler) UpdateTrip(ctx context.Context, req *pb.UpdateTripRequest) (*emptypb.Empty, error) {
	trip := model.Trip{}
	trip.FromWithTemplate(req.Trip)
	err := handler.agencyService.UpdateTrip(ctx, &trip)

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) UpdateHotel(ctx context.Context, req *pb.UpdateHotelRequest) (*emptypb.Empty, error) {
	hotel := model.Hotel{}
	hotel.From(req.Hotel)

	err := handler.agencyService.UpdateHotel(ctx, &hotel)

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) UpdateLiveaboard(ctx context.Context, req *pb.UpdateLiveaboardRequest) (*emptypb.Empty, error) {
	liveaboard := model.Liveaboard{}
	liveaboard.From(req.Liveaboard)
	err := handler.agencyService.UpdateLiveaboard(ctx, &liveaboard)

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) UpdateBoat(ctx context.Context, req *pb.UpdateBoatRequest) (*emptypb.Empty, error) {
	boat := model.Boat{}
	boat.From(req.Boat)

	err := handler.agencyService.UpdateBoat(ctx, &boat)

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) UpdateDiveMaster(ctx context.Context, req *pb.UpdateDiveMasterRequest) (*emptypb.Empty, error) {
	diveMaster := model.DiveMaster{}
	diveMaster.From(req.DiveMaster)

	err := handler.agencyService.UpdateDiveMaster(ctx, &diveMaster)

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) UpdateStaff(ctx context.Context, req *pb.UpdateStaffRequest) (*emptypb.Empty, error) {
	staff := model.Staff{}
	staff.From(req.Staff)

	err := handler.agencyService.UpdateStaff(ctx, &staff)

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) UpdateTripTemplate(ctx context.Context, req *pb.UpdateTripTemplateRequest) (*emptypb.Empty, error) {
	tripTemplate := model.TripTemplate{}
	tripTemplate.From(req.TripTemplate)

	err := handler.agencyService.UpdateTripTemplate(ctx, &tripTemplate)

	if err != nil {
		return nil, err
	}

	return &empty.Empty{}, nil
}

func (handler *AgencyHandler) DeleteDiveMaster(ctx context.Context, req *pb.DeleteDiveMasterRequest) (*empty.Empty, error) {
	diveMaster := model.DiveMaster{}
	diveMaster.From(req.DiveMaster)

	if err := handler.agencyService.DeleteDiveMaster(ctx, &diveMaster); err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *AgencyHandler) DeleteDivingBoat(ctx context.Context, req *pb.DeleteDivingBoatRequest) (*empty.Empty, error) {
	divingBoat := model.Boat{}
	divingBoat.From(req.DivingBoat)

	if err := handler.agencyService.DeleteDivingBoat(ctx, &divingBoat); err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *AgencyHandler) DeleteHotel(ctx context.Context, req *pb.DeleteHotelRequest) (*empty.Empty, error) {
	hotel := model.Hotel{}
	hotel.From(req.Hotel)

	if err := handler.agencyService.DeleteHotel(ctx, &hotel); err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *AgencyHandler) DeleteLiveaboard(ctx context.Context, req *pb.DeleteLiveaboardRequest) (*empty.Empty, error) {
	liveaboard := model.Liveaboard{}
	liveaboard.From(req.Liveaboard)

	if err := handler.agencyService.DeleteLiveaboard(ctx, &liveaboard); err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *AgencyHandler) DeleteStaff(ctx context.Context, req *pb.DeleteStaffRequest) (*empty.Empty, error) {
	staff := model.Staff{}
	staff.From(req.Staff)

	if err := handler.agencyService.DeleteStaff(ctx, &staff); err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *AgencyHandler) DeleteTripTemplate(ctx context.Context, req *pb.DeleteTripTemplateRequest) (*empty.Empty, error) {
	tripTemplate := model.TripTemplate{}
	tripTemplate.From(req.TripTemplate)

	if err := handler.agencyService.DeleteTripTemplate(ctx, &tripTemplate); err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *AgencyHandler) DeleteTrip(ctx context.Context, req *pb.DeleteTripRequest) (*empty.Empty, error) {
	trip := model.Trip{}
	trip.From(req.Trip)

	if err := handler.agencyService.DeleteTrip(ctx, &trip); err != nil {
		return nil, err
	}

	return &emptypb.Empty{}, nil
}

func (handler *AgencyHandler) GenerateCurrentTripsReport(req *pb.GenerateCurrentTripsReportRequest, srv pb.AgencyService_GenerateCurrentTripsReportServer) error {
	ctx := srv.Context()
	reportTrips, err := handler.agencyService.GenerateCurrentTripsReport(ctx, req.Limit, req.Offset)

	if err != nil {
		return err
	}

	for _, reportTrip := range reportTrips {
		resp := &pb.GenerateCurrentTripsReportResponse{
			Report: reportTrip.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}

func (handler *AgencyHandler) GenerateYearlyEndedTripsReport(req *pb.GenerateYearlyEndedTripsReportRequest, srv pb.AgencyService_GenerateYearlyEndedTripsReportServer) error {
	ctx := srv.Context()
	yearlyReportTrips, err := handler.agencyService.GenerateYearlyEndedTripsReport(ctx, req.GetYears(), req.GetLimit(), req.GetOffset())

	if err != nil {
		return err
	}

	for _, reportTrips := range yearlyReportTrips {
		rts := make([]*pb.ReportTrip, 0, len(reportTrips))

		for _, reportTrip := range reportTrips {
			rts = append(rts, reportTrip.GetProto())
		}

		resp := &pb.GenerateYearlyEndedTripsReportResponse{
			Reports: rts,
		}

		srv.Send(resp)

	}

	return nil
}

func (handler *AgencyHandler) GenerateIncomingTripsReport(req *pb.GenerateIncomingTripsReportRequest, srv pb.AgencyService_GenerateIncomingTripsReportServer) error {
	ctx := srv.Context()
	reportTrips, err := handler.agencyService.GenerateIncomingTripsReport(ctx, req.GetWeeks(), req.GetLimit(), req.GetOffset())

	if err != nil {
		return err
	}

	for _, reportTrip := range reportTrips {
		resp := &pb.GenerateIncomingTripsReportResponse{
			Report: reportTrip.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}
