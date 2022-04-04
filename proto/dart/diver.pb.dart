///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $11;

class ListBookedTripsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListBookedTripsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'diver'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListBookedTripsRequest._() : super();
  factory ListBookedTripsRequest({
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
  factory ListBookedTripsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBookedTripsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBookedTripsRequest clone() => ListBookedTripsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBookedTripsRequest copyWith(void Function(ListBookedTripsRequest) updates) => super.copyWith((message) => updates(message as ListBookedTripsRequest)) as ListBookedTripsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListBookedTripsRequest create() => ListBookedTripsRequest._();
  ListBookedTripsRequest createEmptyInstance() => create();
  static $pb.PbList<ListBookedTripsRequest> createRepeated() => $pb.PbList<ListBookedTripsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListBookedTripsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBookedTripsRequest>(create);
  static ListBookedTripsRequest? _defaultInstance;

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

class ListBookedTripsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListBookedTripsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'diver'), createEmptyInstance: create)
    ..aOM<$11.TripWithTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $11.TripWithTemplate.create)
    ..hasRequiredFields = false
  ;

  ListBookedTripsResponse._() : super();
  factory ListBookedTripsResponse({
    $11.TripWithTemplate? trip,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    return _result;
  }
  factory ListBookedTripsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBookedTripsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBookedTripsResponse clone() => ListBookedTripsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBookedTripsResponse copyWith(void Function(ListBookedTripsResponse) updates) => super.copyWith((message) => updates(message as ListBookedTripsResponse)) as ListBookedTripsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListBookedTripsResponse create() => ListBookedTripsResponse._();
  ListBookedTripsResponse createEmptyInstance() => create();
  static $pb.PbList<ListBookedTripsResponse> createRepeated() => $pb.PbList<ListBookedTripsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListBookedTripsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBookedTripsResponse>(create);
  static ListBookedTripsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.TripWithTemplate get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($11.TripWithTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $11.TripWithTemplate ensureTrip() => $_ensure(0);
}

