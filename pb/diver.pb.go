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
	_ "google.golang.org/protobuf/types/known/emptypb"
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
	// 304 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x84, 0x91, 0x31, 0x4f, 0x42, 0x31,
	0x14, 0x85, 0x7b, 0x0d, 0x30, 0xf4, 0x39, 0x35, 0x46, 0x11, 0x93, 0x1b, 0x64, 0x91, 0xc4, 0xe4,
	0x61, 0xd0, 0xc9, 0xd1, 0x38, 0x3a, 0x98, 0xa7, 0x89, 0x89, 0x1b, 0xc8, 0x05, 0x9b, 0xbc, 0x47,
	0x6b, 0x5b, 0x48, 0xdc, 0x98, 0x9c, 0xfd, 0x19, 0xfe, 0x14, 0x47, 0x46, 0x46, 0x29, 0x8b, 0x23,
	0x3f, 0xc1, 0xd0, 0x92, 0xc8, 0xa2, 0x8c, 0xe7, 0xf6, 0xbb, 0xa7, 0xa7, 0xa7, 0x3c, 0xe9, 0xc9,
	0x31, 0x99, 0x54, 0x1b, 0xe5, 0x94, 0x28, 0x07, 0x51, 0x4b, 0x0a, 0xd5, 0xa3, 0x3c, 0xce, 0x6a,
	0x47, 0x03, 0xa5, 0x06, 0x39, 0xb5, 0x82, 0xea, 0x8e, 0xfa, 0x2d, 0x2a, 0xb4, 0x7b, 0x8d, 0x87,
	0x8d, 0x5b, 0x5e, 0xbf, 0x91, 0xd6, 0x65, 0x64, 0xc9, 0x8c, 0x3b, 0x4e, 0xaa, 0xa1, 0x7d, 0x90,
	0xee, 0xf9, 0xde, 0x48, 0x6d, 0x33, 0x7a, 0x19, 0x91, 0x75, 0x62, 0x8f, 0x97, 0x73, 0x59, 0x48,
	0x57, 0x85, 0x3a, 0x34, 0x4b, 0x59, 0x14, 0x62, 0x9f, 0x57, 0x54, 0xbf, 0x6f, 0xc9, 0x55, 0x77,
	0xc2, 0x78, 0xad, 0x1a, 0x6f, 0xc0, 0x8f, 0xff, 0xb1, 0xb4, 0x5a, 0x0d, 0x2d, 0x89, 0x53, 0x5e,
	0x72, 0x46, 0xea, 0x60, 0x99, 0xb4, 0x0f, 0xd2, 0x18, 0x78, 0xc5, 0x04, 0x96, 0x0a, 0x9d, 0x77,
	0x1c, 0x65, 0x01, 0x12, 0x17, 0x3c, 0x31, 0xbf, 0x6e, 0x55, 0x1e, 0x76, 0xc4, 0x7a, 0x67, 0xe3,
	0x9e, 0x6c, 0x13, 0x6b, 0x4f, 0x80, 0xef, 0x5e, 0xaf, 0xea, 0xb8, 0x23, 0x33, 0x96, 0x4f, 0x24,
	0x34, 0x3f, 0xfc, 0x33, 0x98, 0x38, 0x49, 0x63, 0x8f, 0xdb, 0xda, 0xa8, 0x35, 0xb7, 0x83, 0xf1,
	0x8d, 0x67, 0x70, 0x75, 0x39, 0x9d, 0x23, 0x9b, 0xcd, 0x91, 0x2d, 0xe7, 0x08, 0x13, 0x8f, 0xf0,
	0xe1, 0x11, 0x3e, 0x3d, 0xc2, 0xd4, 0x23, 0x7c, 0x79, 0x84, 0x6f, 0x8f, 0x6c, 0xe9, 0x11, 0xde,
	0x17, 0xc8, 0xa6, 0x0b, 0x64, 0xb3, 0x05, 0xb2, 0xc7, 0x52, 0xda, 0xd2, 0xdd, 0x6e, 0x25, 0x7c,
	0xd0, 0xf9, 0x4f, 0x00, 0x00, 0x00, 0xff, 0xff, 0xed, 0x9f, 0xa7, 0xd1, 0xe0, 0x01, 0x00, 0x00,
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