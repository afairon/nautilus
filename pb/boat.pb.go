// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: boat.proto

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

type GetBoatRequest struct {
	Id uint64 `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (m *GetBoatRequest) Reset()      { *m = GetBoatRequest{} }
func (*GetBoatRequest) ProtoMessage() {}
func (*GetBoatRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_2aabda7ad7d53eb4, []int{0}
}
func (m *GetBoatRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *GetBoatRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_GetBoatRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *GetBoatRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetBoatRequest.Merge(m, src)
}
func (m *GetBoatRequest) XXX_Size() int {
	return m.Size()
}
func (m *GetBoatRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_GetBoatRequest.DiscardUnknown(m)
}

var xxx_messageInfo_GetBoatRequest proto.InternalMessageInfo

func (m *GetBoatRequest) GetId() uint64 {
	if m != nil {
		return m.Id
	}
	return 0
}

type GetBoatResponse struct {
	Boat *Boat `protobuf:"bytes,1,opt,name=boat,proto3" json:"boat,omitempty"`
}

func (m *GetBoatResponse) Reset()      { *m = GetBoatResponse{} }
func (*GetBoatResponse) ProtoMessage() {}
func (*GetBoatResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_2aabda7ad7d53eb4, []int{1}
}
func (m *GetBoatResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *GetBoatResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_GetBoatResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *GetBoatResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetBoatResponse.Merge(m, src)
}
func (m *GetBoatResponse) XXX_Size() int {
	return m.Size()
}
func (m *GetBoatResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_GetBoatResponse.DiscardUnknown(m)
}

var xxx_messageInfo_GetBoatResponse proto.InternalMessageInfo

func (m *GetBoatResponse) GetBoat() *Boat {
	if m != nil {
		return m.Boat
	}
	return nil
}

func init() {
	proto.RegisterType((*GetBoatRequest)(nil), "boat.GetBoatRequest")
	proto.RegisterType((*GetBoatResponse)(nil), "boat.GetBoatResponse")
}

func init() { proto.RegisterFile("boat.proto", fileDescriptor_2aabda7ad7d53eb4) }

var fileDescriptor_2aabda7ad7d53eb4 = []byte{
	// 213 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xe2, 0x4a, 0xca, 0x4f, 0x2c,
	0xd1, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0x62, 0x01, 0xb1, 0xa5, 0xb8, 0x73, 0xf3, 0x53, 0x52,
	0x73, 0x20, 0x42, 0x4a, 0x0a, 0x5c, 0x7c, 0xee, 0xa9, 0x25, 0x4e, 0xf9, 0x89, 0x25, 0x41, 0xa9,
	0x85, 0xa5, 0xa9, 0xc5, 0x25, 0x42, 0x7c, 0x5c, 0x4c, 0x99, 0x29, 0x12, 0x8c, 0x0a, 0x8c, 0x1a,
	0x2c, 0x41, 0x4c, 0x99, 0x29, 0x4a, 0x46, 0x5c, 0xfc, 0x70, 0x15, 0xc5, 0x05, 0xf9, 0x79, 0xc5,
	0xa9, 0x42, 0xf2, 0x5c, 0x60, 0x93, 0xc0, 0x8a, 0xb8, 0x8d, 0xb8, 0xf5, 0x20, 0x06, 0x82, 0x95,
	0x80, 0x25, 0x8c, 0x5c, 0xb9, 0xb8, 0x41, 0xbc, 0xe0, 0xd4, 0xa2, 0xb2, 0xcc, 0xe4, 0x54, 0x21,
	0x33, 0x2e, 0x76, 0xa8, 0x11, 0x42, 0x22, 0x7a, 0x60, 0xf7, 0xa0, 0xda, 0x29, 0x25, 0x8a, 0x26,
	0x0a, 0xb1, 0xc7, 0xc9, 0xea, 0xc2, 0x43, 0x39, 0x86, 0x1b, 0x0f, 0xe5, 0x18, 0x3e, 0x3c, 0x94,
	0x63, 0x6c, 0x78, 0x24, 0xc7, 0xb8, 0xe2, 0x91, 0x1c, 0xe3, 0x89, 0x47, 0x72, 0x8c, 0x17, 0x1e,
	0xc9, 0x31, 0x3e, 0x78, 0x24, 0xc7, 0xf8, 0xe2, 0x91, 0x1c, 0xc3, 0x87, 0x47, 0x72, 0x8c, 0x13,
	0x1e, 0xcb, 0x31, 0x5c, 0x78, 0x2c, 0xc7, 0x70, 0xe3, 0xb1, 0x1c, 0x43, 0x14, 0x8b, 0x9e, 0x7e,
	0x41, 0x52, 0x12, 0x1b, 0xd8, 0x7f, 0xc6, 0x80, 0x00, 0x00, 0x00, 0xff, 0xff, 0x96, 0x5a, 0x01,
	0xd3, 0x00, 0x01, 0x00, 0x00,
}

func (this *GetBoatRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*GetBoatRequest)
	if !ok {
		that2, ok := that.(GetBoatRequest)
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
func (this *GetBoatResponse) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*GetBoatResponse)
	if !ok {
		that2, ok := that.(GetBoatResponse)
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
	if !this.Boat.Equal(that1.Boat) {
		return false
	}
	return true
}
func (this *GetBoatRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.GetBoatRequest{")
	s = append(s, "Id: "+fmt.Sprintf("%#v", this.Id)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *GetBoatResponse) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.GetBoatResponse{")
	if this.Boat != nil {
		s = append(s, "Boat: "+fmt.Sprintf("%#v", this.Boat)+",\n")
	}
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringBoat(v interface{}, typ string) string {
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

// BoatServiceClient is the client API for BoatService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type BoatServiceClient interface {
	GetBoat(ctx context.Context, in *GetBoatRequest, opts ...grpc.CallOption) (*GetBoatResponse, error)
}

type boatServiceClient struct {
	cc *grpc.ClientConn
}

func NewBoatServiceClient(cc *grpc.ClientConn) BoatServiceClient {
	return &boatServiceClient{cc}
}

func (c *boatServiceClient) GetBoat(ctx context.Context, in *GetBoatRequest, opts ...grpc.CallOption) (*GetBoatResponse, error) {
	out := new(GetBoatResponse)
	err := c.cc.Invoke(ctx, "/boat.BoatService/GetBoat", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// BoatServiceServer is the server API for BoatService service.
type BoatServiceServer interface {
	GetBoat(context.Context, *GetBoatRequest) (*GetBoatResponse, error)
}

// UnimplementedBoatServiceServer can be embedded to have forward compatible implementations.
type UnimplementedBoatServiceServer struct {
}

func (*UnimplementedBoatServiceServer) GetBoat(ctx context.Context, req *GetBoatRequest) (*GetBoatResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetBoat not implemented")
}

func RegisterBoatServiceServer(s *grpc.Server, srv BoatServiceServer) {
	s.RegisterService(&_BoatService_serviceDesc, srv)
}

func _BoatService_GetBoat_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetBoatRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BoatServiceServer).GetBoat(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/boat.BoatService/GetBoat",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BoatServiceServer).GetBoat(ctx, req.(*GetBoatRequest))
	}
	return interceptor(ctx, in, info, handler)
}

var _BoatService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "boat.BoatService",
	HandlerType: (*BoatServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetBoat",
			Handler:    _BoatService_GetBoat_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "boat.proto",
}

func (m *GetBoatRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *GetBoatRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *GetBoatRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Id != 0 {
		i = encodeVarintBoat(dAtA, i, uint64(m.Id))
		i--
		dAtA[i] = 0x8
	}
	return len(dAtA) - i, nil
}

func (m *GetBoatResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *GetBoatResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *GetBoatResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.Boat != nil {
		{
			size, err := m.Boat.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintBoat(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintBoat(dAtA []byte, offset int, v uint64) int {
	offset -= sovBoat(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *GetBoatRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Id != 0 {
		n += 1 + sovBoat(uint64(m.Id))
	}
	return n
}

func (m *GetBoatResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Boat != nil {
		l = m.Boat.Size()
		n += 1 + l + sovBoat(uint64(l))
	}
	return n
}

func sovBoat(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozBoat(x uint64) (n int) {
	return sovBoat(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *GetBoatRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&GetBoatRequest{`,
		`Id:` + fmt.Sprintf("%v", this.Id) + `,`,
		`}`,
	}, "")
	return s
}
func (this *GetBoatResponse) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&GetBoatResponse{`,
		`Boat:` + strings.Replace(fmt.Sprintf("%v", this.Boat), "Boat", "Boat", 1) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringBoat(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *GetBoatRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowBoat
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
			return fmt.Errorf("proto: GetBoatRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: GetBoatRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Id", wireType)
			}
			m.Id = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowBoat
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
			skippy, err := skipBoat(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthBoat
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
func (m *GetBoatResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowBoat
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
			return fmt.Errorf("proto: GetBoatResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: GetBoatResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Boat", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowBoat
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
				return ErrInvalidLengthBoat
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthBoat
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			if m.Boat == nil {
				m.Boat = &Boat{}
			}
			if err := m.Boat.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipBoat(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthBoat
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
func skipBoat(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowBoat
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
					return 0, ErrIntOverflowBoat
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
					return 0, ErrIntOverflowBoat
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
				return 0, ErrInvalidLengthBoat
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupBoat
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthBoat
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthBoat        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowBoat          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupBoat = fmt.Errorf("proto: unexpected end of group")
)
