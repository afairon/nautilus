///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $10;

enum AccountRequest_Type {
  agency, 
  diver, 
  notSet
}

class AccountRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AccountRequest_Type> _AccountRequest_TypeByTag = {
    1 : AccountRequest_Type.agency,
    5 : AccountRequest_Type.diver,
    0 : AccountRequest_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'account'), createEmptyInstance: create)
    ..oo(0, [1, 5])
    ..aOM<$10.Agency>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agency', subBuilder: $10.Agency.create)
    ..aOM<$10.Diver>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diver', subBuilder: $10.Diver.create)
    ..hasRequiredFields = false
  ;

  AccountRequest._() : super();
  factory AccountRequest({
    $10.Agency? agency,
    $10.Diver? diver,
  }) {
    final _result = create();
    if (agency != null) {
      _result.agency = agency;
    }
    if (diver != null) {
      _result.diver = diver;
    }
    return _result;
  }
  factory AccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountRequest clone() => AccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountRequest copyWith(void Function(AccountRequest) updates) => super.copyWith((message) => updates(message as AccountRequest)) as AccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountRequest create() => AccountRequest._();
  AccountRequest createEmptyInstance() => create();
  static $pb.PbList<AccountRequest> createRepeated() => $pb.PbList<AccountRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountRequest>(create);
  static AccountRequest? _defaultInstance;

  AccountRequest_Type whichType() => _AccountRequest_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $10.Agency get agency => $_getN(0);
  @$pb.TagNumber(1)
  set agency($10.Agency v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgency() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgency() => clearField(1);
  @$pb.TagNumber(1)
  $10.Agency ensureAgency() => $_ensure(0);

  @$pb.TagNumber(5)
  $10.Diver get diver => $_getN(1);
  @$pb.TagNumber(5)
  set diver($10.Diver v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiver() => $_has(1);
  @$pb.TagNumber(5)
  void clearDiver() => clearField(5);
  @$pb.TagNumber(5)
  $10.Diver ensureDiver() => $_ensure(1);
}

enum UpdateRequest_Type {
  admin, 
  agency, 
  diver, 
  notSet
}

class UpdateRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UpdateRequest_Type> _UpdateRequest_TypeByTag = {
    1 : UpdateRequest_Type.admin,
    5 : UpdateRequest_Type.agency,
    10 : UpdateRequest_Type.diver,
    0 : UpdateRequest_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'account'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<$10.Admin>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin', subBuilder: $10.Admin.create)
    ..aOM<$10.Agency>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agency', subBuilder: $10.Agency.create)
    ..aOM<$10.Diver>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diver', subBuilder: $10.Diver.create)
    ..hasRequiredFields = false
  ;

  UpdateRequest._() : super();
  factory UpdateRequest({
    $10.Admin? admin,
    $10.Agency? agency,
    $10.Diver? diver,
  }) {
    final _result = create();
    if (admin != null) {
      _result.admin = admin;
    }
    if (agency != null) {
      _result.agency = agency;
    }
    if (diver != null) {
      _result.diver = diver;
    }
    return _result;
  }
  factory UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  UpdateRequest_Type whichType() => _UpdateRequest_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $10.Admin get admin => $_getN(0);
  @$pb.TagNumber(1)
  set admin($10.Admin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdmin() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdmin() => clearField(1);
  @$pb.TagNumber(1)
  $10.Admin ensureAdmin() => $_ensure(0);

  @$pb.TagNumber(5)
  $10.Agency get agency => $_getN(1);
  @$pb.TagNumber(5)
  set agency($10.Agency v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAgency() => $_has(1);
  @$pb.TagNumber(5)
  void clearAgency() => clearField(5);
  @$pb.TagNumber(5)
  $10.Agency ensureAgency() => $_ensure(1);

  @$pb.TagNumber(10)
  $10.Diver get diver => $_getN(2);
  @$pb.TagNumber(10)
  set diver($10.Diver v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasDiver() => $_has(2);
  @$pb.TagNumber(10)
  void clearDiver() => clearField(10);
  @$pb.TagNumber(10)
  $10.Diver ensureDiver() => $_ensure(2);
}

class UpdateAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'account'), createEmptyInstance: create)
    ..aOM<$10.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $10.Account.create)
    ..hasRequiredFields = false
  ;

  UpdateAccountRequest._() : super();
  factory UpdateAccountRequest({
    $10.Account? account,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory UpdateAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAccountRequest clone() => UpdateAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAccountRequest copyWith(void Function(UpdateAccountRequest) updates) => super.copyWith((message) => updates(message as UpdateAccountRequest)) as UpdateAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAccountRequest create() => UpdateAccountRequest._();
  UpdateAccountRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAccountRequest> createRepeated() => $pb.PbList<UpdateAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAccountRequest>(create);
  static UpdateAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $10.Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account($10.Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  $10.Account ensureAccount() => $_ensure(0);
}

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  LoginRequest._() : super();
  factory LoginRequest({
    $core.String? email,
    $core.String? password,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class LoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  LoginResponse._() : super();
  factory LoginResponse({
    $core.String? token,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)) as LoginResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

enum GetProfileResponse_Profile {
  admin, 
  agency, 
  diver, 
  notSet
}

class GetProfileResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetProfileResponse_Profile> _GetProfileResponse_ProfileByTag = {
    1 : GetProfileResponse_Profile.admin,
    5 : GetProfileResponse_Profile.agency,
    10 : GetProfileResponse_Profile.diver,
    0 : GetProfileResponse_Profile.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetProfileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'account'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<$10.Admin>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin', subBuilder: $10.Admin.create)
    ..aOM<$10.Agency>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agency', subBuilder: $10.Agency.create)
    ..aOM<$10.Diver>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diver', subBuilder: $10.Diver.create)
    ..hasRequiredFields = false
  ;

  GetProfileResponse._() : super();
  factory GetProfileResponse({
    $10.Admin? admin,
    $10.Agency? agency,
    $10.Diver? diver,
  }) {
    final _result = create();
    if (admin != null) {
      _result.admin = admin;
    }
    if (agency != null) {
      _result.agency = agency;
    }
    if (diver != null) {
      _result.diver = diver;
    }
    return _result;
  }
  factory GetProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetProfileResponse clone() => GetProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetProfileResponse copyWith(void Function(GetProfileResponse) updates) => super.copyWith((message) => updates(message as GetProfileResponse)) as GetProfileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetProfileResponse create() => GetProfileResponse._();
  GetProfileResponse createEmptyInstance() => create();
  static $pb.PbList<GetProfileResponse> createRepeated() => $pb.PbList<GetProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static GetProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProfileResponse>(create);
  static GetProfileResponse? _defaultInstance;

  GetProfileResponse_Profile whichProfile() => _GetProfileResponse_ProfileByTag[$_whichOneof(0)]!;
  void clearProfile() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $10.Admin get admin => $_getN(0);
  @$pb.TagNumber(1)
  set admin($10.Admin v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdmin() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdmin() => clearField(1);
  @$pb.TagNumber(1)
  $10.Admin ensureAdmin() => $_ensure(0);

  @$pb.TagNumber(5)
  $10.Agency get agency => $_getN(1);
  @$pb.TagNumber(5)
  set agency($10.Agency v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAgency() => $_has(1);
  @$pb.TagNumber(5)
  void clearAgency() => clearField(5);
  @$pb.TagNumber(5)
  $10.Agency ensureAgency() => $_ensure(1);

  @$pb.TagNumber(10)
  $10.Diver get diver => $_getN(2);
  @$pb.TagNumber(10)
  set diver($10.Diver v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasDiver() => $_has(2);
  @$pb.TagNumber(10)
  void clearDiver() => clearField(10);
  @$pb.TagNumber(10)
  $10.Diver ensureDiver() => $_ensure(2);
}

