///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'diver.pb.dart' as $4;
import 'agency.pb.dart' as $5;

enum AccountRequest_Kind {
  diver, 
  agency, 
  notSet
}

class AccountRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AccountRequest_Kind> _AccountRequest_KindByTag = {
    1 : AccountRequest_Kind.diver,
    5 : AccountRequest_Kind.agency,
    0 : AccountRequest_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'account'), createEmptyInstance: create)
    ..oo(0, [1, 5])
    ..aOM<$4.DiverRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diver', subBuilder: $4.DiverRequest.create)
    ..aOM<$5.AgencyRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agency', subBuilder: $5.AgencyRequest.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AccountRequest._() : super();
  factory AccountRequest({
    $4.DiverRequest? diver,
    $5.AgencyRequest? agency,
    $core.String? email,
    $core.String? username,
    $core.String? password,
  }) {
    final _result = create();
    if (diver != null) {
      _result.diver = diver;
    }
    if (agency != null) {
      _result.agency = agency;
    }
    if (email != null) {
      _result.email = email;
    }
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
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

  AccountRequest_Kind whichKind() => _AccountRequest_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $4.DiverRequest get diver => $_getN(0);
  @$pb.TagNumber(1)
  set diver($4.DiverRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiver() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiver() => clearField(1);
  @$pb.TagNumber(1)
  $4.DiverRequest ensureDiver() => $_ensure(0);

  @$pb.TagNumber(5)
  $5.AgencyRequest get agency => $_getN(1);
  @$pb.TagNumber(5)
  set agency($5.AgencyRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAgency() => $_has(1);
  @$pb.TagNumber(5)
  void clearAgency() => clearField(5);
  @$pb.TagNumber(5)
  $5.AgencyRequest ensureAgency() => $_ensure(1);

  @$pb.TagNumber(10)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(10)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(10)
  void clearEmail() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get username => $_getSZ(3);
  @$pb.TagNumber(11)
  set username($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasUsername() => $_has(3);
  @$pb.TagNumber(11)
  void clearUsername() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get password => $_getSZ(4);
  @$pb.TagNumber(12)
  set password($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(12)
  $core.bool hasPassword() => $_has(4);
  @$pb.TagNumber(12)
  void clearPassword() => clearField(12);
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

