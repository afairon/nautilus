///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'diver.pb.dart' as $3;
import 'agency.pb.dart' as $4;

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
    ..aOM<$3.Diver>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diver', subBuilder: $3.Diver.create)
    ..aOM<$4.Agency>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agency', subBuilder: $4.Agency.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AccountRequest._() : super();
  factory AccountRequest({
    $3.Diver? diver,
    $4.Agency? agency,
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
  $3.Diver get diver => $_getN(0);
  @$pb.TagNumber(1)
  set diver($3.Diver v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiver() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiver() => clearField(1);
  @$pb.TagNumber(1)
  $3.Diver ensureDiver() => $_ensure(0);

  @$pb.TagNumber(5)
  $4.Agency get agency => $_getN(1);
  @$pb.TagNumber(5)
  set agency($4.Agency v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAgency() => $_has(1);
  @$pb.TagNumber(5)
  void clearAgency() => clearField(5);
  @$pb.TagNumber(5)
  $4.Agency ensureAgency() => $_ensure(1);

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

