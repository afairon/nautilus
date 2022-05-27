package handler

import (
	"context"
	"fmt"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type RoomTypeHandler struct {
	roomTypeService service.RoomTypeService
}

func NewRoomTypeHandler(roomTypeService service.RoomTypeService) *RoomTypeHandler {
	return &RoomTypeHandler{
		roomTypeService: roomTypeService,
	}
}

func (handler *RoomTypeHandler) ListRoomTypesByTrip(req *pb.ListRoomTypesByTripRequest, srv pb.RoomTypeService_ListRoomTypesByTripServer) error {
	ctx := srv.Context()
	var roomTypes []*model.RoomType
	var err error

	switch t := req.GetId().(type) {
	case *pb.ListRoomTypesByTripRequest_HotelId:
		roomTypes, err = handler.roomTypeService.ListRoomTypesByHotelAndTrip(ctx, t.HotelId, req.GetTripId(), req.GetLimit(), req.GetOffset())
		if err != nil {
			return err
		}
	case *pb.ListRoomTypesByTripRequest_LiveaboardId:
		roomTypes, err = handler.roomTypeService.ListRoomTypesByLiveaboardAndTrip(ctx, t.LiveaboardId, req.GetTripId(), req.GetLimit(), req.GetOffset())
		if err != nil {
			return err
		}
	default:
		// Cannot determine type of id
		return status.Error(codes.InvalidArgument, "trip type: invalid request")
	}

	for _, roomType := range roomTypes {
		resp := &pb.ListRoomTypesByTripResponse{
			RoomType: roomType.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}
func (handler *RoomTypeHandler) ListRoomsOfReservation(req *pb.ListRoomsOfReservationRequest, srv pb.RoomTypeService_ListRoomsOfReservationServer) error {
	ctx := srv.Context()
	reservationRooms, err := handler.roomTypeService.ListRoomsOfReservation(ctx, req.GetReservationId())

	if err != nil {
		return err
	}

	if len(reservationRooms) == 0 {
		return status.Error(codes.NotFound, "ListRoomsOfReservation: not found")
	}

	for _, reservationRoom := range reservationRooms {
		fmt.Println("OK")
		resp := &pb.ListRoomsOfReservationResponse{
			Room: reservationRoom.GetProto(),
		}

		srv.Send(resp)
	}

	return nil
}

func (handler *RoomTypeHandler) GetRoomType(ctx context.Context, req *pb.GetRoomTypeRequest) (*pb.GetRoomTypeResponse, error) {
	roomType, err := handler.roomTypeService.GetRoomType(ctx, req.GetRoomTypeId())

	if err != nil {
		return nil, err
	}

	resp := &pb.GetRoomTypeResponse{
		RoomType: roomType.GetProto(),
	}

	return resp, nil
}
