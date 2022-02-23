///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $5;

class Reservation_Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Reservation.Room', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'reservation'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomTypeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noDivers', $pb.PbFieldType.OU3)
    ..a<$core.int>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Reservation_Room._() : super();
  factory Reservation_Room({
    $fixnum.Int64? id,
    $fixnum.Int64? roomTypeId,
    $core.int? noDivers,
    $core.int? quantity,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (roomTypeId != null) {
      _result.roomTypeId = roomTypeId;
    }
    if (noDivers != null) {
      _result.noDivers = noDivers;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory Reservation_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reservation_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reservation_Room clone() => Reservation_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reservation_Room copyWith(void Function(Reservation_Room) updates) => super.copyWith((message) => updates(message as Reservation_Room)) as Reservation_Room; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reservation_Room create() => Reservation_Room._();
  Reservation_Room createEmptyInstance() => create();
  static $pb.PbList<Reservation_Room> createRepeated() => $pb.PbList<Reservation_Room>();
  @$core.pragma('dart2js:noInline')
  static Reservation_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reservation_Room>(create);
  static Reservation_Room? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $fixnum.Int64 get roomTypeId => $_getI64(1);
  @$pb.TagNumber(10)
  set roomTypeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasRoomTypeId() => $_has(1);
  @$pb.TagNumber(10)
  void clearRoomTypeId() => clearField(10);

  @$pb.TagNumber(20)
  $core.int get noDivers => $_getIZ(2);
  @$pb.TagNumber(20)
  set noDivers($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasNoDivers() => $_has(2);
  @$pb.TagNumber(20)
  void clearNoDivers() => clearField(20);

  @$pb.TagNumber(40)
  $core.int get quantity => $_getIZ(3);
  @$pb.TagNumber(40)
  set quantity($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(40)
  $core.bool hasQuantity() => $_has(3);
  @$pb.TagNumber(40)
  void clearQuantity() => clearField(40);
}

class Reservation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Reservation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'reservation'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalDivers', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<Reservation_Room>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: Reservation_Room.create)
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Reservation._() : super();
  factory Reservation({
    $fixnum.Int64? id,
    $fixnum.Int64? tripId,
    $fixnum.Int64? diverId,
    $core.double? price,
    $fixnum.Int64? totalDivers,
    $core.Iterable<Reservation_Room>? rooms,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (tripId != null) {
      _result.tripId = tripId;
    }
    if (diverId != null) {
      _result.diverId = diverId;
    }
    if (price != null) {
      _result.price = price;
    }
    if (totalDivers != null) {
      _result.totalDivers = totalDivers;
    }
    if (rooms != null) {
      _result.rooms.addAll(rooms);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Reservation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reservation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reservation clone() => Reservation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reservation copyWith(void Function(Reservation) updates) => super.copyWith((message) => updates(message as Reservation)) as Reservation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reservation create() => Reservation._();
  Reservation createEmptyInstance() => create();
  static $pb.PbList<Reservation> createRepeated() => $pb.PbList<Reservation>();
  @$core.pragma('dart2js:noInline')
  static Reservation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reservation>(create);
  static Reservation? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $fixnum.Int64 get tripId => $_getI64(1);
  @$pb.TagNumber(10)
  set tripId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasTripId() => $_has(1);
  @$pb.TagNumber(10)
  void clearTripId() => clearField(10);

  @$pb.TagNumber(20)
  $fixnum.Int64 get diverId => $_getI64(2);
  @$pb.TagNumber(20)
  set diverId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasDiverId() => $_has(2);
  @$pb.TagNumber(20)
  void clearDiverId() => clearField(20);

  @$pb.TagNumber(30)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(30)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(30)
  void clearPrice() => clearField(30);

  @$pb.TagNumber(35)
  $fixnum.Int64 get totalDivers => $_getI64(4);
  @$pb.TagNumber(35)
  set totalDivers($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(35)
  $core.bool hasTotalDivers() => $_has(4);
  @$pb.TagNumber(35)
  void clearTotalDivers() => clearField(35);

  @$pb.TagNumber(40)
  $core.List<Reservation_Room> get rooms => $_getList(5);

  @$pb.TagNumber(50)
  $5.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(50)
  set createdAt($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(50)
  void clearCreatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(60)
  $5.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(60)
  set updatedAt($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(60)
  void clearUpdatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureUpdatedAt() => $_ensure(7);
}

class CreateReservationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateReservationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'reservation'), createEmptyInstance: create)
    ..aOM<Reservation>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservation', subBuilder: Reservation.create)
    ..hasRequiredFields = false
  ;

  CreateReservationRequest._() : super();
  factory CreateReservationRequest({
    Reservation? reservation,
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
  Reservation get reservation => $_getN(0);
  @$pb.TagNumber(1)
  set reservation(Reservation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReservation() => $_has(0);
  @$pb.TagNumber(1)
  void clearReservation() => clearField(1);
  @$pb.TagNumber(1)
  Reservation ensureReservation() => $_ensure(0);
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

