///
//  Generated code. Do not modify.
//  source: amenity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $12;

class ListAmenitiesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAmenitiesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'amenity'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListAmenitiesRequest._() : super();
  factory ListAmenitiesRequest({
    $fixnum.Int64? limit,
    $fixnum.Int64? offset,
  }) {
    final _result = create();
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory ListAmenitiesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAmenitiesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAmenitiesRequest clone() => ListAmenitiesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAmenitiesRequest copyWith(void Function(ListAmenitiesRequest) updates) => super.copyWith((message) => updates(message as ListAmenitiesRequest)) as ListAmenitiesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAmenitiesRequest create() => ListAmenitiesRequest._();
  ListAmenitiesRequest createEmptyInstance() => create();
  static $pb.PbList<ListAmenitiesRequest> createRepeated() => $pb.PbList<ListAmenitiesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAmenitiesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAmenitiesRequest>(create);
  static ListAmenitiesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get limit => $_getI64(0);
  @$pb.TagNumber(1)
  set limit($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get offset => $_getI64(1);
  @$pb.TagNumber(2)
  set offset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);
}

class ListAmenitiesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAmenitiesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'amenity'), createEmptyInstance: create)
    ..aOM<$12.Amenity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amenities', subBuilder: $12.Amenity.create)
    ..hasRequiredFields = false
  ;

  ListAmenitiesResponse._() : super();
  factory ListAmenitiesResponse({
    $12.Amenity? amenities,
  }) {
    final _result = create();
    if (amenities != null) {
      _result.amenities = amenities;
    }
    return _result;
  }
  factory ListAmenitiesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAmenitiesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAmenitiesResponse clone() => ListAmenitiesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAmenitiesResponse copyWith(void Function(ListAmenitiesResponse) updates) => super.copyWith((message) => updates(message as ListAmenitiesResponse)) as ListAmenitiesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAmenitiesResponse create() => ListAmenitiesResponse._();
  ListAmenitiesResponse createEmptyInstance() => create();
  static $pb.PbList<ListAmenitiesResponse> createRepeated() => $pb.PbList<ListAmenitiesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAmenitiesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAmenitiesResponse>(create);
  static ListAmenitiesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Amenity get amenities => $_getN(0);
  @$pb.TagNumber(1)
  set amenities($12.Amenity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmenities() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmenities() => clearField(1);
  @$pb.TagNumber(1)
  $12.Amenity ensureAmenities() => $_ensure(0);
}

