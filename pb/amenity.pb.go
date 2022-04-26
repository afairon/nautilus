// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: amenity.proto

package pb

import (
	context "context"
	fmt "fmt"
	proto "github.com/gogo/protobuf/proto"
	_ "github.com/golang/protobuf/ptypes/empty"
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

type ListAmenitiesRequest struct {
	Limit  uint64 `protobuf:"varint,1,opt,name=limit,proto3" json:"limit,omitempty"`
	Offset uint64 `protobuf:"varint,2,opt,name=offset,proto3" json:"offset,omitempty"`
}

func (m *ListAmenitiesRequest) Reset()      { *m = ListAmenitiesRequest{} }
func (*ListAmenitiesRequest) ProtoMessage() {}
func (*ListAmenitiesRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_f41a7d52824f0f3a, []int{0}
}
func (m *ListAmenitiesRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *ListAmenitiesRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_ListAmenitiesRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *ListAmenitiesRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ListAmenitiesRequest.Merge(m, src)
}
func (m *ListAmenitiesRequest) XXX_Size() int {
	return m.Size()
}
func (m *ListAmenitiesRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_ListAmenitiesRequest.DiscardUnknown(m)
}

var xxx_messageInfo_ListAmenitiesRequest proto.InternalMessageInfo

func (m *ListAmenitiesRequest) GetLimit() uint64 {
	if m != nil {
		return m.Limit
	}
	return 0
}

func (m *ListAmenitiesRequest) GetOffset() uint64 {
	if m != nil {
		return m.Offset
	}
	return 0
}

type ListAmenitiesResponse struct {
	Amenities *Amenity `protobuf:"bytes,1,opt,name=amenities,proto3" json:"amenities,omitempty"`
}

func (m *ListAmenitiesResponse) Reset()      { *m = ListAmenitiesResponse{} }
func (*ListAmenitiesResponse) ProtoMessage() {}
func (*ListAmenitiesResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_f41a7d52824f0f3a, []int{1}
}
func (m *ListAmenitiesResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *ListAmenitiesResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_ListAmenitiesResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *ListAmenitiesResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ListAmenitiesResponse.Merge(m, src)
}
func (m *ListAmenitiesResponse) XXX_Size() int {
	return m.Size()
}
func (m *ListAmenitiesResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_ListAmenitiesResponse.DiscardUnknown(m)
}

var xxx_messageInfo_ListAmenitiesResponse proto.InternalMessageInfo

func (m *ListAmenitiesResponse) GetAmenities() *Amenity {
	if m != nil {
		return m.Amenities
	}
	return nil
}

func init() {
	proto.RegisterType((*ListAmenitiesRequest)(nil), "amenity.ListAmenitiesRequest")
	proto.RegisterType((*ListAmenitiesResponse)(nil), "amenity.ListAmenitiesResponse")
}

func init() { proto.RegisterFile("amenity.proto", fileDescriptor_f41a7d52824f0f3a) }

var fileDescriptor_f41a7d52824f0f3a = []byte{
	// 265 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xe2, 0x4d, 0xcc, 0x4d, 0xcd,
	0xcb, 0x2c, 0xa9, 0xd4, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0x62, 0x87, 0x72, 0xa5, 0xb8, 0x73,
	0xf3, 0x53, 0x52, 0x73, 0x20, 0xa2, 0x52, 0xd2, 0xe9, 0xf9, 0xf9, 0xe9, 0x39, 0xa9, 0xfa, 0x60,
	0x5e, 0x52, 0x69, 0x9a, 0x7e, 0x6a, 0x6e, 0x01, 0x4c, 0x8b, 0x92, 0x0b, 0x97, 0x88, 0x4f, 0x66,
	0x71, 0x89, 0x23, 0x58, 0x63, 0x66, 0x6a, 0x71, 0x50, 0x6a, 0x61, 0x69, 0x6a, 0x71, 0x89, 0x90,
	0x08, 0x17, 0x6b, 0x4e, 0x66, 0x6e, 0x66, 0x89, 0x04, 0xa3, 0x02, 0xa3, 0x06, 0x4b, 0x10, 0x84,
	0x23, 0x24, 0xc6, 0xc5, 0x96, 0x9f, 0x96, 0x56, 0x9c, 0x5a, 0x22, 0xc1, 0x04, 0x16, 0x86, 0xf2,
	0x94, 0x5c, 0xb9, 0x44, 0xd1, 0x4c, 0x29, 0x2e, 0xc8, 0xcf, 0x2b, 0x4e, 0x15, 0xd2, 0xe1, 0xe2,
	0x4c, 0x84, 0x09, 0x82, 0x8d, 0xe2, 0x36, 0xe2, 0xd3, 0x83, 0x38, 0x0e, 0xa2, 0xb8, 0x32, 0x08,
	0xa1, 0xc0, 0x28, 0x85, 0x8b, 0x0f, 0x2a, 0x1a, 0x9c, 0x5a, 0x54, 0x96, 0x99, 0x9c, 0x2a, 0x14,
	0xc4, 0xc5, 0x8b, 0x62, 0xb0, 0x90, 0xac, 0x1e, 0xcc, 0xcb, 0xd8, 0x9c, 0x2d, 0x25, 0x87, 0x4b,
	0x1a, 0xe2, 0x1e, 0x25, 0x06, 0x03, 0x46, 0x27, 0xab, 0x0b, 0x0f, 0xe5, 0x18, 0x6e, 0x3c, 0x94,
	0x63, 0xf8, 0xf0, 0x50, 0x8e, 0xb1, 0xe1, 0x91, 0x1c, 0xe3, 0x8a, 0x47, 0x72, 0x8c, 0x27, 0x1e,
	0xc9, 0x31, 0x5e, 0x78, 0x24, 0xc7, 0xf8, 0xe0, 0x91, 0x1c, 0xe3, 0x8b, 0x47, 0x72, 0x0c, 0x1f,
	0x1e, 0xc9, 0x31, 0x4e, 0x78, 0x2c, 0xc7, 0x70, 0xe1, 0xb1, 0x1c, 0xc3, 0x8d, 0xc7, 0x72, 0x0c,
	0x51, 0x2c, 0x7a, 0xfa, 0x05, 0x49, 0x49, 0x6c, 0xe0, 0x50, 0x33, 0x06, 0x04, 0x00, 0x00, 0xff,
	0xff, 0x81, 0x24, 0xc6, 0xd5, 0x79, 0x01, 0x00, 0x00,
}

func (this *ListAmenitiesRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*ListAmenitiesRequest)
	if !ok {
		that2, ok := that.(ListAmenitiesRequest)
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
func (this *ListAmenitiesResponse) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*ListAmenitiesResponse)
	if !ok {
		that2, ok := that.(ListAmenitiesResponse)
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
	if !this.Amenities.Equal(that1.Amenities) {
		return false
	}
	return true
}
func (this *ListAmenitiesRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 6)
	s = append(s, "&pb.ListAmenitiesRequest{")
	s = append(s, "Limit: "+fmt.Sprintf("%#v", this.Limit)+",\n")
	s = append(s, "Offset: "+fmt.Sprintf("%#v", this.Offset)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *ListAmenitiesResponse) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.ListAmenitiesResponse{")
	if this.Amenities != nil {
		s = append(s, "Amenities: "+fmt.Sprintf("%#v", this.Amenities)+",\n")
	}
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringAmenity(v interface{}, typ string) string {
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

// AmenityServiceClient is the client API for AmenityService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type AmenityServiceClient interface {
	ListAmenities(ctx context.Context, in *ListAmenitiesRequest, opts ...grpc.CallOption) (AmenityService_ListAmenitiesClient, error)
}

type amenityServiceClient struct {
	cc *grpc.ClientConn
}

func NewAmenityServiceClient(cc *grpc.ClientConn) AmenityServiceClient {
	return &amenityServiceClient{cc}
}

func (c *amenityServiceClient) ListAmenities(ctx context.Context, in *ListAmenitiesRequest, opts ...grpc.CallOption) (AmenityService_ListAmenitiesClient, error) {
	stream, err := c.cc.NewStream(ctx, &_AmenityService_serviceDesc.Streams[0], "/amenity.AmenityService/ListAmenities", opts...)
	if err != nil {
		return nil, err
	}
	x := &amenityServiceListAmenitiesClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type AmenityService_ListAmenitiesClient interface {
	Recv() (*ListAmenitiesResponse, error)
	grpc.ClientStream
}

type amenityServiceListAmenitiesClient struct {
	grpc.ClientStream
}

func (x *amenityServiceListAmenitiesClient) Recv() (*ListAmenitiesResponse, error) {
	m := new(ListAmenitiesResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// AmenityServiceServer is the server API for AmenityService service.
type AmenityServiceServer interface {
	ListAmenities(*ListAmenitiesRequest, AmenityService_ListAmenitiesServer) error
}

// UnimplementedAmenityServiceServer can be embedded to have forward compatible implementations.
type UnimplementedAmenityServiceServer struct {
}

func (*UnimplementedAmenityServiceServer) ListAmenities(req *ListAmenitiesRequest, srv AmenityService_ListAmenitiesServer) error {
	return status.Errorf(codes.Unimplemented, "method ListAmenities not implemented")
}

func RegisterAmenityServiceServer(s *grpc.Server, srv AmenityServiceServer) {
	s.RegisterService(&_AmenityService_serviceDesc, srv)
}

func _AmenityService_ListAmenities_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListAmenitiesRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(AmenityServiceServer).ListAmenities(m, &amenityServiceListAmenitiesServer{stream})
}

type AmenityService_ListAmenitiesServer interface {
	Send(*ListAmenitiesResponse) error
	grpc.ServerStream
}

type amenityServiceListAmenitiesServer struct {
	grpc.ServerStream
}

func (x *amenityServiceListAmenitiesServer) Send(m *ListAmenitiesResponse) error {
	return x.ServerStream.SendMsg(m)
}

var _AmenityService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "amenity.AmenityService",
	HandlerType: (*AmenityServiceServer)(nil),
	Methods:     []grpc.MethodDesc{},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "ListAmenities",
			Handler:       _AmenityService_ListAmenities_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "amenity.proto",
}

func (m *ListAmenitiesRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *ListAmenitiesRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *ListAmenitiesRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Offset != 0 {
		i = encodeVarintAmenity(dAtA, i, uint64(m.Offset))
		i--
		dAtA[i] = 0x10
	}
	if m.Limit != 0 {
		i = encodeVarintAmenity(dAtA, i, uint64(m.Limit))
		i--
		dAtA[i] = 0x8
	}
	return len(dAtA) - i, nil
}

func (m *ListAmenitiesResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *ListAmenitiesResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *ListAmenitiesResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Amenities != nil {
		{
			size, err := m.Amenities.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintAmenity(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintAmenity(dAtA []byte, offset int, v uint64) int {
	offset -= sovAmenity(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *ListAmenitiesRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Limit != 0 {
		n += 1 + sovAmenity(uint64(m.Limit))
	}
	if m.Offset != 0 {
		n += 1 + sovAmenity(uint64(m.Offset))
	}
	return n
}

func (m *ListAmenitiesResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Amenities != nil {
		l = m.Amenities.Size()
		n += 1 + l + sovAmenity(uint64(l))
	}
	return n
}

func sovAmenity(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozAmenity(x uint64) (n int) {
	return sovAmenity(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *ListAmenitiesRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&ListAmenitiesRequest{`,
		`Limit:` + fmt.Sprintf("%v", this.Limit) + `,`,
		`Offset:` + fmt.Sprintf("%v", this.Offset) + `,`,
		`}`,
	}, "")
	return s
}
func (this *ListAmenitiesResponse) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&ListAmenitiesResponse{`,
		`Amenities:` + strings.Replace(fmt.Sprintf("%v", this.Amenities), "Amenity", "Amenity", 1) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringAmenity(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *ListAmenitiesRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowAmenity
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
			return fmt.Errorf("proto: ListAmenitiesRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: ListAmenitiesRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Limit", wireType)
			}
			m.Limit = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAmenity
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
					return ErrIntOverflowAmenity
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
			skippy, err := skipAmenity(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthAmenity
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
func (m *ListAmenitiesResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowAmenity
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
			return fmt.Errorf("proto: ListAmenitiesResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: ListAmenitiesResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Amenities", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAmenity
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
				return ErrInvalidLengthAmenity
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthAmenity
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			if m.Amenities == nil {
				m.Amenities = &Amenity{}
			}
			if err := m.Amenities.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipAmenity(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthAmenity
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
func skipAmenity(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowAmenity
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
					return 0, ErrIntOverflowAmenity
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
					return 0, ErrIntOverflowAmenity
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
				return 0, ErrInvalidLengthAmenity
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupAmenity
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthAmenity
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthAmenity        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowAmenity          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupAmenity = fmt.Errorf("proto: unexpected end of group")
)
