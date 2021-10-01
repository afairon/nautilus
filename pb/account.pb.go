// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: account.proto

package pb

import (
	context "context"
	fmt "fmt"
	proto "github.com/gogo/protobuf/proto"
	empty "github.com/golang/protobuf/ptypes/empty"
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

// AccountRequest
type AccountRequest struct {
	// kind defines type of account
	//
	// Types that are valid to be assigned to Kind:
	//	*AccountRequest_Diver
	//	*AccountRequest_Agency
	Kind     isAccountRequest_Kind `protobuf_oneof:"kind"`
	Email    string                `protobuf:"bytes,10,opt,name=email,proto3" json:"email,omitempty"`
	Username string                `protobuf:"bytes,11,opt,name=username,proto3" json:"username,omitempty"`
	Password string                `protobuf:"bytes,12,opt,name=password,proto3" json:"password,omitempty"`
}

func (m *AccountRequest) Reset()      { *m = AccountRequest{} }
func (*AccountRequest) ProtoMessage() {}
func (*AccountRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{0}
}
func (m *AccountRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *AccountRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_AccountRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *AccountRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_AccountRequest.Merge(m, src)
}
func (m *AccountRequest) XXX_Size() int {
	return m.Size()
}
func (m *AccountRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_AccountRequest.DiscardUnknown(m)
}

var xxx_messageInfo_AccountRequest proto.InternalMessageInfo

type isAccountRequest_Kind interface {
	isAccountRequest_Kind()
	Equal(interface{}) bool
	MarshalTo([]byte) (int, error)
	Size() int
}

type AccountRequest_Diver struct {
	Diver *DiverRequest `protobuf:"bytes,1,opt,name=diver,proto3,oneof" json:"diver,omitempty"`
}
type AccountRequest_Agency struct {
	Agency *AgencyRequest `protobuf:"bytes,5,opt,name=agency,proto3,oneof" json:"agency,omitempty"`
}

func (*AccountRequest_Diver) isAccountRequest_Kind()  {}
func (*AccountRequest_Agency) isAccountRequest_Kind() {}

func (m *AccountRequest) GetKind() isAccountRequest_Kind {
	if m != nil {
		return m.Kind
	}
	return nil
}

func (m *AccountRequest) GetDiver() *DiverRequest {
	if x, ok := m.GetKind().(*AccountRequest_Diver); ok {
		return x.Diver
	}
	return nil
}

func (m *AccountRequest) GetAgency() *AgencyRequest {
	if x, ok := m.GetKind().(*AccountRequest_Agency); ok {
		return x.Agency
	}
	return nil
}

func (m *AccountRequest) GetEmail() string {
	if m != nil {
		return m.Email
	}
	return ""
}

func (m *AccountRequest) GetUsername() string {
	if m != nil {
		return m.Username
	}
	return ""
}

func (m *AccountRequest) GetPassword() string {
	if m != nil {
		return m.Password
	}
	return ""
}

// XXX_OneofWrappers is for the internal use of the proto package.
func (*AccountRequest) XXX_OneofWrappers() []interface{} {
	return []interface{}{
		(*AccountRequest_Diver)(nil),
		(*AccountRequest_Agency)(nil),
	}
}

// LoginRequest
type LoginRequest struct {
	Email    string `protobuf:"bytes,1,opt,name=email,proto3" json:"email,omitempty"`
	Password string `protobuf:"bytes,2,opt,name=password,proto3" json:"password,omitempty"`
}

func (m *LoginRequest) Reset()      { *m = LoginRequest{} }
func (*LoginRequest) ProtoMessage() {}
func (*LoginRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{1}
}
func (m *LoginRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *LoginRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_LoginRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *LoginRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_LoginRequest.Merge(m, src)
}
func (m *LoginRequest) XXX_Size() int {
	return m.Size()
}
func (m *LoginRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_LoginRequest.DiscardUnknown(m)
}

var xxx_messageInfo_LoginRequest proto.InternalMessageInfo

func (m *LoginRequest) GetEmail() string {
	if m != nil {
		return m.Email
	}
	return ""
}

func (m *LoginRequest) GetPassword() string {
	if m != nil {
		return m.Password
	}
	return ""
}

// LoginResponse
type LoginResponse struct {
	Token string `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
}

func (m *LoginResponse) Reset()      { *m = LoginResponse{} }
func (*LoginResponse) ProtoMessage() {}
func (*LoginResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_8e28828dcb8d24f0, []int{2}
}
func (m *LoginResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *LoginResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_LoginResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *LoginResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_LoginResponse.Merge(m, src)
}
func (m *LoginResponse) XXX_Size() int {
	return m.Size()
}
func (m *LoginResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_LoginResponse.DiscardUnknown(m)
}

var xxx_messageInfo_LoginResponse proto.InternalMessageInfo

func (m *LoginResponse) GetToken() string {
	if m != nil {
		return m.Token
	}
	return ""
}

func init() {
	proto.RegisterType((*AccountRequest)(nil), "account.AccountRequest")
	proto.RegisterType((*LoginRequest)(nil), "account.LoginRequest")
	proto.RegisterType((*LoginResponse)(nil), "account.LoginResponse")
}

func init() { proto.RegisterFile("account.proto", fileDescriptor_8e28828dcb8d24f0) }

var fileDescriptor_8e28828dcb8d24f0 = []byte{
	// 369 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x5c, 0x51, 0xbd, 0x4e, 0xf3, 0x30,
	0x14, 0xb5, 0x3f, 0x35, 0xe9, 0x87, 0xdb, 0x32, 0x18, 0x5a, 0xa2, 0x20, 0x59, 0x55, 0x24, 0xa4,
	0x4a, 0x48, 0x8e, 0x54, 0x16, 0x04, 0x0b, 0x2d, 0x20, 0x31, 0x30, 0x75, 0x64, 0x4b, 0x5b, 0x13,
	0x45, 0x6d, 0xe3, 0x90, 0x1f, 0x10, 0x5b, 0x1f, 0x81, 0xc7, 0xe0, 0x41, 0x18, 0x18, 0x3b, 0x76,
	0xa4, 0xee, 0xc2, 0xd8, 0x47, 0x40, 0xb1, 0x9d, 0x40, 0xbb, 0x24, 0x3a, 0xf7, 0x9e, 0x7b, 0xce,
	0xbd, 0xc7, 0xa8, 0xe1, 0x8d, 0x46, 0x3c, 0x0b, 0x53, 0x1a, 0xc5, 0x3c, 0xe5, 0xb8, 0xaa, 0xa1,
	0x5d, 0xf7, 0x7c, 0x16, 0x8e, 0x5e, 0x55, 0xd9, 0xae, 0x8d, 0x83, 0x67, 0x16, 0x6b, 0x70, 0xec,
	0x73, 0xee, 0x4f, 0x99, 0x2b, 0xd1, 0x30, 0x7b, 0x74, 0xd9, 0x2c, 0x4a, 0x35, 0xd3, 0xf9, 0x80,
	0x68, 0xbf, 0xa7, 0x34, 0x06, 0xec, 0x29, 0x63, 0x49, 0x8a, 0x4f, 0x91, 0x21, 0xc7, 0x2d, 0xd8,
	0x86, 0x9d, 0x5a, 0xf7, 0x80, 0x2a, 0xb1, 0x9b, 0xfc, 0xab, 0x39, 0x77, 0x60, 0xa0, 0x38, 0xd8,
	0x45, 0xa6, 0x72, 0xb6, 0x0c, 0xc9, 0x6e, 0x52, 0xbd, 0x48, 0x4f, 0xfe, 0x7e, 0xf9, 0x9a, 0x86,
	0x0f, 0x91, 0xc1, 0x66, 0x5e, 0x30, 0xb5, 0x50, 0x1b, 0x76, 0xf6, 0x06, 0x0a, 0x60, 0x1b, 0xfd,
	0xcf, 0x12, 0x16, 0x87, 0xde, 0x8c, 0x59, 0x35, 0xd9, 0x28, 0x71, 0xde, 0x8b, 0xbc, 0x24, 0x79,
	0xe1, 0xf1, 0xd8, 0xaa, 0xab, 0x5e, 0x81, 0xfb, 0x26, 0xaa, 0x4c, 0x82, 0x70, 0xec, 0x5c, 0xa1,
	0xfa, 0x3d, 0xf7, 0x83, 0xb0, 0xb8, 0xa1, 0x74, 0x81, 0x3b, 0x2e, 0xa5, 0xd2, 0xbf, 0x6d, 0x25,
	0xe7, 0x04, 0x35, 0xb4, 0x42, 0x12, 0xf1, 0x30, 0x61, 0xb9, 0x44, 0xca, 0x27, 0x2c, 0x2c, 0x24,
	0x24, 0xe8, 0xce, 0x21, 0xaa, 0xea, 0xbc, 0xf0, 0x25, 0x32, 0xaf, 0x63, 0xe6, 0xa5, 0x0c, 0x1f,
	0xd1, 0xe2, 0x59, 0xb6, 0xb3, 0xb4, 0x5b, 0x54, 0x85, 0x4f, 0x8b, 0xf0, 0xe9, 0x6d, 0x1e, 0xbe,
	0x03, 0xf0, 0x39, 0x32, 0xa4, 0x1f, 0x6e, 0x96, 0xb3, 0x7f, 0x2f, 0xb0, 0x5b, 0xbb, 0x65, 0xb5,
	0x96, 0x03, 0xfa, 0x17, 0x8b, 0x15, 0x01, 0xcb, 0x15, 0x01, 0x9b, 0x15, 0x81, 0x73, 0x41, 0xe0,
	0xbb, 0x20, 0xf0, 0x53, 0x10, 0xb8, 0x10, 0x04, 0x7e, 0x09, 0x02, 0xbf, 0x05, 0x01, 0x1b, 0x41,
	0xe0, 0xdb, 0x9a, 0x80, 0xc5, 0x9a, 0x80, 0xe5, 0x9a, 0x80, 0x87, 0x0a, 0x75, 0xa3, 0xe1, 0xd0,
	0x94, 0x7b, 0x9c, 0xfd, 0x04, 0x00, 0x00, 0xff, 0xff, 0x08, 0xbd, 0xaf, 0x5e, 0x47, 0x02, 0x00,
	0x00,
}

func (this *AccountRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*AccountRequest)
	if !ok {
		that2, ok := that.(AccountRequest)
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
	if that1.Kind == nil {
		if this.Kind != nil {
			return false
		}
	} else if this.Kind == nil {
		return false
	} else if !this.Kind.Equal(that1.Kind) {
		return false
	}
	if this.Email != that1.Email {
		return false
	}
	if this.Username != that1.Username {
		return false
	}
	if this.Password != that1.Password {
		return false
	}
	return true
}
func (this *AccountRequest_Diver) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*AccountRequest_Diver)
	if !ok {
		that2, ok := that.(AccountRequest_Diver)
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
	if !this.Diver.Equal(that1.Diver) {
		return false
	}
	return true
}
func (this *AccountRequest_Agency) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*AccountRequest_Agency)
	if !ok {
		that2, ok := that.(AccountRequest_Agency)
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
	if !this.Agency.Equal(that1.Agency) {
		return false
	}
	return true
}
func (this *LoginRequest) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*LoginRequest)
	if !ok {
		that2, ok := that.(LoginRequest)
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
	if this.Email != that1.Email {
		return false
	}
	if this.Password != that1.Password {
		return false
	}
	return true
}
func (this *LoginResponse) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*LoginResponse)
	if !ok {
		that2, ok := that.(LoginResponse)
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
	if this.Token != that1.Token {
		return false
	}
	return true
}
func (this *AccountRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 9)
	s = append(s, "&pb.AccountRequest{")
	if this.Kind != nil {
		s = append(s, "Kind: "+fmt.Sprintf("%#v", this.Kind)+",\n")
	}
	s = append(s, "Email: "+fmt.Sprintf("%#v", this.Email)+",\n")
	s = append(s, "Username: "+fmt.Sprintf("%#v", this.Username)+",\n")
	s = append(s, "Password: "+fmt.Sprintf("%#v", this.Password)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *AccountRequest_Diver) GoString() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&pb.AccountRequest_Diver{` +
		`Diver:` + fmt.Sprintf("%#v", this.Diver) + `}`}, ", ")
	return s
}
func (this *AccountRequest_Agency) GoString() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&pb.AccountRequest_Agency{` +
		`Agency:` + fmt.Sprintf("%#v", this.Agency) + `}`}, ", ")
	return s
}
func (this *LoginRequest) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 6)
	s = append(s, "&pb.LoginRequest{")
	s = append(s, "Email: "+fmt.Sprintf("%#v", this.Email)+",\n")
	s = append(s, "Password: "+fmt.Sprintf("%#v", this.Password)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func (this *LoginResponse) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 5)
	s = append(s, "&pb.LoginResponse{")
	s = append(s, "Token: "+fmt.Sprintf("%#v", this.Token)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringAccount(v interface{}, typ string) string {
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

// AccountClient is the client API for Account service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type AccountClient interface {
	// Create is used to create agency and diver account.
	Create(ctx context.Context, in *AccountRequest, opts ...grpc.CallOption) (*empty.Empty, error)
	// Login is used to authenticate the user.
	// The client supplies the server with credentials and the server
	// creates a session and sends back a token.
	Login(ctx context.Context, in *LoginRequest, opts ...grpc.CallOption) (*LoginResponse, error)
}

type accountClient struct {
	cc *grpc.ClientConn
}

func NewAccountClient(cc *grpc.ClientConn) AccountClient {
	return &accountClient{cc}
}

func (c *accountClient) Create(ctx context.Context, in *AccountRequest, opts ...grpc.CallOption) (*empty.Empty, error) {
	out := new(empty.Empty)
	err := c.cc.Invoke(ctx, "/account.Account/Create", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accountClient) Login(ctx context.Context, in *LoginRequest, opts ...grpc.CallOption) (*LoginResponse, error) {
	out := new(LoginResponse)
	err := c.cc.Invoke(ctx, "/account.Account/Login", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// AccountServer is the server API for Account service.
type AccountServer interface {
	// Create is used to create agency and diver account.
	Create(context.Context, *AccountRequest) (*empty.Empty, error)
	// Login is used to authenticate the user.
	// The client supplies the server with credentials and the server
	// creates a session and sends back a token.
	Login(context.Context, *LoginRequest) (*LoginResponse, error)
}

// UnimplementedAccountServer can be embedded to have forward compatible implementations.
type UnimplementedAccountServer struct {
}

func (*UnimplementedAccountServer) Create(ctx context.Context, req *AccountRequest) (*empty.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Create not implemented")
}
func (*UnimplementedAccountServer) Login(ctx context.Context, req *LoginRequest) (*LoginResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Login not implemented")
}

func RegisterAccountServer(s *grpc.Server, srv AccountServer) {
	s.RegisterService(&_Account_serviceDesc, srv)
}

func _Account_Create_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AccountRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccountServer).Create(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/account.Account/Create",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccountServer).Create(ctx, req.(*AccountRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Account_Login_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(LoginRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccountServer).Login(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/account.Account/Login",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccountServer).Login(ctx, req.(*LoginRequest))
	}
	return interceptor(ctx, in, info, handler)
}

var _Account_serviceDesc = grpc.ServiceDesc{
	ServiceName: "account.Account",
	HandlerType: (*AccountServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Create",
			Handler:    _Account_Create_Handler,
		},
		{
			MethodName: "Login",
			Handler:    _Account_Login_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "account.proto",
}

func (m *AccountRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *AccountRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *AccountRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if len(m.Password) > 0 {
		i -= len(m.Password)
		copy(dAtA[i:], m.Password)
		i = encodeVarintAccount(dAtA, i, uint64(len(m.Password)))
		i--
		dAtA[i] = 0x62
	}
	if len(m.Username) > 0 {
		i -= len(m.Username)
		copy(dAtA[i:], m.Username)
		i = encodeVarintAccount(dAtA, i, uint64(len(m.Username)))
		i--
		dAtA[i] = 0x5a
	}
	if len(m.Email) > 0 {
		i -= len(m.Email)
		copy(dAtA[i:], m.Email)
		i = encodeVarintAccount(dAtA, i, uint64(len(m.Email)))
		i--
		dAtA[i] = 0x52
	}
	if m.Kind != nil {
		{
			size := m.Kind.Size()
			i -= size
			if _, err := m.Kind.MarshalTo(dAtA[i:]); err != nil {
				return 0, err
			}
		}
	}
	return len(dAtA) - i, nil
}

func (m *AccountRequest_Diver) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *AccountRequest_Diver) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	if m.Diver != nil {
		{
			size, err := m.Diver.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintAccount(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}
func (m *AccountRequest_Agency) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *AccountRequest_Agency) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	if m.Agency != nil {
		{
			size, err := m.Agency.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintAccount(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0x2a
	}
	return len(dAtA) - i, nil
}
func (m *LoginRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *LoginRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *LoginRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if len(m.Password) > 0 {
		i -= len(m.Password)
		copy(dAtA[i:], m.Password)
		i = encodeVarintAccount(dAtA, i, uint64(len(m.Password)))
		i--
		dAtA[i] = 0x12
	}
	if len(m.Email) > 0 {
		i -= len(m.Email)
		copy(dAtA[i:], m.Email)
		i = encodeVarintAccount(dAtA, i, uint64(len(m.Email)))
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func (m *LoginResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *LoginResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *LoginResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if len(m.Token) > 0 {
		i -= len(m.Token)
		copy(dAtA[i:], m.Token)
		i = encodeVarintAccount(dAtA, i, uint64(len(m.Token)))
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintAccount(dAtA []byte, offset int, v uint64) int {
	offset -= sovAccount(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *AccountRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Kind != nil {
		n += m.Kind.Size()
	}
	l = len(m.Email)
	if l > 0 {
		n += 1 + l + sovAccount(uint64(l))
	}
	l = len(m.Username)
	if l > 0 {
		n += 1 + l + sovAccount(uint64(l))
	}
	l = len(m.Password)
	if l > 0 {
		n += 1 + l + sovAccount(uint64(l))
	}
	return n
}

func (m *AccountRequest_Diver) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Diver != nil {
		l = m.Diver.Size()
		n += 1 + l + sovAccount(uint64(l))
	}
	return n
}
func (m *AccountRequest_Agency) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Agency != nil {
		l = m.Agency.Size()
		n += 1 + l + sovAccount(uint64(l))
	}
	return n
}
func (m *LoginRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	l = len(m.Email)
	if l > 0 {
		n += 1 + l + sovAccount(uint64(l))
	}
	l = len(m.Password)
	if l > 0 {
		n += 1 + l + sovAccount(uint64(l))
	}
	return n
}

func (m *LoginResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	l = len(m.Token)
	if l > 0 {
		n += 1 + l + sovAccount(uint64(l))
	}
	return n
}

func sovAccount(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozAccount(x uint64) (n int) {
	return sovAccount(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *AccountRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&AccountRequest{`,
		`Kind:` + fmt.Sprintf("%v", this.Kind) + `,`,
		`Email:` + fmt.Sprintf("%v", this.Email) + `,`,
		`Username:` + fmt.Sprintf("%v", this.Username) + `,`,
		`Password:` + fmt.Sprintf("%v", this.Password) + `,`,
		`}`,
	}, "")
	return s
}
func (this *AccountRequest_Diver) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&AccountRequest_Diver{`,
		`Diver:` + strings.Replace(fmt.Sprintf("%v", this.Diver), "DiverRequest", "DiverRequest", 1) + `,`,
		`}`,
	}, "")
	return s
}
func (this *AccountRequest_Agency) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&AccountRequest_Agency{`,
		`Agency:` + strings.Replace(fmt.Sprintf("%v", this.Agency), "AgencyRequest", "AgencyRequest", 1) + `,`,
		`}`,
	}, "")
	return s
}
func (this *LoginRequest) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&LoginRequest{`,
		`Email:` + fmt.Sprintf("%v", this.Email) + `,`,
		`Password:` + fmt.Sprintf("%v", this.Password) + `,`,
		`}`,
	}, "")
	return s
}
func (this *LoginResponse) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&LoginResponse{`,
		`Token:` + fmt.Sprintf("%v", this.Token) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringAccount(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *AccountRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowAccount
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
			return fmt.Errorf("proto: AccountRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: AccountRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Diver", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			v := &DiverRequest{}
			if err := v.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			m.Kind = &AccountRequest_Diver{v}
			iNdEx = postIndex
		case 5:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Agency", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			v := &AgencyRequest{}
			if err := v.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			m.Kind = &AccountRequest_Agency{v}
			iNdEx = postIndex
		case 10:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Email", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Email = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		case 11:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Username", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Username = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		case 12:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Password", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Password = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipAccount(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthAccount
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
func (m *LoginRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowAccount
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
			return fmt.Errorf("proto: LoginRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: LoginRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Email", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Email = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		case 2:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Password", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Password = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipAccount(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthAccount
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
func (m *LoginResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowAccount
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
			return fmt.Errorf("proto: LoginResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: LoginResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Token", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowAccount
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
				return ErrInvalidLengthAccount
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthAccount
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Token = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipAccount(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthAccount
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
func skipAccount(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowAccount
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
					return 0, ErrIntOverflowAccount
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
					return 0, ErrIntOverflowAccount
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
				return 0, ErrInvalidLengthAccount
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupAccount
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthAccount
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthAccount        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowAccount          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupAccount = fmt.Errorf("proto: unexpected end of group")
)
