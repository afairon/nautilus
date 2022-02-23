package handler

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// CommentHandler implements the Comment rpc interface.
type CommentHandler struct {
	service service.CommentService
}

// NewCommentHandler creates a new CommentHandler.
func NewCommentHandler(service service.CommentService) *CommentHandler {
	return &CommentHandler{
		service: service,
	}
}

// Create handles comment creation. It delegates the comment creation to commentService.
func (handler *CommentHandler) CreateComment(ctx context.Context, req *pb.CreateCommentRequest) (*pb.CreateCommentResponse, error) {
	// newly created comment
	resp := pb.CreateCommentResponse{}

	// Get comment request type.
	switch t := req.GetType().(type) {
	case *pb.CreateCommentRequest_Trip:
		c := model.TripComment{
			Comment:       t.Trip.GetComment(),
			Stars:         t.Trip.GetStars(),
			ReservationID: uint(t.Trip.GetReservationId()),
		}
		comment, err := handler.service.CreateTripComment(ctx, &c)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Trip{Trip: &pb.TripComment{
			Id:            uint64(comment.ID),
			Comment:       comment.Comment,
			Stars:         comment.Stars,
			ReservationId: uint64(comment.ReservationID),
			CreatedAt:     &comment.CreatedAt,
			UpdatedAt:     &comment.UpdatedAt,
		}}
	case *pb.CreateCommentRequest_Hotel:
		c := model.HotelComment{
			Comment:       t.Hotel.GetComment(),
			Stars:         t.Hotel.GetStars(),
			ReservationID: uint(t.Hotel.GetReservationId()),
		}
		comment, err := handler.service.CreateHotelComment(ctx, &c)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Hotel{Hotel: &pb.HotelComment{
			Id:            uint64(comment.ID),
			Comment:       comment.Comment,
			Stars:         comment.Stars,
			ReservationId: uint64(comment.ReservationID),
			CreatedAt:     &comment.CreatedAt,
			UpdatedAt:     &comment.UpdatedAt,
		}}
	case *pb.CreateCommentRequest_Liveaboard:
		c := model.LiveaboardComment{
			Comment:       t.Liveaboard.GetComment(),
			Stars:         t.Liveaboard.GetStars(),
			ReservationID: uint(t.Liveaboard.GetReservationId()),
		}
		comment, err := handler.service.CreateLiveaboardComment(ctx, &c)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Liveaboard{Liveaboard: &pb.LiveaboardComment{
			Id:            uint64(comment.ID),
			Comment:       comment.Comment,
			Stars:         comment.Stars,
			ReservationId: uint64(comment.ReservationID),
			CreatedAt:     &comment.CreatedAt,
			UpdatedAt:     &comment.UpdatedAt,
		}}
	default:
		// Cannot determine type of comment
		return nil, status.Error(codes.InvalidArgument, "comment: invalid request")
	}

	return &resp, nil
}

// GetComment retrieves comment by id.
func (handler *CommentHandler) GetComment(ctx context.Context, req *pb.GetCommentRequest) (*pb.GetCommentResponse, error) {
	return nil, status.Error(codes.Unimplemented, "GetComment unimplemented")
}
