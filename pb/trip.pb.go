// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: trip.proto

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

type ListValidTripsRequest struct {
	Limit  uint64 `protobuf:"varint,2,opt,name=limit,proto3" json:"limit,omitempty"`
	Offset uint64 `protobuf:"varint,3,opt,name=offset,proto3" json:"offset,omitempty"`
}

func (m *ListValidTripsRequest) Reset()      { *m = ListValidTripsRequest{} }
func (*ListValidTripsRequest) ProtoMessage() {}
func (*ListValidTripsRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_a31f58919dc2e020, []int{0}
}
func (m *ListValidTripsRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *ListValidTripsRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_ListValidTripsRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *ListValidTripsRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ListValidTripsRequest.Merge(m, src)
}
func (m *ListValidTripsRequest) XXX_Size() int {
	return m.Size()
}
func (m *ListValidTripsRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_ListValidTripsRequest.DiscardUnknown(m)
}

var xxx_messageInfo_ListValidTripsRequest proto.InternalMessageInfo

func (m *ListValidTripsRequest) GetLimit() uint64 {
	if m != nil {
		return m.Limit
	}
	return 0
}

func (m *ListValidTripsRequest) GetOffset() uint64 {
	if m != nil {
		return m.Offset
	}
	return 0
}

type ListValidTripsResponse struct {
	Trip *TripWithTemplate `protobuf:"bytes,1,opt,name=trip,proto3" json:"trip,omitempty"`
}

func (m *ListValidTripsResponse) Reset()      { *m = ListValidTripsResponse{} }
func (*ListValidTripsResponse) ProtoMessage() {}
func (*ListValidTripsResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_a31f58919dc2e020, []int{1}
}
func (m *ListValidTripsResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *ListValidTripsResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_ListValidTripsResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *ListValidTripsResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ListValidTripsResponse.Merge(m, src)
}
func (m *ListValidTripsResponse) XXX_Size() int {
	return m.Size()
}
func (m *ListValidTripsResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_ListValidTripsResponse.DiscardUnknown(m)
}

var xxx_messageInfo_ListValidTripsResponse proto.InternalMessageInfo

func (m *ListValidTripsResponse) GetTrip() *TripWithTemplate {
	if m != nil {
		return m.Trip
	}
	return nil
}

func init() {
	proto.RegisterType((*ListValidTripsRequest)(nil), "trip.ListValidTripsRequest")
	proto.RegisterType((*ListValidTripsResponse)(nil), "trip.ListValidTripsResponse")
}

func init() { proto.RegisterFile("trip.proto", fileDescriptor_a31f58919dc2e020) }

var fileDescriptor_a31f58919dc2e020 = []byte{
	// 256 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xe2, 0x2a, 0x29, 0xca, 0x2c,
	0xd0, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0x62, 0x01, 0xb1, 0xa5, 0xb8, 0x73, 0xf3, 0x53, 0x52,
	0x73, 0x20, 0x42, 0x4a, 0xae, 0x5c, 0xa2, 0x3e, 0x99, 0xc5, 0x25, 0x61, 0x89, 0x39, 0x99, 0x29,
	0x21, 0x45, 0x99, 0x05, 0xc5, 0x41, 0xa9, 0x85, 0xa5, 0xa9, 0xc5, 0x25, 0x42, 0x22, 0x5c, 0xac,
	0x39, 0x99, 0xb9, 0x99, 0x25, 0x12, 0x4c, 0x0a, 0x8c, 0x1a, 0x2c, 0x41, 0x10, 0x8e, 0x90, 0x18,
	0x17, 0x5b, 0x7e, 0x5a, 0x5a, 0x71, 0x6a, 0x89, 0x04, 0x33, 0x58, 0x18, 0xca, 0x53, 0x72, 0xe5,
	0x12, 0x43, 0x37, 0xa6, 0xb8, 0x20, 0x3f, 0xaf, 0x38, 0x55, 0x48, 0x9b, 0x0b, 0x6c, 0xab, 0x04,
	0xa3, 0x02, 0xa3, 0x06, 0xb7, 0x91, 0xb8, 0x1e, 0xc4, 0x72, 0x90, 0x9a, 0xf0, 0xcc, 0x92, 0x8c,
	0x90, 0xd4, 0xdc, 0x82, 0x9c, 0xc4, 0x92, 0xd4, 0x20, 0xb0, 0x22, 0xa3, 0x18, 0x2e, 0x6e, 0x90,
	0x4c, 0x70, 0x6a, 0x51, 0x59, 0x66, 0x72, 0xaa, 0x90, 0x2f, 0x17, 0x1f, 0xaa, 0xa9, 0x42, 0xd2,
	0x7a, 0x60, 0xef, 0x60, 0x75, 0xb2, 0x94, 0x0c, 0x76, 0x49, 0x88, 0x43, 0x0c, 0x18, 0x9d, 0xac,
	0x2e, 0x3c, 0x94, 0x63, 0xb8, 0xf1, 0x50, 0x8e, 0xe1, 0xc3, 0x43, 0x39, 0xc6, 0x86, 0x47, 0x72,
	0x8c, 0x2b, 0x1e, 0xc9, 0x31, 0x9e, 0x78, 0x24, 0xc7, 0x78, 0xe1, 0x91, 0x1c, 0xe3, 0x83, 0x47,
	0x72, 0x8c, 0x2f, 0x1e, 0xc9, 0x31, 0x7c, 0x78, 0x24, 0xc7, 0x38, 0xe1, 0xb1, 0x1c, 0xc3, 0x85,
	0xc7, 0x72, 0x0c, 0x37, 0x1e, 0xcb, 0x31, 0x44, 0xb1, 0xe8, 0xe9, 0x17, 0x24, 0x25, 0xb1, 0x81,
	0x83, 0xcb, 0x18, 0x10, 0x00, 0x00, 0xff, 0xff, 0xdb, 0xde, 0x7e, 0xb8, 0x4f, 0x01, 0x00, 0x00,
}

func (this *ListValidTripsRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*ListValidTripsRequest)
	if !ok {
		that2, ok := that.(ListValidTripsRequest)
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
func (this *ListValidTripsResponse) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*ListValidTripsResponse)
	if !ok {
		that2, ok := that.(ListValidTripsResponse)
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
	return true
}
func (this *ListValidTripsRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 6)
	s = append(s, "&pb.ListValidTripsRequest{")
	s = append(s, "Limit: "+fmt.Sprintf("%#v", this.Limit)+",\n")
	s = append(s, "Offset: "+fmt.Sprintf("%#v", this.Offset)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *ListValidTripsResponse) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.ListValidTripsResponse{")
	if this.Trip != nil {
		s = append(s, "Trip: "+fmt.Sprintf("%#v", this.Trip)+",\n")
	}
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringTrip(v interface{}, typ string) string {
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

// TripServiceClient is the client API for TripService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type TripServiceClient interface {
	ListValidTrips(ctx context.Context, in *ListValidTripsRequest, opts ...grpc.CallOption) (TripService_ListValidTripsClient, error)
}

type tripServiceClient struct {
	cc *grpc.ClientConn
}

func NewTripServiceClient(cc *grpc.ClientConn) TripServiceClient {
	return &tripServiceClient{cc}
}

func (c *tripServiceClient) ListValidTrips(ctx context.Context, in *ListValidTripsRequest, opts ...grpc.CallOption) (TripService_ListValidTripsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_TripService_serviceDesc.Streams[0], "/trip.TripService/ListValidTrips", opts...)
	if err != nil {
		return nil, err
	}
	x := &tripServiceListValidTripsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type TripService_ListValidTripsClient interface {
	Recv() (*ListValidTripsResponse, error)
	grpc.ClientStream
}

type tripServiceListValidTripsClient struct {
	grpc.ClientStream
}

func (x *tripServiceListValidTripsClient) Recv() (*ListValidTripsResponse, error) {
	m := new(ListValidTripsResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// TripServiceServer is the server API for TripService service.
type TripServiceServer interface {
	ListValidTrips(*ListValidTripsRequest, TripService_ListValidTripsServer) error
}

// UnimplementedTripServiceServer can be embedded to have forward compatible implementations.
type UnimplementedTripServiceServer struct {
}

func (*UnimplementedTripServiceServer) ListValidTrips(req *ListValidTripsRequest, srv TripService_ListValidTripsServer) error {
	return status.Errorf(codes.Unimplemented, "method ListValidTrips not implemented")
}

func RegisterTripServiceServer(s *grpc.Server, srv TripServiceServer) {
	s.RegisterService(&_TripService_serviceDesc, srv)
}

func _TripService_ListValidTrips_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListValidTripsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(TripServiceServer).ListValidTrips(m, &tripServiceListValidTripsServer{stream})
}

type TripService_ListValidTripsServer interface {
	Send(*ListValidTripsResponse) error
	grpc.ServerStream
}

type tripServiceListValidTripsServer struct {
	grpc.ServerStream
}

func (x *tripServiceListValidTripsServer) Send(m *ListValidTripsResponse) error {
	return x.ServerStream.SendMsg(m)
}

var _TripService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "trip.TripService",
	HandlerType: (*TripServiceServer)(nil),
	Methods:     []grpc.MethodDesc{},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "ListValidTrips",
			Handler:       _TripService_ListValidTrips_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "trip.proto",
}

func (m *ListValidTripsRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *ListValidTripsRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *ListValidTripsRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Offset != 0 {
		i = encodeVarintTrip(dAtA, i, uint64(m.Offset))
		i--
		dAtA[i] = 0x18
	}
	if m.Limit != 0 {
		i = encodeVarintTrip(dAtA, i, uint64(m.Limit))
		i--
		dAtA[i] = 0x10
	}
	return len(dAtA) - i, nil
}

func (m *ListValidTripsResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *ListValidTripsResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *ListValidTripsResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Trip != nil {
		{
			size, err := m.Trip.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintTrip(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintTrip(dAtA []byte, offset int, v uint64) int {
	offset -= sovTrip(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *ListValidTripsRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Limit != 0 {
		n += 1 + sovTrip(uint64(m.Limit))
	}
	if m.Offset != 0 {
		n += 1 + sovTrip(uint64(m.Offset))
	}
	return n
}

func (m *ListValidTripsResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Trip != nil {
		l = m.Trip.Size()
		n += 1 + l + sovTrip(uint64(l))
	}
	return n
}

func sovTrip(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozTrip(x uint64) (n int) {
	return sovTrip(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *ListValidTripsRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&ListValidTripsRequest{`,
		`Limit:` + fmt.Sprintf("%v", this.Limit) + `,`,
		`Offset:` + fmt.Sprintf("%v", this.Offset) + `,`,
		`}`,
	}, "")
	return s
}
func (this *ListValidTripsResponse) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&ListValidTripsResponse{`,
		`Trip:` + strings.Replace(fmt.Sprintf("%v", this.Trip), "TripWithTemplate", "TripWithTemplate", 1) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringTrip(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *ListValidTripsRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowTrip
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
			return fmt.Errorf("proto: ListValidTripsRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: ListValidTripsRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 2:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Limit", wireType)
			}
			m.Limit = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowTrip
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
		case 3:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Offset", wireType)
			}
			m.Offset = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowTrip
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
			skippy, err := skipTrip(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthTrip
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
func (m *ListValidTripsResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowTrip
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
			return fmt.Errorf("proto: ListValidTripsResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: ListValidTripsResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Trip", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowTrip
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
				return ErrInvalidLengthTrip
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthTrip
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
		default:
			iNdEx = preIndex
			skippy, err := skipTrip(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthTrip
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
func skipTrip(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowTrip
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
					return 0, ErrIntOverflowTrip
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
					return 0, ErrIntOverflowTrip
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
				return 0, ErrInvalidLengthTrip
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupTrip
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthTrip
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthTrip        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowTrip          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupTrip = fmt.Errorf("proto: unexpected end of group")
)
