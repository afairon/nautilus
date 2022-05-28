// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: diver.proto

package pb

import (
	context "context"
	fmt "fmt"
	proto "github.com/gogo/protobuf/proto"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	io "io"
	math "math"
	math_bits "math/bits"
	reflect "reflect"
	strings "strings"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.GoGoProtoPackageIsVersion3 // please upgrade the proto package

type ListReservationsWithTripsRequest struct {
	Limit  uint64 `protobuf:"varint,1,opt,name=limit,proto3" json:"limit,omitempty"`
	Offset uint64 `protobuf:"varint,2,opt,name=offset,proto3" json:"offset,omitempty"`
}

func (m *ListReservationsWithTripsRequest) Reset()      { *m = ListReservationsWithTripsRequest{} }
func (*ListReservationsWithTripsRequest) ProtoMessage() {}
func (*ListReservationsWithTripsRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_765ae613bf716c8b, []int{0}
}
func (m *ListReservationsWithTripsRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *ListReservationsWithTripsRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_ListReservationsWithTripsRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *ListReservationsWithTripsRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ListReservationsWithTripsRequest.Merge(m, src)
}
func (m *ListReservationsWithTripsRequest) XXX_Size() int {
	return m.Size()
}
func (m *ListReservationsWithTripsRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_ListReservationsWithTripsRequest.DiscardUnknown(m)
}

var xxx_messageInfo_ListReservationsWithTripsRequest proto.InternalMessageInfo

func (m *ListReservationsWithTripsRequest) GetLimit() uint64 {
	if m != nil {
		return m.Limit
	}
	return 0
}

func (m *ListReservationsWithTripsRequest) GetOffset() uint64 {
	if m != nil {
		return m.Offset
	}
	return 0
}

type ListReservationsWithTripsResponse struct {
	Trip        *TripWithTemplate `protobuf:"bytes,1,opt,name=trip,proto3" json:"trip,omitempty"`
	Reservation *Reservation      `protobuf:"bytes,10,opt,name=reservation,proto3" json:"reservation,omitempty"`
}

func (m *ListReservationsWithTripsResponse) Reset()      { *m = ListReservationsWithTripsResponse{} }
func (*ListReservationsWithTripsResponse) ProtoMessage() {}
func (*ListReservationsWithTripsResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_765ae613bf716c8b, []int{1}
}
func (m *ListReservationsWithTripsResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *ListReservationsWithTripsResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_ListReservationsWithTripsResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *ListReservationsWithTripsResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ListReservationsWithTripsResponse.Merge(m, src)
}
func (m *ListReservationsWithTripsResponse) XXX_Size() int {
	return m.Size()
}
func (m *ListReservationsWithTripsResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_ListReservationsWithTripsResponse.DiscardUnknown(m)
}

var xxx_messageInfo_ListReservationsWithTripsResponse proto.InternalMessageInfo

func (m *ListReservationsWithTripsResponse) GetTrip() *TripWithTemplate {
	if m != nil {
		return m.Trip
	}
	return nil
}

func (m *ListReservationsWithTripsResponse) GetReservation() *Reservation {
	if m != nil {
		return m.Reservation
	}
	return nil
}

type GetAgencyAccountNumberByTripRequest struct {
	TripId uint64 `protobuf:"varint,1,opt,name=trip_id,json=tripId,proto3" json:"trip_id,omitempty"`
}

func (m *GetAgencyAccountNumberByTripRequest) Reset()      { *m = GetAgencyAccountNumberByTripRequest{} }
func (*GetAgencyAccountNumberByTripRequest) ProtoMessage() {}
func (*GetAgencyAccountNumberByTripRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_765ae613bf716c8b, []int{2}
}
func (m *GetAgencyAccountNumberByTripRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *GetAgencyAccountNumberByTripRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_GetAgencyAccountNumberByTripRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *GetAgencyAccountNumberByTripRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetAgencyAccountNumberByTripRequest.Merge(m, src)
}
func (m *GetAgencyAccountNumberByTripRequest) XXX_Size() int {
	return m.Size()
}
func (m *GetAgencyAccountNumberByTripRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_GetAgencyAccountNumberByTripRequest.DiscardUnknown(m)
}

var xxx_messageInfo_GetAgencyAccountNumberByTripRequest proto.InternalMessageInfo

func (m *GetAgencyAccountNumberByTripRequest) GetTripId() uint64 {
	if m != nil {
		return m.TripId
	}
	return 0
}

type GetAgencyAccountNumberByTripResponse struct {
	AccountNumber string `protobuf:"bytes,1,opt,name=account_number,json=accountNumber,proto3" json:"account_number,omitempty"`
}

func (m *GetAgencyAccountNumberByTripResponse) Reset()      { *m = GetAgencyAccountNumberByTripResponse{} }
func (*GetAgencyAccountNumberByTripResponse) ProtoMessage() {}
func (*GetAgencyAccountNumberByTripResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_765ae613bf716c8b, []int{3}
}
func (m *GetAgencyAccountNumberByTripResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *GetAgencyAccountNumberByTripResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_GetAgencyAccountNumberByTripResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *GetAgencyAccountNumberByTripResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetAgencyAccountNumberByTripResponse.Merge(m, src)
}
func (m *GetAgencyAccountNumberByTripResponse) XXX_Size() int {
	return m.Size()
}
func (m *GetAgencyAccountNumberByTripResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_GetAgencyAccountNumberByTripResponse.DiscardUnknown(m)
}

var xxx_messageInfo_GetAgencyAccountNumberByTripResponse proto.InternalMessageInfo

func (m *GetAgencyAccountNumberByTripResponse) GetAccountNumber() string {
	if m != nil {
		return m.AccountNumber
	}
	return ""
}

func init() {
	proto.RegisterType((*ListReservationsWithTripsRequest)(nil), "diver.ListReservationsWithTripsRequest")
	proto.RegisterType((*ListReservationsWithTripsResponse)(nil), "diver.ListReservationsWithTripsResponse")
	proto.RegisterType((*GetAgencyAccountNumberByTripRequest)(nil), "diver.GetAgencyAccountNumberByTripRequest")
	proto.RegisterType((*GetAgencyAccountNumberByTripResponse)(nil), "diver.GetAgencyAccountNumberByTripResponse")
}

func init() { proto.RegisterFile("diver.proto", fileDescriptor_765ae613bf716c8b) }

var fileDescriptor_765ae613bf716c8b = []byte{
	// 378 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x8c, 0x52, 0x3f, 0x4b, 0xfb, 0x40,
	0x18, 0xce, 0xfd, 0x68, 0xfb, 0xc3, 0x8b, 0x3a, 0x1c, 0x62, 0x6b, 0x91, 0xa3, 0x46, 0xc5, 0x62,
	0x21, 0x4a, 0x75, 0x72, 0x10, 0x5a, 0x04, 0x11, 0x54, 0x24, 0x0a, 0x82, 0x4b, 0x49, 0x93, 0xb7,
	0x7a, 0xd0, 0xfc, 0xf1, 0xee, 0x5a, 0xe9, 0xe6, 0xe4, 0xec, 0xc7, 0xf0, 0xa3, 0x38, 0x76, 0xec,
	0x68, 0xd3, 0xc5, 0xb1, 0xab, 0x9b, 0xe4, 0x12, 0xb1, 0x8b, 0x6d, 0xc7, 0xe7, 0xee, 0xf9, 0x73,
	0xcf, 0xfb, 0x1e, 0xd6, 0x5d, 0xd6, 0x05, 0x6e, 0x86, 0x3c, 0x90, 0x01, 0xc9, 0x2a, 0x50, 0xd4,
	0xbd, 0xc0, 0x85, 0x76, 0x72, 0x66, 0x5c, 0xe1, 0xd2, 0x39, 0x13, 0xd2, 0x02, 0x01, 0xbc, 0x6b,
	0x4b, 0x16, 0xf8, 0xe2, 0x96, 0xc9, 0x87, 0x1b, 0xce, 0x42, 0x61, 0xc1, 0x63, 0x07, 0x84, 0x24,
	0x2b, 0x38, 0xdb, 0x66, 0x1e, 0x93, 0x05, 0x54, 0x42, 0xe5, 0x8c, 0x95, 0x00, 0xb2, 0x8a, 0x73,
	0x41, 0xab, 0x25, 0x40, 0x16, 0xfe, 0xa9, 0xe3, 0x14, 0x19, 0x2f, 0x08, 0x6f, 0x4c, 0xb1, 0x14,
	0x61, 0xe0, 0x0b, 0x20, 0x15, 0x9c, 0x91, 0x9c, 0x85, 0xca, 0x52, 0xaf, 0xe6, 0xcd, 0xe4, 0x4d,
	0x31, 0x47, 0x71, 0xc1, 0x0b, 0xdb, 0xb6, 0x04, 0x4b, 0x91, 0xc8, 0x21, 0xd6, 0xf9, 0xaf, 0x5b,
	0x01, 0x2b, 0x0d, 0x49, 0x35, 0x13, 0x39, 0xd6, 0x24, 0xcd, 0x38, 0xc6, 0x9b, 0xa7, 0x20, 0x6b,
	0xf7, 0xe0, 0x3b, 0xbd, 0x9a, 0xe3, 0x04, 0x1d, 0x5f, 0x5e, 0x76, 0xbc, 0x26, 0xf0, 0x7a, 0x2f,
	0xce, 0xf9, 0x69, 0x97, 0xc7, 0xff, 0xe3, 0x90, 0x06, 0x73, 0xd3, 0x7e, 0xb9, 0x18, 0x9e, 0xb9,
	0xc6, 0x05, 0xde, 0x9a, 0xae, 0x4f, 0xab, 0x6c, 0xe3, 0x65, 0x3b, 0xb9, 0x6e, 0xf8, 0xea, 0x5e,
	0xf9, 0x2c, 0x58, 0x4b, 0xf6, 0xa4, 0xa8, 0xfa, 0x85, 0xf0, 0xe2, 0x49, 0xbc, 0x80, 0x6b, 0xe0,
	0x5d, 0xe6, 0x00, 0x09, 0xf1, 0xda, 0x9f, 0x73, 0x22, 0x3b, 0x66, 0xb2, 0xb9, 0x59, 0xcb, 0x29,
	0x96, 0x67, 0x13, 0x93, 0x77, 0xee, 0x23, 0xf2, 0x84, 0xd7, 0xa7, 0x35, 0x22, 0xbb, 0xa9, 0xd7,
	0x1c, 0x63, 0x2b, 0x56, 0xe6, 0xe2, 0x26, 0xd1, 0xf5, 0xa3, 0xfe, 0x90, 0x6a, 0x83, 0x21, 0xd5,
	0xc6, 0x43, 0x8a, 0x9e, 0x23, 0x8a, 0xde, 0x22, 0x8a, 0xde, 0x23, 0x8a, 0xfa, 0x11, 0x45, 0x1f,
	0x11, 0x45, 0x9f, 0x11, 0xd5, 0xc6, 0x11, 0x45, 0xaf, 0x23, 0xaa, 0xf5, 0x47, 0x54, 0x1b, 0x8c,
	0xa8, 0x76, 0x97, 0x31, 0xf7, 0xc2, 0x66, 0x33, 0xa7, 0x3e, 0xea, 0xc1, 0x77, 0x00, 0x00, 0x00,
	0xff, 0xff, 0x79, 0xbf, 0x6c, 0x29, 0xcb, 0x02, 0x00, 0x00,
}

func (this *ListReservationsWithTripsRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*ListReservationsWithTripsRequest)
	if !ok {
		that2, ok := that.(ListReservationsWithTripsRequest)
		if ok {
			that1 = &that2
		} else {
			return false
		}
	}
	if that1 == nil {
		return this == nil
	} else if this == nil {
		return false
	}
	if this.Limit != that1.Limit {
		return false
	}
	if this.Offset != that1.Offset {
		return false
	}
	return true
}
func (this *ListReservationsWithTripsResponse) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*ListReservationsWithTripsResponse)
	if !ok {
		that2, ok := that.(ListReservationsWithTripsResponse)
		if ok {
			that1 = &that2
		} else {
			return false
		}
	}
	if that1 == nil {
		return this == nil
	} else if this == nil {
		return false
	}
	if !this.Trip.Equal(that1.Trip) {
		return false
	}
	if !this.Reservation.Equal(that1.Reservation) {
		return false
	}
	return true
}
func (this *GetAgencyAccountNumberByTripRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*GetAgencyAccountNumberByTripRequest)
	if !ok {
		that2, ok := that.(GetAgencyAccountNumberByTripRequest)
		if ok {
			that1 = &that2
		} else {
			return false
		}
	}
	if that1 == nil {
		return this == nil
	} else if this == nil {
		return false
	}
	if this.TripId != that1.TripId {
		return false
	}
	return true
}
func (this *GetAgencyAccountNumberByTripResponse) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*GetAgencyAccountNumberByTripResponse)
	if !ok {
		that2, ok := that.(GetAgencyAccountNumberByTripResponse)
		if ok {
			that1 = &that2
		} else {
			return false
		}
	}
	if that1 == nil {
		return this == nil
	} else if this == nil {
		return false
	}
	if this.AccountNumber != that1.AccountNumber {
		return false
	}
	return true
}
func (this *ListReservationsWithTripsRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 6)
	s = append(s, "&pb.ListReservationsWithTripsRequest{")
	s = append(s, "Limit: "+fmt.Sprintf("%#v", this.Limit)+",\n")
	s = append(s, "Offset: "+fmt.Sprintf("%#v", this.Offset)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *ListReservationsWithTripsResponse) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 6)
	s = append(s, "&pb.ListReservationsWithTripsResponse{")
	if this.Trip != nil {
		s = append(s, "Trip: "+fmt.Sprintf("%#v", this.Trip)+",\n")
	}
	if this.Reservation != nil {
		s = append(s, "Reservation: "+fmt.Sprintf("%#v", this.Reservation)+",\n")
	}
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *GetAgencyAccountNumberByTripRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.GetAgencyAccountNumberByTripRequest{")
	s = append(s, "TripId: "+fmt.Sprintf("%#v", this.TripId)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *GetAgencyAccountNumberByTripResponse) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.GetAgencyAccountNumberByTripResponse{")
	s = append(s, "AccountNumber: "+fmt.Sprintf("%#v", this.AccountNumber)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringDiver(v interface{}, typ string) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("func(v %v) *%v { return &v } ( %#v )", typ, typ, pv)
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// DiverServiceClient is the client API for DiverService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type DiverServiceClient interface {
	// List the trips that the diver has made reservation for
	// This should be refactored to two endpoints?
	ListReservationsWithTrips(ctx context.Context, in *ListReservationsWithTripsRequest, opts ...grpc.CallOption) (DiverService_ListReservationsWithTripsClient, error)
	GetAgencyAccountNumberByTrip(ctx context.Context, in *GetAgencyAccountNumberByTripRequest, opts ...grpc.CallOption) (*GetAgencyAccountNumberByTripResponse, error)
}

type diverServiceClient struct {
	cc *grpc.ClientConn
}

func NewDiverServiceClient(cc *grpc.ClientConn) DiverServiceClient {
	return &diverServiceClient{cc}
}

func (c *diverServiceClient) ListReservationsWithTrips(ctx context.Context, in *ListReservationsWithTripsRequest, opts ...grpc.CallOption) (DiverService_ListReservationsWithTripsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_DiverService_serviceDesc.Streams[0], "/diver.DiverService/ListReservationsWithTrips", opts...)
	if err != nil {
		return nil, err
	}
	x := &diverServiceListReservationsWithTripsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type DiverService_ListReservationsWithTripsClient interface {
	Recv() (*ListReservationsWithTripsResponse, error)
	grpc.ClientStream
}

type diverServiceListReservationsWithTripsClient struct {
	grpc.ClientStream
}

func (x *diverServiceListReservationsWithTripsClient) Recv() (*ListReservationsWithTripsResponse, error) {
	m := new(ListReservationsWithTripsResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *diverServiceClient) GetAgencyAccountNumberByTrip(ctx context.Context, in *GetAgencyAccountNumberByTripRequest, opts ...grpc.CallOption) (*GetAgencyAccountNumberByTripResponse, error) {
	out := new(GetAgencyAccountNumberByTripResponse)
	err := c.cc.Invoke(ctx, "/diver.DiverService/GetAgencyAccountNumberByTrip", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// DiverServiceServer is the server API for DiverService service.
type DiverServiceServer interface {
	// List the trips that the diver has made reservation for
	// This should be refactored to two endpoints?
	ListReservationsWithTrips(*ListReservationsWithTripsRequest, DiverService_ListReservationsWithTripsServer) error
	GetAgencyAccountNumberByTrip(context.Context, *GetAgencyAccountNumberByTripRequest) (*GetAgencyAccountNumberByTripResponse, error)
}

// UnimplementedDiverServiceServer can be embedded to have forward compatible implementations.
type UnimplementedDiverServiceServer struct {
}

func (*UnimplementedDiverServiceServer) ListReservationsWithTrips(req *ListReservationsWithTripsRequest, srv DiverService_ListReservationsWithTripsServer) error {
	return status.Errorf(codes.Unimplemented, "method ListReservationsWithTrips not implemented")
}
func (*UnimplementedDiverServiceServer) GetAgencyAccountNumberByTrip(ctx context.Context, req *GetAgencyAccountNumberByTripRequest) (*GetAgencyAccountNumberByTripResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetAgencyAccountNumberByTrip not implemented")
}

func RegisterDiverServiceServer(s *grpc.Server, srv DiverServiceServer) {
	s.RegisterService(&_DiverService_serviceDesc, srv)
}

func _DiverService_ListReservationsWithTrips_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListReservationsWithTripsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(DiverServiceServer).ListReservationsWithTrips(m, &diverServiceListReservationsWithTripsServer{stream})
}

type DiverService_ListReservationsWithTripsServer interface {
	Send(*ListReservationsWithTripsResponse) error
	grpc.ServerStream
}

type diverServiceListReservationsWithTripsServer struct {
	grpc.ServerStream
}

func (x *diverServiceListReservationsWithTripsServer) Send(m *ListReservationsWithTripsResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _DiverService_GetAgencyAccountNumberByTrip_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetAgencyAccountNumberByTripRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(DiverServiceServer).GetAgencyAccountNumberByTrip(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/diver.DiverService/GetAgencyAccountNumberByTrip",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(DiverServiceServer).GetAgencyAccountNumberByTrip(ctx, req.(*GetAgencyAccountNumberByTripRequest))
	}
	return interceptor(ctx, in, info, handler)
}

var _DiverService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "diver.DiverService",
	HandlerType: (*DiverServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetAgencyAccountNumberByTrip",
			Handler:    _DiverService_GetAgencyAccountNumberByTrip_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "ListReservationsWithTrips",
			Handler:       _DiverService_ListReservationsWithTrips_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "diver.proto",
}

func (m *ListReservationsWithTripsRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *ListReservationsWithTripsRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *ListReservationsWithTripsRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Offset != 0 {
		i = encodeVarintDiver(dAtA, i, uint64(m.Offset))
		i--
		dAtA[i] = 0x10
	}
	if m.Limit != 0 {
		i = encodeVarintDiver(dAtA, i, uint64(m.Limit))
		i--
		dAtA[i] = 0x8
	}
	return len(dAtA) - i, nil
}

func (m *ListReservationsWithTripsResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *ListReservationsWithTripsResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *ListReservationsWithTripsResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Reservation != nil {
		{
			size, err := m.Reservation.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintDiver(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0x52
	}
	if m.Trip != nil {
		{
			size, err := m.Trip.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintDiver(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func (m *GetAgencyAccountNumberByTripRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *GetAgencyAccountNumberByTripRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *GetAgencyAccountNumberByTripRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.TripId != 0 {
		i = encodeVarintDiver(dAtA, i, uint64(m.TripId))
		i--
		dAtA[i] = 0x8
	}
	return len(dAtA) - i, nil
}

func (m *GetAgencyAccountNumberByTripResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *GetAgencyAccountNumberByTripResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *GetAgencyAccountNumberByTripResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if len(m.AccountNumber) > 0 {
		i -= len(m.AccountNumber)
		copy(dAtA[i:], m.AccountNumber)
		i = encodeVarintDiver(dAtA, i, uint64(len(m.AccountNumber)))
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintDiver(dAtA []byte, offset int, v uint64) int {
	offset -= sovDiver(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *ListReservationsWithTripsRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Limit != 0 {
		n += 1 + sovDiver(uint64(m.Limit))
	}
	if m.Offset != 0 {
		n += 1 + sovDiver(uint64(m.Offset))
	}
	return n
}

func (m *ListReservationsWithTripsResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Trip != nil {
		l = m.Trip.Size()
		n += 1 + l + sovDiver(uint64(l))
	}
	if m.Reservation != nil {
		l = m.Reservation.Size()
		n += 1 + l + sovDiver(uint64(l))
	}
	return n
}

func (m *GetAgencyAccountNumberByTripRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.TripId != 0 {
		n += 1 + sovDiver(uint64(m.TripId))
	}
	return n
}

func (m *GetAgencyAccountNumberByTripResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	l = len(m.AccountNumber)
	if l > 0 {
		n += 1 + l + sovDiver(uint64(l))
	}
	return n
}

func sovDiver(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozDiver(x uint64) (n int) {
	return sovDiver(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *ListReservationsWithTripsRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&ListReservationsWithTripsRequest{`,
		`Limit:` + fmt.Sprintf("%v", this.Limit) + `,`,
		`Offset:` + fmt.Sprintf("%v", this.Offset) + `,`,
		`}`,
	}, "")
	return s
}
func (this *ListReservationsWithTripsResponse) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&ListReservationsWithTripsResponse{`,
		`Trip:` + strings.Replace(fmt.Sprintf("%v", this.Trip), "TripWithTemplate", "TripWithTemplate", 1) + `,`,
		`Reservation:` + strings.Replace(fmt.Sprintf("%v", this.Reservation), "Reservation", "Reservation", 1) + `,`,
		`}`,
	}, "")
	return s
}
func (this *GetAgencyAccountNumberByTripRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&GetAgencyAccountNumberByTripRequest{`,
		`TripId:` + fmt.Sprintf("%v", this.TripId) + `,`,
		`}`,
	}, "")
	return s
}
func (this *GetAgencyAccountNumberByTripResponse) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&GetAgencyAccountNumberByTripResponse{`,
		`AccountNumber:` + fmt.Sprintf("%v", this.AccountNumber) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringDiver(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *ListReservationsWithTripsRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowDiver
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: ListReservationsWithTripsRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: ListReservationsWithTripsRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Limit", wireType)
			}
			m.Limit = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.Limit |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		case 2:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Offset", wireType)
			}
			m.Offset = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.Offset |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		default:
			iNdEx = preIndex
			skippy, err := skipDiver(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthDiver
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func (m *ListReservationsWithTripsResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowDiver
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: ListReservationsWithTripsResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: ListReservationsWithTripsResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Trip", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				msglen |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if msglen < 0 {
				return ErrInvalidLengthDiver
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthDiver
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			if m.Trip == nil {
				m.Trip = &TripWithTemplate{}
			}
			if err := m.Trip.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		case 10:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Reservation", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				msglen |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if msglen < 0 {
				return ErrInvalidLengthDiver
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthDiver
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			if m.Reservation == nil {
				m.Reservation = &Reservation{}
			}
			if err := m.Reservation.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipDiver(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthDiver
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func (m *GetAgencyAccountNumberByTripRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowDiver
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: GetAgencyAccountNumberByTripRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: GetAgencyAccountNumberByTripRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field TripId", wireType)
			}
			m.TripId = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.TripId |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		default:
			iNdEx = preIndex
			skippy, err := skipDiver(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthDiver
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func (m *GetAgencyAccountNumberByTripResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowDiver
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: GetAgencyAccountNumberByTripResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: GetAgencyAccountNumberByTripResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field AccountNumber", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				stringLen |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			intStringLen := int(stringLen)
			if intStringLen < 0 {
				return ErrInvalidLengthDiver
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthDiver
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.AccountNumber = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipDiver(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthDiver
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func skipDiver(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowDiver
			}
			if iNdEx >= l {
				return 0, io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= (uint64(b) & 0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		wireType := int(wire & 0x7)
		switch wireType {
		case 0:
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				iNdEx++
				if dAtA[iNdEx-1] < 0x80 {
					break
				}
			}
		case 1:
			iNdEx += 8
		case 2:
			var length int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowDiver
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				length |= (int(b) & 0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if length < 0 {
				return 0, ErrInvalidLengthDiver
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupDiver
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthDiver
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthDiver        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowDiver          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupDiver = fmt.Errorf("proto: unexpected end of group")
)
