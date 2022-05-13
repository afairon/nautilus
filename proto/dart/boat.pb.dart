///
//  Generated code. Do not modify.
//  source: boat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $14;

class GetBoatRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBoatRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'boat'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetBoatRequest._() : super();
  factory GetBoatRequest({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetBoatRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBoatRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBoatRequest clone() => GetBoatRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBoatRequest copyWith(void Function(GetBoatRequest) updates) => super.copyWith((message) => updates(message as GetBoatRequest)) as GetBoatRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBoatRequest create() => GetBoatRequest._();
  GetBoatRequest createEmptyInstance() => create();
  static $pb.PbList<GetBoatRequest> createRepeated() => $pb.PbList<GetBoatRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBoatRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBoatRequest>(create);
  static GetBoatRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBoatResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBoatResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'boat'), createEmptyInstance: create)
    ..aOM<$14.Boat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boat', subBuilder: $14.Boat.create)
    ..hasRequiredFields = false
  ;

  GetBoatResponse._() : super();
  factory GetBoatResponse({
    $14.Boat? boat,
  }) {
    final _result = create();
    if (boat != null) {
      _result.boat = boat;
    }
    return _result;
  }
  factory GetBoatResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBoatResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBoatResponse clone() => GetBoatResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBoatResponse copyWith(void Function(GetBoatResponse) updates) => super.copyWith((message) => updates(message as GetBoatResponse)) as GetBoatResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBoatResponse create() => GetBoatResponse._();
  GetBoatResponse createEmptyInstance() => create();
  static $pb.PbList<GetBoatResponse> createRepeated() => $pb.PbList<GetBoatResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBoatResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBoatResponse>(create);
  static GetBoatResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $14.Boat get boat => $_getN(0);
  @$pb.TagNumber(1)
  set boat($14.Boat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoat() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoat() => clearField(1);
  @$pb.TagNumber(1)
  $14.Boat ensureBoat() => $_ensure(0);
}

