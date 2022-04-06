///
//  Generated code. Do not modify.
//  source: roomtype.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $13;

enum ListRoomTypesByTripRequest_Id {
  hotelId, 
  liveaboardId, 
  notSet
}

class ListRoomTypesByTripRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ListRoomTypesByTripRequest_Id> _ListRoomTypesByTripRequest_IdByTag = {
    1 : ListRoomTypesByTripRequest_Id.hotelId,
    10 : ListRoomTypesByTripRequest_Id.liveaboardId,
    0 : ListRoomTypesByTripRequest_Id.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRoomTypesByTripRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'roomtype'), createEmptyInstance: create)
    ..oo(0, [1, 10])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListRoomTypesByTripRequest._() : super();
  factory ListRoomTypesByTripRequest({
    $fixnum.Int64? hotelId,
    $fixnum.Int64? liveaboardId,
    $fixnum.Int64? tripId,
    $fixnum.Int64? limit,
    $fixnum.Int64? offset,
  }) {
    final _result = create();
    if (hotelId != null) {
      _result.hotelId = hotelId;
    }
    if (liveaboardId != null) {
      _result.liveaboardId = liveaboardId;
    }
    if (tripId != null) {
      _result.tripId = tripId;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory ListRoomTypesByTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRoomTypesByTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRoomTypesByTripRequest clone() => ListRoomTypesByTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRoomTypesByTripRequest copyWith(void Function(ListRoomTypesByTripRequest) updates) => super.copyWith((message) => updates(message as ListRoomTypesByTripRequest)) as ListRoomTypesByTripRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesByTripRequest create() => ListRoomTypesByTripRequest._();
  ListRoomTypesByTripRequest createEmptyInstance() => create();
  static $pb.PbList<ListRoomTypesByTripRequest> createRepeated() => $pb.PbList<ListRoomTypesByTripRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesByTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRoomTypesByTripRequest>(create);
  static ListRoomTypesByTripRequest? _defaultInstance;

  ListRoomTypesByTripRequest_Id whichId() => _ListRoomTypesByTripRequest_IdByTag[$_whichOneof(0)]!;
  void clearId() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get hotelId => $_getI64(0);
  @$pb.TagNumber(1)
  set hotelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotelId() => clearField(1);

  @$pb.TagNumber(10)
  $fixnum.Int64 get liveaboardId => $_getI64(1);
  @$pb.TagNumber(10)
  set liveaboardId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboardId() => $_has(1);
  @$pb.TagNumber(10)
  void clearLiveaboardId() => clearField(10);

  @$pb.TagNumber(15)
  $fixnum.Int64 get tripId => $_getI64(2);
  @$pb.TagNumber(15)
  set tripId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(15)
  $core.bool hasTripId() => $_has(2);
  @$pb.TagNumber(15)
  void clearTripId() => clearField(15);

  @$pb.TagNumber(20)
  $fixnum.Int64 get limit => $_getI64(3);
  @$pb.TagNumber(20)
  set limit($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(20)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(20)
  void clearLimit() => clearField(20);

  @$pb.TagNumber(25)
  $fixnum.Int64 get offset => $_getI64(4);
  @$pb.TagNumber(25)
  set offset($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(25)
  $core.bool hasOffset() => $_has(4);
  @$pb.TagNumber(25)
  void clearOffset() => clearField(25);
}

class ListRoomTypesByTripResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRoomTypesByTripResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'roomtype'), createEmptyInstance: create)
    ..aOM<$13.RoomType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomType', subBuilder: $13.RoomType.create)
    ..hasRequiredFields = false
  ;

  ListRoomTypesByTripResponse._() : super();
  factory ListRoomTypesByTripResponse({
    $13.RoomType? roomType,
  }) {
    final _result = create();
    if (roomType != null) {
      _result.roomType = roomType;
    }
    return _result;
  }
  factory ListRoomTypesByTripResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRoomTypesByTripResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRoomTypesByTripResponse clone() => ListRoomTypesByTripResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRoomTypesByTripResponse copyWith(void Function(ListRoomTypesByTripResponse) updates) => super.copyWith((message) => updates(message as ListRoomTypesByTripResponse)) as ListRoomTypesByTripResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesByTripResponse create() => ListRoomTypesByTripResponse._();
  ListRoomTypesByTripResponse createEmptyInstance() => create();
  static $pb.PbList<ListRoomTypesByTripResponse> createRepeated() => $pb.PbList<ListRoomTypesByTripResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesByTripResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRoomTypesByTripResponse>(create);
  static ListRoomTypesByTripResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.RoomType get roomType => $_getN(0);
  @$pb.TagNumber(1)
  set roomType($13.RoomType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomType() => clearField(1);
  @$pb.TagNumber(1)
  $13.RoomType ensureRoomType() => $_ensure(0);
}

