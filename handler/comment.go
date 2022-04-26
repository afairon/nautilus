package handler

import (
	"context"

	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/golang/protobuf/ptypes/empty"
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
		c := model.TripComment{}
		c.From(t.Trip)
		comment, err := handler.service.CreateTripComment(ctx, &c)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Trip{
			Trip: comment.GetProto(),
		}
	case *pb.CreateCommentRequest_Hotel:
		c := model.HotelComment{}
		c.From(t.Hotel)
		comment, err := handler.service.CreateHotelComment(ctx, &c)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Hotel{
			Hotel: comment.GetProto(),
		}
	case *pb.CreateCommentRequest_Liveaboard:
		c := model.LiveaboardComment{}
		c.From(t.Liveaboard)
		comment, err := handler.service.CreateLiveaboardComment(ctx, &c)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Liveaboard{
			Liveaboard: comment.GetProto(),
		}
	default:
		// Cannot determine type of comment
		return nil, status.Error(codes.InvalidArgument, "comment: invalid request")
	}

	return &resp, nil
}

// DeleteComment deletes comment by id.
func (handler *CommentHandler) DeleteComment(ctx context.Context, req *pb.DeleteCommentRequest) (*empty.Empty, error) {
	switch t := req.GetType().(type) {
	case *pb.DeleteCommentRequest_Trip:
		c := model.TripComment{}
		c.From(t.Trip)
		if err := handler.service.DeleteTripComment(ctx, &c); err != nil {
			return nil, err
		}
	case *pb.DeleteCommentRequest_Hotel:
		c := model.HotelComment{}
		c.From(t.Hotel)
		if err := handler.service.DeleteHotelComment(ctx, &c); err != nil {
			return nil, err
		}
	case *pb.DeleteCommentRequest_Liveaboard:
		c := model.LiveaboardComment{}
		c.From(t.Liveaboard)
		if err := handler.service.DeleteLiveaboardComment(ctx, &c); err != nil {
			return nil, err
		}
	default:
		// Cannot determine type of comment
		return nil, status.Error(codes.InvalidArgument, "comment: invalid request")
	}

	return &empty.Empty{}, nil
}
