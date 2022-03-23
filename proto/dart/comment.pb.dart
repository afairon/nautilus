///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $8;

enum CreateCommentRequest_Type {
  trip, 
  hotel, 
  liveaboard, 
  notSet
}

class CreateCommentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CreateCommentRequest_Type> _CreateCommentRequest_TypeByTag = {
    1 : CreateCommentRequest_Type.trip,
    5 : CreateCommentRequest_Type.hotel,
    10 : CreateCommentRequest_Type.liveaboard,
    0 : CreateCommentRequest_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateCommentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<$8.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $8.TripComment.create)
    ..aOM<$8.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $8.HotelComment.create)
    ..aOM<$8.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $8.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  CreateCommentRequest._() : super();
  factory CreateCommentRequest({
    $8.TripComment? trip,
    $8.HotelComment? hotel,
    $8.LiveaboardComment? liveaboard,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (hotel != null) {
      _result.hotel = hotel;
    }
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    return _result;
  }
  factory CreateCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCommentRequest clone() => CreateCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCommentRequest copyWith(void Function(CreateCommentRequest) updates) => super.copyWith((message) => updates(message as CreateCommentRequest)) as CreateCommentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateCommentRequest create() => CreateCommentRequest._();
  CreateCommentRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCommentRequest> createRepeated() => $pb.PbList<CreateCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCommentRequest>(create);
  static CreateCommentRequest? _defaultInstance;

  CreateCommentRequest_Type whichType() => _CreateCommentRequest_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $8.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($8.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $8.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $8.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($8.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $8.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $8.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($8.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $8.LiveaboardComment ensureLiveaboard() => $_ensure(2);
}

enum CreateCommentResponse_Type {
  trip, 
  hotel, 
  liveaboard, 
  notSet
}

class CreateCommentResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CreateCommentResponse_Type> _CreateCommentResponse_TypeByTag = {
    1 : CreateCommentResponse_Type.trip,
    5 : CreateCommentResponse_Type.hotel,
    10 : CreateCommentResponse_Type.liveaboard,
    0 : CreateCommentResponse_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateCommentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<$8.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $8.TripComment.create)
    ..aOM<$8.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $8.HotelComment.create)
    ..aOM<$8.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $8.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  CreateCommentResponse._() : super();
  factory CreateCommentResponse({
    $8.TripComment? trip,
    $8.HotelComment? hotel,
    $8.LiveaboardComment? liveaboard,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (hotel != null) {
      _result.hotel = hotel;
    }
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    return _result;
  }
  factory CreateCommentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCommentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCommentResponse clone() => CreateCommentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCommentResponse copyWith(void Function(CreateCommentResponse) updates) => super.copyWith((message) => updates(message as CreateCommentResponse)) as CreateCommentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateCommentResponse create() => CreateCommentResponse._();
  CreateCommentResponse createEmptyInstance() => create();
  static $pb.PbList<CreateCommentResponse> createRepeated() => $pb.PbList<CreateCommentResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateCommentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCommentResponse>(create);
  static CreateCommentResponse? _defaultInstance;

  CreateCommentResponse_Type whichType() => _CreateCommentResponse_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $8.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($8.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $8.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $8.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($8.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $8.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $8.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($8.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $8.LiveaboardComment ensureLiveaboard() => $_ensure(2);
}

class GetCommentRequest_Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommentRequest.Trip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetCommentRequest_Trip._() : super();
  factory GetCommentRequest_Trip({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetCommentRequest_Trip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommentRequest_Trip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommentRequest_Trip clone() => GetCommentRequest_Trip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommentRequest_Trip copyWith(void Function(GetCommentRequest_Trip) updates) => super.copyWith((message) => updates(message as GetCommentRequest_Trip)) as GetCommentRequest_Trip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest_Trip create() => GetCommentRequest_Trip._();
  GetCommentRequest_Trip createEmptyInstance() => create();
  static $pb.PbList<GetCommentRequest_Trip> createRepeated() => $pb.PbList<GetCommentRequest_Trip>();
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest_Trip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommentRequest_Trip>(create);
  static GetCommentRequest_Trip? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetCommentRequest_Hotel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommentRequest.Hotel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetCommentRequest_Hotel._() : super();
  factory GetCommentRequest_Hotel({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetCommentRequest_Hotel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommentRequest_Hotel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommentRequest_Hotel clone() => GetCommentRequest_Hotel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommentRequest_Hotel copyWith(void Function(GetCommentRequest_Hotel) updates) => super.copyWith((message) => updates(message as GetCommentRequest_Hotel)) as GetCommentRequest_Hotel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest_Hotel create() => GetCommentRequest_Hotel._();
  GetCommentRequest_Hotel createEmptyInstance() => create();
  static $pb.PbList<GetCommentRequest_Hotel> createRepeated() => $pb.PbList<GetCommentRequest_Hotel>();
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest_Hotel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommentRequest_Hotel>(create);
  static GetCommentRequest_Hotel? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetCommentRequest_Liveaboard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommentRequest.Liveaboard', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetCommentRequest_Liveaboard._() : super();
  factory GetCommentRequest_Liveaboard({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetCommentRequest_Liveaboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommentRequest_Liveaboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommentRequest_Liveaboard clone() => GetCommentRequest_Liveaboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommentRequest_Liveaboard copyWith(void Function(GetCommentRequest_Liveaboard) updates) => super.copyWith((message) => updates(message as GetCommentRequest_Liveaboard)) as GetCommentRequest_Liveaboard; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest_Liveaboard create() => GetCommentRequest_Liveaboard._();
  GetCommentRequest_Liveaboard createEmptyInstance() => create();
  static $pb.PbList<GetCommentRequest_Liveaboard> createRepeated() => $pb.PbList<GetCommentRequest_Liveaboard>();
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest_Liveaboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommentRequest_Liveaboard>(create);
  static GetCommentRequest_Liveaboard? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

enum GetCommentRequest_Type {
  trip, 
  hotel, 
  liveaboard, 
  notSet
}

class GetCommentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetCommentRequest_Type> _GetCommentRequest_TypeByTag = {
    1 : GetCommentRequest_Type.trip,
    5 : GetCommentRequest_Type.hotel,
    10 : GetCommentRequest_Type.liveaboard,
    0 : GetCommentRequest_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<GetCommentRequest_Trip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: GetCommentRequest_Trip.create)
    ..aOM<GetCommentRequest_Hotel>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: GetCommentRequest_Hotel.create)
    ..aOM<GetCommentRequest_Liveaboard>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: GetCommentRequest_Liveaboard.create)
    ..hasRequiredFields = false
  ;

  GetCommentRequest._() : super();
  factory GetCommentRequest({
    GetCommentRequest_Trip? trip,
    GetCommentRequest_Hotel? hotel,
    GetCommentRequest_Liveaboard? liveaboard,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (hotel != null) {
      _result.hotel = hotel;
    }
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    return _result;
  }
  factory GetCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommentRequest clone() => GetCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommentRequest copyWith(void Function(GetCommentRequest) updates) => super.copyWith((message) => updates(message as GetCommentRequest)) as GetCommentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest create() => GetCommentRequest._();
  GetCommentRequest createEmptyInstance() => create();
  static $pb.PbList<GetCommentRequest> createRepeated() => $pb.PbList<GetCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommentRequest>(create);
  static GetCommentRequest? _defaultInstance;

  GetCommentRequest_Type whichType() => _GetCommentRequest_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GetCommentRequest_Trip get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip(GetCommentRequest_Trip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  GetCommentRequest_Trip ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  GetCommentRequest_Hotel get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel(GetCommentRequest_Hotel v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  GetCommentRequest_Hotel ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  GetCommentRequest_Liveaboard get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard(GetCommentRequest_Liveaboard v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  GetCommentRequest_Liveaboard ensureLiveaboard() => $_ensure(2);
}

enum GetCommentResponse_Type {
  trip, 
  hotel, 
  liveaboard, 
  notSet
}

class GetCommentResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetCommentResponse_Type> _GetCommentResponse_TypeByTag = {
    1 : GetCommentResponse_Type.trip,
    5 : GetCommentResponse_Type.hotel,
    10 : GetCommentResponse_Type.liveaboard,
    0 : GetCommentResponse_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<$8.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $8.TripComment.create)
    ..aOM<$8.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $8.HotelComment.create)
    ..aOM<$8.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $8.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  GetCommentResponse._() : super();
  factory GetCommentResponse({
    $8.TripComment? trip,
    $8.HotelComment? hotel,
    $8.LiveaboardComment? liveaboard,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (hotel != null) {
      _result.hotel = hotel;
    }
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    return _result;
  }
  factory GetCommentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommentResponse clone() => GetCommentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommentResponse copyWith(void Function(GetCommentResponse) updates) => super.copyWith((message) => updates(message as GetCommentResponse)) as GetCommentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommentResponse create() => GetCommentResponse._();
  GetCommentResponse createEmptyInstance() => create();
  static $pb.PbList<GetCommentResponse> createRepeated() => $pb.PbList<GetCommentResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCommentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommentResponse>(create);
  static GetCommentResponse? _defaultInstance;

  GetCommentResponse_Type whichType() => _GetCommentResponse_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $8.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($8.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $8.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $8.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($8.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $8.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $8.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($8.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $8.LiveaboardComment ensureLiveaboard() => $_ensure(2);
}

