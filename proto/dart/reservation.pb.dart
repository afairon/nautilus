///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $12;

class CreateReservationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateReservationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'reservation'), createEmptyInstance: create)
    ..aOM<$12.Reservation>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservation', subBuilder: $12.Reservation.create)
    ..hasRequiredFields = false
  ;

  CreateReservationRequest._() : super();
  factory CreateReservationRequest({
    $12.Reservation? reservation,
  }) {
    final _result = create();
    if (reservation != null) {
      _result.reservation = reservation;
    }
    return _result;
  }
  factory CreateReservationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReservationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReservationRequest clone() => CreateReservationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReservationRequest copyWith(void Function(CreateReservationRequest) updates) => super.copyWith((message) => updates(message as CreateReservationRequest)) as CreateReservationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateReservationRequest create() => CreateReservationRequest._();
  CreateReservationRequest createEmptyInstance() => create();
  static $pb.PbList<CreateReservationRequest> createRepeated() => $pb.PbList<CreateReservationRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateReservationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReservationRequest>(create);
  static CreateReservationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Reservation get reservation => $_getN(0);
  @$pb.TagNumber(1)
  set reservation($12.Reservation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReservation() => $_has(0);
  @$pb.TagNumber(1)
  void clearReservation() => clearField(1);
  @$pb.TagNumber(1)
  $12.Reservation ensureReservation() => $_ensure(0);
}

class CreateReservationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateReservationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'reservation'), createEmptyInstance: create)
    ..aOM<$12.Reservation>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservation', subBuilder: $12.Reservation.create)
    ..hasRequiredFields = false
  ;

  CreateReservationResponse._() : super();
  factory CreateReservationResponse({
    $12.Reservation? reservation,
  }) {
    final _result = create();
    if (reservation != null) {
      _result.reservation = reservation;
    }
    return _result;
  }
  factory CreateReservationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReservationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReservationResponse clone() => CreateReservationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReservationResponse copyWith(void Function(CreateReservationResponse) updates) => super.copyWith((message) => updates(message as CreateReservationResponse)) as CreateReservationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateReservationResponse create() => CreateReservationResponse._();
  CreateReservationResponse createEmptyInstance() => create();
  static $pb.PbList<CreateReservationResponse> createRepeated() => $pb.PbList<CreateReservationResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateReservationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReservationResponse>(create);
  static CreateReservationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Reservation get reservation => $_getN(0);
  @$pb.TagNumber(1)
  set reservation($12.Reservation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReservation() => $_has(0);
  @$pb.TagNumber(1)
  void clearReservation() => clearField(1);
  @$pb.TagNumber(1)
  $12.Reservation ensureReservation() => $_ensure(0);
}

class GetReservationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetReservationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'reservation'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetReservationRequest._() : super();
  factory GetReservationRequest({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetReservationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReservationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReservationRequest clone() => GetReservationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReservationRequest copyWith(void Function(GetReservationRequest) updates) => super.copyWith((message) => updates(message as GetReservationRequest)) as GetReservationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetReservationRequest create() => GetReservationRequest._();
  GetReservationRequest createEmptyInstance() => create();
  static $pb.PbList<GetReservationRequest> createRepeated() => $pb.PbList<GetReservationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetReservationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReservationRequest>(create);
  static GetReservationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetReservationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetReservationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'reservation'), createEmptyInstance: create)
    ..aOM<$12.Reservation>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservation', subBuilder: $12.Reservation.create)
    ..hasRequiredFields = false
  ;

  GetReservationResponse._() : super();
  factory GetReservationResponse({
    $12.Reservation? reservation,
  }) {
    final _result = create();
    if (reservation != null) {
      _result.reservation = reservation;
    }
    return _result;
  }
  factory GetReservationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReservationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReservationResponse clone() => GetReservationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReservationResponse copyWith(void Function(GetReservationResponse) updates) => super.copyWith((message) => updates(message as GetReservationResponse)) as GetReservationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetReservationResponse create() => GetReservationResponse._();
  GetReservationResponse createEmptyInstance() => create();
  static $pb.PbList<GetReservationResponse> createRepeated() => $pb.PbList<GetReservationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetReservationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReservationResponse>(create);
  static GetReservationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Reservation get reservation => $_getN(0);
  @$pb.TagNumber(1)
  set reservation($12.Reservation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReservation() => $_has(0);
  @$pb.TagNumber(1)
  void clearReservation() => clearField(1);
  @$pb.TagNumber(1)
  $12.Reservation ensureReservation() => $_ensure(0);
}

