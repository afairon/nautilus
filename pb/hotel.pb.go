// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: hotel.proto

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

type GetHotelRequest struct {
	Id uint64 `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (m *GetHotelRequest) Reset()      { *m = GetHotelRequest{} }
func (*GetHotelRequest) ProtoMessage() {}
func (*GetHotelRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_169099f938a8a4b0, []int{0}
}
func (m *GetHotelRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *GetHotelRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_GetHotelRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *GetHotelRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetHotelRequest.Merge(m, src)
}
func (m *GetHotelRequest) XXX_Size() int {
	return m.Size()
}
func (m *GetHotelRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_GetHotelRequest.DiscardUnknown(m)
}

var xxx_messageInfo_GetHotelRequest proto.InternalMessageInfo

func (m *GetHotelRequest) GetId() uint64 {
	if m != nil {
		return m.Id
	}
	return 0
}

type GetHotelResponse struct {
	Hotel *Hotel `protobuf:"bytes,1,opt,name=hotel,proto3" json:"hotel,omitempty"`
}

func (m *GetHotelResponse) Reset()      { *m = GetHotelResponse{} }
func (*GetHotelResponse) ProtoMessage() {}
func (*GetHotelResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_169099f938a8a4b0, []int{1}
}
func (m *GetHotelResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *GetHotelResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_GetHotelResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *GetHotelResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetHotelResponse.Merge(m, src)
}
func (m *GetHotelResponse) XXX_Size() int {
	return m.Size()
}
func (m *GetHotelResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_GetHotelResponse.DiscardUnknown(m)
}

var xxx_messageInfo_GetHotelResponse proto.InternalMessageInfo

func (m *GetHotelResponse) GetHotel() *Hotel {
	if m != nil {
		return m.Hotel
	}
	return nil
}

func init() {
	proto.RegisterType((*GetHotelRequest)(nil), "hotel.GetHotelRequest")
	proto.RegisterType((*GetHotelResponse)(nil), "hotel.GetHotelResponse")
}

func init() { proto.RegisterFile("hotel.proto", fileDescriptor_169099f938a8a4b0) }

var fileDescriptor_169099f938a8a4b0 = []byte{
	// 211 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xe2, 0xce, 0xc8, 0x2f, 0x49,
	0xcd, 0xd1, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0x62, 0x05, 0x73, 0xa4, 0xb8, 0x73, 0xf3, 0x53,
	0x60, 0x62, 0x4a, 0x8a, 0x5c, 0xfc, 0xee, 0xa9, 0x25, 0x1e, 0x20, 0x89, 0xa0, 0xd4, 0xc2, 0xd2,
	0xd4, 0xe2, 0x12, 0x21, 0x3e, 0x2e, 0xa6, 0xcc, 0x14, 0x09, 0x46, 0x05, 0x46, 0x0d, 0x96, 0x20,
	0xa6, 0xcc, 0x14, 0x25, 0x33, 0x2e, 0x01, 0x84, 0x92, 0xe2, 0x82, 0xfc, 0xbc, 0xe2, 0x54, 0x21,
	0x25, 0x2e, 0x88, 0x61, 0x60, 0x65, 0xdc, 0x46, 0x3c, 0x7a, 0x10, 0x33, 0x21, 0x8a, 0x20, 0x52,
	0x46, 0xde, 0x5c, 0x3c, 0x60, 0x7e, 0x70, 0x6a, 0x51, 0x59, 0x66, 0x72, 0xaa, 0x90, 0x35, 0x17,
	0x07, 0xcc, 0x1c, 0x21, 0x31, 0x3d, 0x88, 0xc3, 0xd0, 0xec, 0x96, 0x12, 0xc7, 0x10, 0x87, 0x58,
	0xe8, 0x64, 0x75, 0xe1, 0xa1, 0x1c, 0xc3, 0x8d, 0x87, 0x72, 0x0c, 0x1f, 0x1e, 0xca, 0x31, 0x36,
	0x3c, 0x92, 0x63, 0x5c, 0xf1, 0x48, 0x8e, 0xf1, 0xc4, 0x23, 0x39, 0xc6, 0x0b, 0x8f, 0xe4, 0x18,
	0x1f, 0x3c, 0x92, 0x63, 0x7c, 0xf1, 0x48, 0x8e, 0xe1, 0xc3, 0x23, 0x39, 0xc6, 0x09, 0x8f, 0xe5,
	0x18, 0x2e, 0x3c, 0x96, 0x63, 0xb8, 0xf1, 0x58, 0x8e, 0x21, 0x8a, 0x45, 0x4f, 0xbf, 0x20, 0x29,
	0x89, 0x0d, 0xec, 0x55, 0x63, 0x40, 0x00, 0x00, 0x00, 0xff, 0xff, 0x97, 0xea, 0x6b, 0xf4, 0x0d,
	0x01, 0x00, 0x00,
}

func (this *GetHotelRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*GetHotelRequest)
	if !ok {
		that2, ok := that.(GetHotelRequest)
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
	if this.Id != that1.Id {
		return false
	}
	return true
}
func (this *GetHotelResponse) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*GetHotelResponse)
	if !ok {
		that2, ok := that.(GetHotelResponse)
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
	if !this.Hotel.Equal(that1.Hotel) {
		return false
	}
	return true
}
func (this *GetHotelRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.GetHotelRequest{")
	s = append(s, "Id: "+fmt.Sprintf("%#v", this.Id)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *GetHotelResponse) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.GetHotelResponse{")
	if this.Hotel != nil {
		s = append(s, "Hotel: "+fmt.Sprintf("%#v", this.Hotel)+",\n")
	}
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringHotel(v interface{}, typ string) string {
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

// HotelServiceClient is the client API for HotelService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type HotelServiceClient interface {
	GetHotel(ctx context.Context, in *GetHotelRequest, opts ...grpc.CallOption) (*GetHotelResponse, error)
}

type hotelServiceClient struct {
	cc *grpc.ClientConn
}

func NewHotelServiceClient(cc *grpc.ClientConn) HotelServiceClient {
	return &hotelServiceClient{cc}
}

func (c *hotelServiceClient) GetHotel(ctx context.Context, in *GetHotelRequest, opts ...grpc.CallOption) (*GetHotelResponse, error) {
	out := new(GetHotelResponse)
	err := c.cc.Invoke(ctx, "/hotel.HotelService/GetHotel", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// HotelServiceServer is the server API for HotelService service.
type HotelServiceServer interface {
	GetHotel(context.Context, *GetHotelRequest) (*GetHotelResponse, error)
}

// UnimplementedHotelServiceServer can be embedded to have forward compatible implementations.
type UnimplementedHotelServiceServer struct {
}

func (*UnimplementedHotelServiceServer) GetHotel(ctx context.Context, req *GetHotelRequest) (*GetHotelResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetHotel not implemented")
}

func RegisterHotelServiceServer(s *grpc.Server, srv HotelServiceServer) {
	s.RegisterService(&_HotelService_serviceDesc, srv)
}

func _HotelService_GetHotel_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetHotelRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(HotelServiceServer).GetHotel(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/hotel.HotelService/GetHotel",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(HotelServiceServer).GetHotel(ctx, req.(*GetHotelRequest))
	}
	return interceptor(ctx, in, info, handler)
}

var _HotelService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "hotel.HotelService",
	HandlerType: (*HotelServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetHotel",
			Handler:    _HotelService_GetHotel_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "hotel.proto",
}

func (m *GetHotelRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *GetHotelRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *GetHotelRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Id != 0 {
		i = encodeVarintHotel(dAtA, i, uint64(m.Id))
		i--
		dAtA[i] = 0x8
	}
	return len(dAtA) - i, nil
}

func (m *GetHotelResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *GetHotelResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *GetHotelResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Hotel != nil {
		{
			size, err := m.Hotel.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintHotel(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintHotel(dAtA []byte, offset int, v uint64) int {
	offset -= sovHotel(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *GetHotelRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Id != 0 {
		n += 1 + sovHotel(uint64(m.Id))
	}
	return n
}

func (m *GetHotelResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Hotel != nil {
		l = m.Hotel.Size()
		n += 1 + l + sovHotel(uint64(l))
	}
	return n
}

func sovHotel(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozHotel(x uint64) (n int) {
	return sovHotel(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *GetHotelRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&GetHotelRequest{`,
		`Id:` + fmt.Sprintf("%v", this.Id) + `,`,
		`}`,
	}, "")
	return s
}
func (this *GetHotelResponse) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&GetHotelResponse{`,
		`Hotel:` + strings.Replace(fmt.Sprintf("%v", this.Hotel), "Hotel", "Hotel", 1) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringHotel(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *GetHotelRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowHotel
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
			return fmt.Errorf("proto: GetHotelRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: GetHotelRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Id", wireType)
			}
			m.Id = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowHotel
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.Id |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		default:
			iNdEx = preIndex
			skippy, err := skipHotel(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthHotel
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
func (m *GetHotelResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowHotel
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
			return fmt.Errorf("proto: GetHotelResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: GetHotelResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Hotel", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowHotel
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
				return ErrInvalidLengthHotel
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthHotel
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			if m.Hotel == nil {
				m.Hotel = &Hotel{}
			}
			if err := m.Hotel.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipHotel(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthHotel
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
func skipHotel(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowHotel
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
					return 0, ErrIntOverflowHotel
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
					return 0, ErrIntOverflowHotel
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
				return 0, ErrInvalidLengthHotel
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupHotel
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthHotel
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthHotel        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowHotel          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupHotel = fmt.Errorf("proto: unexpected end of group")
)
