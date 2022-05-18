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
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
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

func TestAgencyListBoats(t *testing.T) {
	req := &pb.ListBoatsRequest{
		Limit:  20,
		Offset: 0,
	}
	boats := []*model.Boat{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
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

type mockAgencyService_ListDiveMastersServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListDiveMastersServer) Send(diveMaster *pb.ListDiveMastersResponse) error {
	args := m.Called(diveMaster)
	return args.Error(0)
}

func (m *mockAgencyService_ListDiveMastersServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListDiveMasters(t *testing.T) {
	req := &pb.ListDiveMastersRequest{
		Limit:  20,
		Offset: 0,
	}
	diveMasters := []*model.DiveMaster{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveMasters", context.Background(), req.Limit, req.Offset).Return(diveMasters, nil)
		srv := &mockAgencyService_ListDiveMastersServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListDiveMastersResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListDiveMasters(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveMasters", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListDiveMastersServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListDiveMasters(req, srv)

		//Assert
		assert.Error(t, err)
	})
}

type mockAgencyService_ListHotelsServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListHotelsServer) Send(hotel *pb.ListHotelsResponse) error {
	args := m.Called(hotel)
	return args.Error(0)
}

func (m *mockAgencyService_ListHotelsServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListHotels(t *testing.T) {
	req := &pb.ListHotelsRequest{
		Limit:  20,
		Offset: 0,
	}
	hotels := []*model.Hotel{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListHotels", context.Background(), req.Limit, req.Offset).Return(hotels, nil)
		srv := &mockAgencyService_ListHotelsServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListHotelsResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListHotels(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListHotels", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListHotelsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListHotels(req, srv)

		//Assert
		assert.Error(t, err)
	})
}

type mockAgencyService_ListLiveaboardsServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListLiveaboardsServer) Send(liveaboard *pb.ListLiveaboardsResponse) error {
	args := m.Called(liveaboard)
	return args.Error(0)
}

func (m *mockAgencyService_ListLiveaboardsServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}
func TestAgencyListLiveaboards(t *testing.T) {
	req := &pb.ListLiveaboardsRequest{
		Limit:  20,
		Offset: 0,
	}
	liveaboards := []*model.Liveaboard{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListLiveaboards", context.Background(), req.Limit, req.Offset).Return(liveaboards, nil)
		srv := &mockAgencyService_ListLiveaboardsServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListLiveaboardsResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListLiveaboards(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListLiveaboards", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListLiveaboardsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListLiveaboards(req, srv)

		//Assert
		assert.Error(t, err)
	})
}

type mockAgencyService_ListStaffsServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListStaffsServer) Send(staff *pb.ListStaffsResponse) error {
	args := m.Called(staff)
	return args.Error(0)
}

func (m *mockAgencyService_ListStaffsServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}
func TestAgencyListStaffs(t *testing.T) {
	req := &pb.ListStaffsRequest{
		Limit:  20,
		Offset: 0,
	}
	staffs := []*model.Staff{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListStaffs", context.Background(), req.Limit, req.Offset).Return(staffs, nil)
		srv := &mockAgencyService_ListStaffsServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListStaffsResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListStaffs(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListStaffs", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListStaffsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListStaffs(req, srv)

		//Assert
		assert.Error(t, err)
	})

	t.Run("no staffs", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListStaffs", context.Background(), req.Limit, req.Offset).Return(nil, nil)
		srv := &mockAgencyService_ListStaffsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListStaffs(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListStaffs: not found"))
		srv.AssertNotCalled(t, "Send")
	})
}

type mockAgencyService_ListTripTemplatesServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListTripTemplatesServer) Send(tripTemplate *pb.ListTripTemplatesResponse) error {
	args := m.Called(tripTemplate)
	return args.Error(0)
}

func (m *mockAgencyService_ListTripTemplatesServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListTripTemplates(t *testing.T) {
	req := &pb.ListTripTemplatesRequest{
		Limit:  20,
		Offset: 0,
	}
	tripTemplates := []*model.TripTemplate{
		{
			Name:        "",
			Description: "",
			Type:        0,
			Images:      []string{"id1", "id2"},
		}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTripTemplates", context.Background(), req.Limit, req.Offset).Return(tripTemplates, nil)
		srv := &mockAgencyService_ListTripTemplatesServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListTripTemplatesResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTripTemplates(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTripTemplates", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListTripTemplatesServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTripTemplates(req, srv)

		//Assert
		assert.Error(t, err)
	})

	t.Run("no trip templates", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTripTemplates", context.Background(), req.Limit, req.Offset).Return(nil, nil)
		srv := &mockAgencyService_ListTripTemplatesServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTripTemplates(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListTripTemplates: not found"))
		srv.AssertNotCalled(t, "Send")
	})
}

type mockAgencyService_ListTripsServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListTripsServer) Send(trip *pb.ListTripsResponse) error {
	args := m.Called(trip)
	return args.Error(0)
}

func (m *mockAgencyService_ListTripsServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListTrips(t *testing.T) {
	req := &pb.ListTripsRequest{
		Limit:  20,
		Offset: 0,
	}
	trips := []*model.Trip{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTrips", context.Background(), req.Limit, req.Offset).Return(trips, nil)
		srv := &mockAgencyService_ListTripsServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListTripsResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTrips(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTrips", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListTripsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTrips(req, srv)

		//Assert
		assert.Error(t, err)
	})

	t.Run("no trips", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTrips", context.Background(), req.Limit, req.Offset).Return(nil, nil)
		srv := &mockAgencyService_ListTripsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTrips(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListTrips: not found"))
		srv.AssertNotCalled(t, "Send")
	})
}

type mockAgencyService_ListTripsWithTemplatesServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListTripsWithTemplatesServer) Send(trip *pb.ListTripsWithTemplatesResponse) error {
	args := m.Called(trip)
	return args.Error(0)
}

func (m *mockAgencyService_ListTripsWithTemplatesServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListTripsWithTemplates(t *testing.T) {
	req := &pb.ListTripsWithTemplatesRequest{
		Limit:  20,
		Offset: 0,
	}
	trips := []*model.Trip{
		{}, {},
	}

	t.Run("successful", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTripsWithTemplates", context.Background(), req.Limit, req.Offset).Return(trips, nil)
		srv := &mockAgencyService_ListTripsWithTemplatesServer{}
		srv.On("Send", mock.AnythingOfType("*pb.ListTripsWithTemplatesResponse")).Return(nil).Twice()
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTripsWithTemplates(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTripsWithTemplates", context.Background(), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_ListTripsWithTemplatesServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTripsWithTemplates(req, srv)

		//Assert
		assert.Error(t, err)
	})

	t.Run("no trips", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListTripsWithTemplates", context.Background(), req.Limit, req.Offset).Return(nil, nil)
		srv := &mockAgencyService_ListTripsWithTemplatesServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.ListTripsWithTemplates(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListTripsWithTemplates: not found"))
		srv.AssertNotCalled(t, "Send")
	})
}

type mockAgencyService_ListRoomTypesServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListRoomTypesServer) Send(roomtype *pb.ListRoomTypesResponse) error {
	args := m.Called(roomtype)
	return args.Error(0)
}

func (m *mockAgencyService_ListRoomTypesServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListRoomTypes(t *testing.T) {
	type agencyListRoomTypesTestCase struct {
		name string
		Id   interface{}
	}

	testCases := []agencyListRoomTypesTestCase{
		{
			name: "list roomtypes by hotel",
			Id: &pb.ListRoomTypesRequest_HotelId{
				HotelId: 0,
			},
		},
		{
			name: "list roomtypes by liveaboard",
			Id: &pb.ListRoomTypesRequest_LiveaboardId{
				LiveaboardId: 0,
			},
		},
	}

	roomTypes := []*model.RoomType{
		{}, {},
	}

	req := &pb.ListRoomTypesRequest{
		Limit:  20,
		Offset: 0,
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			agencyService := service.NewAgencyServiceMock()
			switch t := c.Id.(type) {
			case *pb.ListRoomTypesRequest_HotelId:
				req.Id = t
				agencyService.On("ListRoomTypesByHotelID", context.Background(), t.HotelId, req.Limit, req.Offset).Return(roomTypes, nil)
			case *pb.ListRoomTypesRequest_LiveaboardId:
				req.Id = t
				agencyService.On("ListRoomTypesByLiveaboardID", context.Background(), t.LiveaboardId, req.Limit, req.Offset).Return(roomTypes, nil)
			}
			agencyHandler := handler.NewAgencyHandler(agencyService)
			srv := &mockAgencyService_ListRoomTypesServer{}
			srv.On("Context").Return(context.Background())
			srv.On("Send", mock.AnythingOfType("*pb.ListRoomTypesResponse")).Return(nil).Twice()

			//Act
			err := agencyHandler.ListRoomTypes(req, srv)

			//Assert
			assert.NoError(t, err)
			srv.AssertNumberOfCalls(t, "Send", 2)
		})
	}

	testCases = []agencyListRoomTypesTestCase{
		{
			name: "list roomtypes by hotel fail",
			Id: &pb.ListRoomTypesRequest_HotelId{
				HotelId: 0,
			},
		},
		{
			name: "list roomtypes by liveaboard fail",
			Id: &pb.ListRoomTypesRequest_LiveaboardId{
				LiveaboardId: 0,
			},
		},
	}

	for _, c := range testCases {
		t.Run(c.name, func(t *testing.T) {
			//Arrange
			agencyService := service.NewAgencyServiceMock()
			switch t := c.Id.(type) {
			case *pb.ListRoomTypesRequest_HotelId:
				req.Id = t
				agencyService.On("ListRoomTypesByHotelID", context.Background(), t.HotelId, req.Limit, req.Offset).Return(nil, errors.New(""))
			case *pb.ListRoomTypesRequest_LiveaboardId:
				req.Id = t
				agencyService.On("ListRoomTypesByLiveaboardID", context.Background(), t.LiveaboardId, req.Limit, req.Offset).Return(nil, errors.New(""))
			}
			agencyHandler := handler.NewAgencyHandler(agencyService)
			srv := &mockAgencyService_ListRoomTypesServer{}
			srv.On("Context").Return(context.Background())

			//Act
			err := agencyHandler.ListRoomTypes(req, srv)

			//Assert
			assert.Error(t, err)
			srv.AssertNotCalled(t, "Send")
		})
	}
}

type mockAgencyService_ListDiveSitesByTripServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListDiveSitesByTripServer) Send(diveSite *pb.ListDiveSitesByTripResponse) error {
	args := m.Called(diveSite)
	return args.Error(0)
}

func (m *mockAgencyService_ListDiveSitesByTripServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListDiveSitesByTrip(t *testing.T) {
	diveSites := []*model.DiveSite{
		{}, {},
	}

	req := &pb.ListDiveSitesByTripRequest{
		Limit:  20,
		Offset: 0,
	}

	t.Run("success", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveSitesByTripID", context.Background(), req.TripId, req.Limit, req.Offset).Return(diveSites, nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)
		srv := &mockAgencyService_ListDiveSitesByTripServer{}
		srv.On("Context").Return(context.Background())
		srv.On("Send", mock.AnythingOfType("*pb.ListDiveSitesByTripResponse")).Return(nil).Twice()

		//Act
		err := agencyHandler.ListDiveSitesByTrip(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail service error", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveSitesByTripID", context.Background(), req.TripId, req.Limit, req.Offset).Return(nil, errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)
		srv := &mockAgencyService_ListDiveSitesByTripServer{}
		srv.On("Context").Return(context.Background())

		//Act
		err := agencyHandler.ListDiveSitesByTrip(req, srv)

		//Assert
		assert.Error(t, err)
		srv.AssertNotCalled(t, "Send")
	})

	t.Run("dive sites not found", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveSitesByTripID", context.Background(), req.TripId, req.Limit, req.Offset).Return(nil, nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)
		srv := &mockAgencyService_ListDiveSitesByTripServer{}
		srv.On("Context").Return(context.Background())

		//Act
		err := agencyHandler.ListDiveSitesByTrip(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListValidTrips: not found"))
		srv.AssertNotCalled(t, "Send")
	})
}

type mockAgencyService_ListDiveMastersByTripServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_ListDiveMastersByTripServer) Send(diveMaster *pb.ListDiveMastersByTripResponse) error {
	args := m.Called(diveMaster)
	return args.Error(0)
}

func (m *mockAgencyService_ListDiveMastersByTripServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencyListDiveMastersByTrip(t *testing.T) {
	diveMasters := []*model.DiveMaster{
		{}, {},
	}

	req := &pb.ListDiveMastersByTripRequest{
		Limit:  20,
		Offset: 0,
	}

	t.Run("success", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveMastersByTripID", context.Background(), req.TripId, req.Limit, req.Offset).Return(diveMasters, nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)
		srv := &mockAgencyService_ListDiveMastersByTripServer{}
		srv.On("Context").Return(context.Background())
		srv.On("Send", mock.AnythingOfType("*pb.ListDiveMastersByTripResponse")).Return(nil).Twice()

		//Act
		err := agencyHandler.ListDiveMastersByTrip(req, srv)

		//Assert
		assert.NoError(t, err)
		srv.AssertNumberOfCalls(t, "Send", 2)
	})

	t.Run("fail service error", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveMastersByTripID", context.Background(), req.TripId, req.Limit, req.Offset).Return(nil, errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)
		srv := &mockAgencyService_ListDiveMastersByTripServer{}
		srv.On("Context").Return(context.Background())

		//Act
		err := agencyHandler.ListDiveMastersByTrip(req, srv)

		//Assert
		assert.Error(t, err)
		srv.AssertNotCalled(t, "Send")
	})

	t.Run("dive masters not found", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("ListDiveMastersByTripID", context.Background(), req.TripId, req.Limit, req.Offset).Return(nil, nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)
		srv := &mockAgencyService_ListDiveMastersByTripServer{}
		srv.On("Context").Return(context.Background())

		//Act
		err := agencyHandler.ListDiveMastersByTrip(req, srv)

		//Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "ListValidTrips: not found"))
		srv.AssertNotCalled(t, "Send")
	})
}

type mockAgencyService_SearchTripsServer struct {
	grpc.ServerStream
	mock.Mock
}

func (m *mockAgencyService_SearchTripsServer) Send(trip *pb.SearchTripsResponse) error {
	args := m.Called(trip)
	return args.Error(0)
}

func (m *mockAgencyService_SearchTripsServer) Context() context.Context {
	args := m.Called()
	if v, ok := args.Get(0).(context.Context); ok {
		return v
	}
	return nil
}

func TestAgencySearchTrips(t *testing.T) {
	req := &pb.SearchTripsRequest{
		SearchTripsOptions: &pb.SearchTripsOptions{
			LocationFilter: nil,
			Divers:         0,
			TripType:       0,
		},
		Limit:  0,
		Offset: 0,
	}
	trips := []*model.Trip{
		{}, {},
	}

	t.Run("success", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("SearchTrips", context.Background(), mock.AnythingOfType("*pb.SearchTripsOptions"), req.Limit, req.Offset).Return(trips, nil)
		srv := &mockAgencyService_SearchTripsServer{}
		srv.On("Context").Return(context.Background())
		srv.On("Send", mock.AnythingOfType("*pb.SearchTripsResponse")).Return(nil).Twice()
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.SearchTrips(req, srv)

		// Assert
		assert.NoError(t, err)
	})

	t.Run("fail no trips", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("SearchTrips", context.Background(), mock.AnythingOfType("*pb.SearchTripsOptions"), req.Limit, req.Offset).Return(nil, nil)
		srv := &mockAgencyService_SearchTripsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.SearchTrips(req, srv)

		// Assert
		assert.ErrorIs(t, err, status.Error(codes.NotFound, "SearchTrips: not found"))
	})

	t.Run("service failed", func(t *testing.T) {
		//Arrange
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("SearchTrips", context.Background(), mock.AnythingOfType("*pb.SearchTripsOptions"), req.Limit, req.Offset).Return(nil, errors.New(""))
		srv := &mockAgencyService_SearchTripsServer{}
		srv.On("Context").Return(context.Background())
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		err := agencyHandler.SearchTrips(req, srv)

		// Assert
		assert.Error(t, err)
	})
}

func TestAgencyUpdateTrip(t *testing.T) {
	req := &pb.UpdateTripRequest{
		Trip: &pb.TripWithTemplate{},
	}
	trip := model.Trip{}
	trip.FromWithTemplate(req.Trip)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateTrip", context.Background(), &trip).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateTrip(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateTrip", context.Background(), &trip).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateTrip(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyUpdateHotel(t *testing.T) {
	req := &pb.UpdateHotelRequest{
		Hotel: &pb.Hotel{},
	}
	hotel := model.Hotel{}
	hotel.From(req.Hotel)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateHotel", context.Background(), &hotel).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateHotel(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateHotel", context.Background(), &hotel).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateHotel(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyUpdateLiveaboard(t *testing.T) {
	req := &pb.UpdateLiveaboardRequest{
		Liveaboard: &pb.Liveaboard{},
	}
	liveaboard := model.Liveaboard{}
	liveaboard.From(req.Liveaboard)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateLiveaboard", context.Background(), &liveaboard).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateLiveaboard(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateLiveaboard", context.Background(), &liveaboard).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateLiveaboard(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyUpdateBoat(t *testing.T) {
	req := &pb.UpdateBoatRequest{
		Boat: &pb.Boat{},
	}
	boat := model.Boat{}
	boat.From(req.Boat)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateBoat", context.Background(), &boat).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateBoat(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateBoat", context.Background(), &boat).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateBoat(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyUpdateDiveMaster(t *testing.T) {
	req := &pb.UpdateDiveMasterRequest{
		DiveMaster: &pb.DiveMaster{},
	}
	diveMaster := model.DiveMaster{}
	diveMaster.From(req.DiveMaster)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateDiveMaster", context.Background(), &diveMaster).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateDiveMaster(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateDiveMaster", context.Background(), &diveMaster).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateDiveMaster(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyUpdateStaff(t *testing.T) {
	req := &pb.UpdateStaffRequest{
		Staff: &pb.Staff{},
	}
	staff := model.Staff{}
	staff.From(req.Staff)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateStaff", context.Background(), &staff).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateStaff(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateStaff", context.Background(), &staff).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateStaff(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyUpdateTripTemplate(t *testing.T) {
	req := &pb.UpdateTripTemplateRequest{
		TripTemplate: &pb.TripTemplate{},
	}
	tripTemplate := model.TripTemplate{}
	tripTemplate.From(req.TripTemplate)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateTripTemplate", context.Background(), &tripTemplate).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateTripTemplate(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("UpdateTripTemplate", context.Background(), &tripTemplate).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.UpdateTripTemplate(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyDeleteDiveMaster(t *testing.T) {
	req := &pb.DeleteDiveMasterRequest{
		DiveMaster: &pb.DiveMaster{},
	}
	diveMaster := model.DiveMaster{}
	diveMaster.From(req.DiveMaster)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteDiveMaster", context.Background(), &diveMaster).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteDiveMaster(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteDiveMaster", context.Background(), &diveMaster).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteDiveMaster(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyDeleteDivingBoat(t *testing.T) {
	req := &pb.DeleteDivingBoatRequest{
		DivingBoat: &pb.Boat{},
	}
	boat := model.Boat{}
	boat.From(req.DivingBoat)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteDivingBoat", context.Background(), &boat).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteDivingBoat(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteDivingBoat", context.Background(), &boat).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteDivingBoat(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyDeleteHotel(t *testing.T) {
	req := &pb.DeleteHotelRequest{
		Hotel: &pb.Hotel{},
	}
	hotel := model.Hotel{}
	hotel.From(req.Hotel)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteHotel", context.Background(), &hotel).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteHotel(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteHotel", context.Background(), &hotel).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteHotel(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyDeleteLiveaboard(t *testing.T) {
	req := &pb.DeleteLiveaboardRequest{
		Liveaboard: &pb.Liveaboard{},
	}
	liveaboard := model.Liveaboard{}
	liveaboard.From(req.Liveaboard)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteLiveaboard", context.Background(), &liveaboard).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteLiveaboard(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteLiveaboard", context.Background(), &liveaboard).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteLiveaboard(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyDeleteStaff(t *testing.T) {
	req := &pb.DeleteStaffRequest{
		Staff: &pb.Staff{},
	}
	staff := model.Staff{}
	staff.From(req.Staff)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteStaff", context.Background(), &staff).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteStaff(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteStaff", context.Background(), &staff).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteStaff(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}

func TestAgencyDeleteTripTemplate(t *testing.T) {
	req := &pb.DeleteTripTemplateRequest{
		TripTemplate: &pb.TripTemplate{},
	}
	tripTemplate := model.TripTemplate{}
	tripTemplate.From(req.TripTemplate)
	t.Run("success", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteTripTemplate", context.Background(), &tripTemplate).Return(nil)
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteTripTemplate(context.Background(), req)

		//Assert
		assert.NoError(t, err)
	})

	t.Run("failed service", func(t *testing.T) {
		//Assert
		agencyService := service.NewAgencyServiceMock()
		agencyService.On("DeleteTripTemplate", context.Background(), &tripTemplate).Return(errors.New(""))
		agencyHandler := handler.NewAgencyHandler(agencyService)

		//Act
		_, err := agencyHandler.DeleteTripTemplate(context.Background(), req)

		//Assert
		assert.Error(t, err)
	})
}
