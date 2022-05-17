package handler_test

import (
	"context"
	"errors"
	"testing"

	"github.com/afairon/nautilus/handler"
	"github.com/afairon/nautilus/model"
	"github.com/afairon/nautilus/pb"
	"github.com/afairon/nautilus/service"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
	"google.golang.org/grpc"
)

func TestAgencyAddDiveMaster(t *testing.T) {
	t.Run("successful", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddDiveMasterRequest{
			DiveMaster: &pb.DiveMaster{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddDiveMaster", ctx, req.DiveMaster).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddDiveMaster(ctx, req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddDiveMasterRequest{
			DiveMaster: &pb.DiveMaster{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddDiveMaster", ctx, req.DiveMaster).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddDiveMaster(ctx, req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyAddHotel(t *testing.T) {
	t.Run("successful", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddHotelRequest{
			Hotel: &pb.Hotel{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddHotel", ctx, req.Hotel).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddHotel(ctx, req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddHotelRequest{
			Hotel: &pb.Hotel{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddHotel", ctx, req.Hotel).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddHotel(ctx, req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyAddStaff(t *testing.T) {
	t.Run("successful", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddStaffRequest{
			Staff: &pb.Staff{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddStaff", ctx, req.Staff).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddStaff(ctx, req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddStaffRequest{
			Staff: &pb.Staff{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddStaff", ctx, req.Staff).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddStaff(ctx, req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyAddTrip(t *testing.T) {
	type agencyAddTripTestCase struct {
		name string
		req  *pb.AddTripRequest
	}

	testCases := []agencyAddTripTestCase{
		{
			name: "successfully add ONSHORE trip",
			req: &pb.AddTripRequest{
				Trip: &pb.TripWithTemplate{
					TripTemplate: &pb.TripTemplate{
						TripType: pb.ONSHORE,
					},
					TripRoomTypePrices: []*pb.RoomTypeTripPrice{
						{}, {},
					},
				},
			},
		},
		{
			name: "successfully add OFFSHORE trip",
			req: &pb.AddTripRequest{
				Trip: &pb.TripWithTemplate{
					TripTemplate: &pb.TripTemplate{
						TripType: pb.OFFSHORE,
					},
					TripRoomTypePrices: []*pb.RoomTypeTripPrice{
						{}, {},
					},
				},
			},
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Assert
			ctx := context.Background()
			agencyService := service.NewAgencyServiceMock()
			agencyService.On("AddTrip", ctx, mock.AnythingOfType("*model.Trip"), mock.AnythingOfType("[]model.RoomTypeTripPrice")).Return(nil)
			agencyHandler := handler.NewAgencyHandler(agencyService)

			//Act
			_, err := agencyHandler.AddTrip(ctx, c.req)

			//Assert
			assert.NoError(t, err)
		})
	}

	t.Run("fail", func(t *testing.T) {
		//Assert
		ctx := context.Background()
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddTrip", ctx, mock.AnythingOfType("*model.Trip"), mock.AnythingOfType("[]model.RoomTypeTripPrice")).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)
		req := &pb.AddTripRequest{
			Trip: &pb.TripWithTemplate{
				TripTemplate: &pb.TripTemplate{},
			},
		}

		//Act
		_, err := agencyHandler.AddTrip(ctx, req)

		// //Assert
		assert.Error(t, err)
	})
}

func TestAgencyAddDivingBoat(t *testing.T) {
	t.Run("successful", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddDivingBoatRequest{
			DivingBoat: &pb.Boat{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddDivingBoat", ctx, &pb.Boat{}).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddDivingBoat(ctx, req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddDivingBoatRequest{
			DivingBoat: &pb.Boat{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddDivingBoat", ctx, &pb.Boat{}).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddDivingBoat(ctx, req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyAddLiveaboard(t *testing.T) {
	t.Run("successful", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddLiveaboardRequest{
			Liveaboard: &pb.Liveaboard{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddLiveaboard", ctx, &pb.Liveaboard{}).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddLiveaboard(ctx, req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		ctx := context.Background()
		req := &pb.AddLiveaboardRequest{
			Liveaboard: &pb.Liveaboard{},
		}
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("AddLiveaboard", ctx, &pb.Liveaboard{}).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.AddLiveaboard(ctx, req)

		//Assert
		assert.Error(t, err)
	})
}

type mockAgencyService_ListBoatsServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListBoatsServer) Send(boat *pb.ListBoatsResponse) error {
	args := m.Called(boat)
	return args.Error(0)
}

func (m *mockAgencyService_ListBoatsServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestListBoats(t *testing.T) {
	//Arrange
	req := &pb.ListBoatsRequest{
		Limit:  20,
		Offset: 0,
	}
	boats := []*model.Boat{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListBoats", context.Background(), req.Limit, req.Offset).Return(boats, nil)
		srv := &mockAgencyService_ListBoatsServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListBoatsResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListBoats(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListBoats", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListBoatsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListBoats(req, srv)

		//Assert
		assert.Error(t, err)
	})
}
