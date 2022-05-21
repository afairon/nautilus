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

func init() {
	proto.RegisterType((*ListReservationsWithTripsRequest)(nil), "diver.ListReservationsWithTripsRequest")
	proto.RegisterType((*ListReservationsWithTripsResponse)(nil), "diver.ListReservationsWithTripsResponse")
}

func init() { proto.RegisterFile("diver.proto", fileDescriptor_765ae613bf716c8b) }

var fileDescriptor_765ae613bf716c8b = []byte{
	// 286 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x84, 0x91, 0x31, 0x4f, 0xc3, 0x30,
	0x10, 0x85, 0x7d, 0xa8, 0xed, 0xe0, 0x30, 0x59, 0x08, 0x42, 0x87, 0x53, 0xe9, 0x42, 0x25, 0xa4,
	0x80, 0x0a, 0x13, 0x23, 0x62, 0x64, 0x40, 0x01, 0x09, 0x89, 0xad, 0xa5, 0x57, 0x61, 0x29, 0xa9,
	0x8d, 0x6d, 0x32, 0x77, 0x62, 0xe6, 0x67, 0xf0, 0x53, 0x18, 0x33, 0x76, 0x24, 0xce, 0xc2, 0xd8,
	0x9f, 0x80, 0xea, 0x54, 0xa2, 0x0b, 0x74, 0x7c, 0xa7, 0xef, 0x9e, 0xef, 0x3d, 0xf3, 0x68, 0x22,
	0x0b, 0x32, 0x89, 0x36, 0xca, 0x29, 0xd1, 0x0e, 0xa2, 0x1b, 0xe5, 0x6a, 0x42, 0x59, 0x33, 0xeb,
	0xdf, 0xf2, 0xde, 0x8d, 0xb4, 0x2e, 0x25, 0x4b, 0xa6, 0x18, 0x39, 0xa9, 0x66, 0xf6, 0x41, 0xba,
	0xe7, 0x7b, 0x23, 0xb5, 0x4d, 0xe9, 0xe5, 0x95, 0xac, 0x13, 0x7b, 0xbc, 0x9d, 0xc9, 0x5c, 0xba,
	0x18, 0x7a, 0x30, 0x68, 0xa5, 0x8d, 0x10, 0xfb, 0xbc, 0xa3, 0xa6, 0x53, 0x4b, 0x2e, 0xde, 0x09,
	0xe3, 0xb5, 0xea, 0xbf, 0x01, 0x3f, 0xfa, 0xc7, 0xd2, 0x6a, 0x35, 0xb3, 0x24, 0x4e, 0x78, 0xcb,
	0x19, 0xa9, 0x83, 0x65, 0x34, 0x3c, 0x48, 0x9a, 0x9b, 0x56, 0x4c, 0x60, 0x29, 0xd7, 0xd9, 0xc8,
	0x51, 0x1a, 0x20, 0x71, 0xc1, 0x23, 0xf3, 0xeb, 0x16, 0xf3, 0xb0, 0x23, 0xd6, 0x3b, 0x1b, 0xef,
	0xa4, 0x9b, 0xd8, 0x70, 0x0e, 0x7c, 0xf7, 0x7a, 0x95, 0xf8, 0x8e, 0x4c, 0x21, 0x9f, 0x48, 0x68,
	0x7e, 0xf8, 0xe7, 0x61, 0xe2, 0x38, 0x69, 0xaa, 0xda, 0xd6, 0x46, 0x77, 0xb0, 0x1d, 0x6c, 0x32,
	0x9e, 0xc1, 0xd5, 0x65, 0x59, 0x21, 0x5b, 0x54, 0xc8, 0x96, 0x15, 0xc2, 0xdc, 0x23, 0x7c, 0x78,
	0x84, 0x4f, 0x8f, 0x50, 0x7a, 0x84, 0x2f, 0x8f, 0xf0, 0xed, 0x91, 0x2d, 0x3d, 0xc2, 0x7b, 0x8d,
	0xac, 0xac, 0x91, 0x2d, 0x6a, 0x64, 0x8f, 0xad, 0xe4, 0x54, 0x8f, 0xc7, 0x9d, 0xf0, 0x41, 0xe7,
	0x3f, 0x01, 0x00, 0x00, 0xff, 0xff, 0x7f, 0x89, 0xaf, 0x55, 0xc3, 0x01, 0x00, 0x00,
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

// DiverServiceServer is the server API for DiverService service.
type DiverServiceServer interface {
	// List the trips that the diver has made reservation for
	// This should be refactored to two endpoints?
	ListReservationsWithTrips(*ListReservationsWithTripsRequest, DiverService_ListReservationsWithTripsServer) error
}

// UnimplementedDiverServiceServer can be embedded to have forward compatible implementations.
type UnimplementedDiverServiceServer struct {
}

func (*UnimplementedDiverServiceServer) ListReservationsWithTrips(req *ListReservationsWithTripsRequest, srv DiverService_ListReservationsWithTripsServer) error {
	return status.Errorf(codes.Unimplemented, "method ListReservationsWithTrips not implemented")
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

var _DiverService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "diver.DiverService",
	HandlerType: (*DiverServiceServer)(nil),
	Methods:     []grpc.MethodDesc{},
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
