package handler

import (
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
		roomTypes, err = handler.roomTypeService.ListRoomTypesByHotelIDAndTrip(ctx, t.HotelId, req.GetTripId(), req.GetLimit(), req.GetOffset())
		if err != nil {
			return err
		}
	case *pb.ListRoomTypesByTripRequest_LiveaboardId:
		roomTypes, err = handler.roomTypeService.ListRoomTypesByHotelID(ctx, t.LiveaboardId, req.GetTripId(), req.GetLimit(), req.GetOffset())
		if err != nil {
			return err
		}
	default:
		// Cannot determine type of id
		return status.Error(codes.InvalidArgument, "trip type: invalid request")
	}

	for _, roomType := range roomTypes {
		resp := &pb.ListRoomTypesByTripResponse{
			RoomType: &pb.RoomType{
				Id:          uint64(roomType.ID),
				Name:        roomType.Name,
				Description: roomType.Description,
				MaxGuest:    roomType.MaxGuest,
				Price:       roomType.Price,
				Quantity:    roomType.Quantity,
				CreatedAt:   &roomType.CreatedAt,
				UpdatedAt:   &roomType.UpdatedAt,
			},
		}

		if len(roomType.Images) > 0 {
			resp.RoomType.RoomImages = make([]*pb.File, 0, len(roomType.Images))
			for _, link := range roomType.Images {
				file := &pb.File{
					Link: link,
				}
				resp.RoomType.RoomImages = append(resp.RoomType.RoomImages, file)
			}
		}

		srv.Send(resp)
	}

	return nil
}
