///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $14;

class ListReservationsWithTripsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListReservationsWithTripsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'diver'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListReservationsWithTripsRequest._() : super();
  factory ListReservationsWithTripsRequest({
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
  factory ListReservationsWithTripsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReservationsWithTripsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReservationsWithTripsRequest clone() => ListReservationsWithTripsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReservationsWithTripsRequest copyWith(void Function(ListReservationsWithTripsRequest) updates) => super.copyWith((message) => updates(message as ListReservationsWithTripsRequest)) as ListReservationsWithTripsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListReservationsWithTripsRequest create() => ListReservationsWithTripsRequest._();
  ListReservationsWithTripsRequest createEmptyInstance() => create();
  static $pb.PbList<ListReservationsWithTripsRequest> createRepeated() => $pb.PbList<ListReservationsWithTripsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListReservationsWithTripsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReservationsWithTripsRequest>(create);
  static ListReservationsWithTripsRequest? _defaultInstance;

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

class ListReservationsWithTripsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListReservationsWithTripsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'diver'), createEmptyInstance: create)
    ..aOM<$14.TripWithTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $14.TripWithTemplate.create)
    ..aOM<$14.Reservation>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservation', subBuilder: $14.Reservation.create)
    ..hasRequiredFields = false
  ;

  ListReservationsWithTripsResponse._() : super();
  factory ListReservationsWithTripsResponse({
    $14.TripWithTemplate? trip,
    $14.Reservation? reservation,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (reservation != null) {
      _result.reservation = reservation;
    }
    return _result;
  }
  factory ListReservationsWithTripsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReservationsWithTripsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReservationsWithTripsResponse clone() => ListReservationsWithTripsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReservationsWithTripsResponse copyWith(void Function(ListReservationsWithTripsResponse) updates) => super.copyWith((message) => updates(message as ListReservationsWithTripsResponse)) as ListReservationsWithTripsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListReservationsWithTripsResponse create() => ListReservationsWithTripsResponse._();
  ListReservationsWithTripsResponse createEmptyInstance() => create();
  static $pb.PbList<ListReservationsWithTripsResponse> createRepeated() => $pb.PbList<ListReservationsWithTripsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListReservationsWithTripsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReservationsWithTripsResponse>(create);
  static ListReservationsWithTripsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $14.TripWithTemplate get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($14.TripWithTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $14.TripWithTemplate ensureTrip() => $_ensure(0);

  @$pb.TagNumber(10)
  $14.Reservation get reservation => $_getN(1);
  @$pb.TagNumber(10)
  set reservation($14.Reservation v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasReservation() => $_has(1);
  @$pb.TagNumber(10)
  void clearReservation() => clearField(10);
  @$pb.TagNumber(10)
  $14.Reservation ensureReservation() => $_ensure(1);
}

class GetAgencyAccountNumberByTripRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAgencyAccountNumberByTripRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'diver'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetAgencyAccountNumberByTripRequest._() : super();
  factory GetAgencyAccountNumberByTripRequest({
    $fixnum.Int64? tripId,
  }) {
    final _result = create();
    if (tripId != null) {
      _result.tripId = tripId;
    }
    return _result;
  }
  factory GetAgencyAccountNumberByTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAgencyAccountNumberByTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAgencyAccountNumberByTripRequest clone() => GetAgencyAccountNumberByTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAgencyAccountNumberByTripRequest copyWith(void Function(GetAgencyAccountNumberByTripRequest) updates) => super.copyWith((message) => updates(message as GetAgencyAccountNumberByTripRequest)) as GetAgencyAccountNumberByTripRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAgencyAccountNumberByTripRequest create() => GetAgencyAccountNumberByTripRequest._();
  GetAgencyAccountNumberByTripRequest createEmptyInstance() => create();
  static $pb.PbList<GetAgencyAccountNumberByTripRequest> createRepeated() => $pb.PbList<GetAgencyAccountNumberByTripRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAgencyAccountNumberByTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAgencyAccountNumberByTripRequest>(create);
  static GetAgencyAccountNumberByTripRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tripId => $_getI64(0);
  @$pb.TagNumber(1)
  set tripId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);
}

class GetAgencyAccountNumberByTripResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAgencyAccountNumberByTripResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'diver'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNumber')
    ..hasRequiredFields = false
  ;

  GetAgencyAccountNumberByTripResponse._() : super();
  factory GetAgencyAccountNumberByTripResponse({
    $core.String? accountNumber,
  }) {
    final _result = create();
    if (accountNumber != null) {
      _result.accountNumber = accountNumber;
    }
    return _result;
  }
  factory GetAgencyAccountNumberByTripResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAgencyAccountNumberByTripResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAgencyAccountNumberByTripResponse clone() => GetAgencyAccountNumberByTripResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAgencyAccountNumberByTripResponse copyWith(void Function(GetAgencyAccountNumberByTripResponse) updates) => super.copyWith((message) => updates(message as GetAgencyAccountNumberByTripResponse)) as GetAgencyAccountNumberByTripResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAgencyAccountNumberByTripResponse create() => GetAgencyAccountNumberByTripResponse._();
  GetAgencyAccountNumberByTripResponse createEmptyInstance() => create();
  static $pb.PbList<GetAgencyAccountNumberByTripResponse> createRepeated() => $pb.PbList<GetAgencyAccountNumberByTripResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAgencyAccountNumberByTripResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAgencyAccountNumberByTripResponse>(create);
  static GetAgencyAccountNumberByTripResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNumber() => clearField(1);
}

