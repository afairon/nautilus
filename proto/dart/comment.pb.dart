///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $14;

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
    ..aOM<$14.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $14.TripComment.create)
    ..aOM<$14.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $14.HotelComment.create)
    ..aOM<$14.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $14.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  CreateCommentRequest._() : super();
  factory CreateCommentRequest({
    $14.TripComment? trip,
    $14.HotelComment? hotel,
    $14.LiveaboardComment? liveaboard,
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
  $14.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($14.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $14.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $14.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($14.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $14.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $14.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($14.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $14.LiveaboardComment ensureLiveaboard() => $_ensure(2);
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
    ..aOM<$14.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $14.TripComment.create)
    ..aOM<$14.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $14.HotelComment.create)
    ..aOM<$14.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $14.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  CreateCommentResponse._() : super();
  factory CreateCommentResponse({
    $14.TripComment? trip,
    $14.HotelComment? hotel,
    $14.LiveaboardComment? liveaboard,
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
  $14.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($14.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $14.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $14.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($14.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $14.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $14.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($14.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $14.LiveaboardComment ensureLiveaboard() => $_ensure(2);
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
    ..aOM<$14.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $14.TripComment.create)
    ..aOM<$14.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $14.HotelComment.create)
    ..aOM<$14.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $14.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  GetCommentRequest._() : super();
  factory GetCommentRequest({
    $14.TripComment? trip,
    $14.HotelComment? hotel,
    $14.LiveaboardComment? liveaboard,
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
  $14.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($14.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $14.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $14.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($14.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $14.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $14.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($14.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $14.LiveaboardComment ensureLiveaboard() => $_ensure(2);
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
    ..aOM<$14.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $14.TripComment.create)
    ..aOM<$14.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $14.HotelComment.create)
    ..aOM<$14.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $14.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  GetCommentResponse._() : super();
  factory GetCommentResponse({
    $14.TripComment? trip,
    $14.HotelComment? hotel,
    $14.LiveaboardComment? liveaboard,
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
  $14.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($14.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $14.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $14.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($14.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $14.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $14.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($14.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $14.LiveaboardComment ensureLiveaboard() => $_ensure(2);
}

enum UpdateCommentRequest_Type {
  trip, 
  hotel, 
  liveaboard, 
  notSet
}

class UpdateCommentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UpdateCommentRequest_Type> _UpdateCommentRequest_TypeByTag = {
    1 : UpdateCommentRequest_Type.trip,
    5 : UpdateCommentRequest_Type.hotel,
    10 : UpdateCommentRequest_Type.liveaboard,
    0 : UpdateCommentRequest_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateCommentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<$14.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $14.TripComment.create)
    ..aOM<$14.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $14.HotelComment.create)
    ..aOM<$14.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $14.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  UpdateCommentRequest._() : super();
  factory UpdateCommentRequest({
    $14.TripComment? trip,
    $14.HotelComment? hotel,
    $14.LiveaboardComment? liveaboard,
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
  factory UpdateCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCommentRequest clone() => UpdateCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCommentRequest copyWith(void Function(UpdateCommentRequest) updates) => super.copyWith((message) => updates(message as UpdateCommentRequest)) as UpdateCommentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateCommentRequest create() => UpdateCommentRequest._();
  UpdateCommentRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCommentRequest> createRepeated() => $pb.PbList<UpdateCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCommentRequest>(create);
  static UpdateCommentRequest? _defaultInstance;

  UpdateCommentRequest_Type whichType() => _UpdateCommentRequest_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $14.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($14.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $14.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $14.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($14.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $14.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $14.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($14.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $14.LiveaboardComment ensureLiveaboard() => $_ensure(2);
}

enum DeleteCommentRequest_Type {
  trip, 
  hotel, 
  liveaboard, 
  notSet
}

class DeleteCommentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, DeleteCommentRequest_Type> _DeleteCommentRequest_TypeByTag = {
    1 : DeleteCommentRequest_Type.trip,
    5 : DeleteCommentRequest_Type.hotel,
    10 : DeleteCommentRequest_Type.liveaboard,
    0 : DeleteCommentRequest_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteCommentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'comment'), createEmptyInstance: create)
    ..oo(0, [1, 5, 10])
    ..aOM<$14.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $14.TripComment.create)
    ..aOM<$14.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $14.HotelComment.create)
    ..aOM<$14.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $14.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  DeleteCommentRequest._() : super();
  factory DeleteCommentRequest({
    $14.TripComment? trip,
    $14.HotelComment? hotel,
    $14.LiveaboardComment? liveaboard,
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
  factory DeleteCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCommentRequest clone() => DeleteCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCommentRequest copyWith(void Function(DeleteCommentRequest) updates) => super.copyWith((message) => updates(message as DeleteCommentRequest)) as DeleteCommentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteCommentRequest create() => DeleteCommentRequest._();
  DeleteCommentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCommentRequest> createRepeated() => $pb.PbList<DeleteCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCommentRequest>(create);
  static DeleteCommentRequest? _defaultInstance;

  DeleteCommentRequest_Type whichType() => _DeleteCommentRequest_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $14.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($14.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $14.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $14.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($14.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $14.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $14.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($14.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $14.LiveaboardComment ensureLiveaboard() => $_ensure(2);
}

