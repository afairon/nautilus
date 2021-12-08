package handler

import (
	"context"

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
		comment, err := handler.service.CreateTripComment(ctx, t.Trip)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Trip{Trip: comment}
	case *pb.CreateCommentRequest_Hotel:
		comment, err := handler.service.CreateHotelComment(ctx, t.Hotel)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Hotel{Hotel: comment}
	case *pb.CreateCommentRequest_Liveaboard:
		comment, err := handler.service.CreateLiveaboardComment(ctx, t.Liveaboard)
		if err != nil {
			return nil, err
		}
		resp.Type = &pb.CreateCommentResponse_Liveaboard{Liveaboard: comment}
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
