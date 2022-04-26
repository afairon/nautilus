///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $13;

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
    ..aOM<$13.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.TripComment.create)
    ..aOM<$13.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $13.HotelComment.create)
    ..aOM<$13.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $13.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  CreateCommentRequest._() : super();
  factory CreateCommentRequest({
    $13.TripComment? trip,
    $13.HotelComment? hotel,
    $13.LiveaboardComment? liveaboard,
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
  $13.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($13.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $13.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($13.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $13.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $13.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($13.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $13.LiveaboardComment ensureLiveaboard() => $_ensure(2);
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
    ..aOM<$13.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.TripComment.create)
    ..aOM<$13.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $13.HotelComment.create)
    ..aOM<$13.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $13.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  CreateCommentResponse._() : super();
  factory CreateCommentResponse({
    $13.TripComment? trip,
    $13.HotelComment? hotel,
    $13.LiveaboardComment? liveaboard,
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
  $13.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($13.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $13.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($13.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $13.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $13.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($13.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $13.LiveaboardComment ensureLiveaboard() => $_ensure(2);
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
    ..aOM<$13.TripComment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.TripComment.create)
    ..aOM<$13.HotelComment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $13.HotelComment.create)
    ..aOM<$13.LiveaboardComment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $13.LiveaboardComment.create)
    ..hasRequiredFields = false
  ;

  DeleteCommentRequest._() : super();
  factory DeleteCommentRequest({
    $13.TripComment? trip,
    $13.HotelComment? hotel,
    $13.LiveaboardComment? liveaboard,
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
  $13.TripComment get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($13.TripComment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripComment ensureTrip() => $_ensure(0);

  @$pb.TagNumber(5)
  $13.HotelComment get hotel => $_getN(1);
  @$pb.TagNumber(5)
  set hotel($13.HotelComment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotel() => $_has(1);
  @$pb.TagNumber(5)
  void clearHotel() => clearField(5);
  @$pb.TagNumber(5)
  $13.HotelComment ensureHotel() => $_ensure(1);

  @$pb.TagNumber(10)
  $13.LiveaboardComment get liveaboard => $_getN(2);
  @$pb.TagNumber(10)
  set liveaboard($13.LiveaboardComment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(2);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $13.LiveaboardComment ensureLiveaboard() => $_ensure(2);
}

