package handler

import (
	"context"

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
func (handler *CommentHandler) Create(ctx context.Context, req *pb.CommentRequest) (*empty.Empty, error) {
	// Get comment request type.
	switch t := req.GetType().(type) {
	case *pb.CommentRequest_Trip:
		err := handler.service.CreateTripComment(ctx, t.Trip)
		if err != nil {
			return nil, err
		}
	case *pb.CommentRequest_Hotel:
		err := handler.service.CreateHotelComment(ctx, t.Hotel)
		if err != nil {
			return nil, err
		}
	case *pb.CommentRequest_Liveaboard:
		err := handler.service.CreateLiveaboardComment(ctx, t.Liveaboard)
		if err != nil {
			return nil, err
		}
	default:
		// Cannot determine type of comment
		return nil, status.Error(codes.InvalidArgument, "comment: invalid request")
	}

	return &empty.Empty{}, nil
}
