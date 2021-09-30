///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $2;

class AgencyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AgencyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOM<$2.Address>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $2.Address.create)
    ..pc<$2.FileTransfer>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: $2.FileTransfer.create)
    ..hasRequiredFields = false
  ;

  AgencyRequest._() : super();
  factory AgencyRequest({
    $core.String? name,
    $core.String? phoneNumber,
    $2.Address? address,
    $core.Iterable<$2.FileTransfer>? documents,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (address != null) {
      _result.address = address;
    }
    if (documents != null) {
      _result.documents.addAll(documents);
    }
    return _result;
  }
  factory AgencyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgencyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgencyRequest clone() => AgencyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgencyRequest copyWith(void Function(AgencyRequest) updates) => super.copyWith((message) => updates(message as AgencyRequest)) as AgencyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AgencyRequest create() => AgencyRequest._();
  AgencyRequest createEmptyInstance() => create();
  static $pb.PbList<AgencyRequest> createRepeated() => $pb.PbList<AgencyRequest>();
  @$core.pragma('dart2js:noInline')
  static AgencyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgencyRequest>(create);
  static AgencyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(20)
  $core.String get phoneNumber => $_getSZ(1);
  @$pb.TagNumber(20)
  set phoneNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(20)
  $core.bool hasPhoneNumber() => $_has(1);
  @$pb.TagNumber(20)
  void clearPhoneNumber() => clearField(20);

  @$pb.TagNumber(30)
  $2.Address get address => $_getN(2);
  @$pb.TagNumber(30)
  set address($2.Address v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(30)
  void clearAddress() => clearField(30);
  @$pb.TagNumber(30)
  $2.Address ensureAddress() => $_ensure(2);

  @$pb.TagNumber(40)
  $core.List<$2.FileTransfer> get documents => $_getList(3);
}

