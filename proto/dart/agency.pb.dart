///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $13;
import 'google/protobuf/timestamp.pb.dart' as $12;

import 'model.pbenum.dart' as $13;

class AddDiveMasterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddDiveMasterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.DiveMaster>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMaster', subBuilder: $13.DiveMaster.create)
    ..hasRequiredFields = false
  ;

  AddDiveMasterRequest._() : super();
  factory AddDiveMasterRequest({
    $13.DiveMaster? diveMaster,
  }) {
    final _result = create();
    if (diveMaster != null) {
      _result.diveMaster = diveMaster;
    }
    return _result;
  }
  factory AddDiveMasterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDiveMasterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDiveMasterRequest clone() => AddDiveMasterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDiveMasterRequest copyWith(void Function(AddDiveMasterRequest) updates) => super.copyWith((message) => updates(message as AddDiveMasterRequest)) as AddDiveMasterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddDiveMasterRequest create() => AddDiveMasterRequest._();
  AddDiveMasterRequest createEmptyInstance() => create();
  static $pb.PbList<AddDiveMasterRequest> createRepeated() => $pb.PbList<AddDiveMasterRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDiveMasterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDiveMasterRequest>(create);
  static AddDiveMasterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.DiveMaster get diveMaster => $_getN(0);
  @$pb.TagNumber(1)
  set diveMaster($13.DiveMaster v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiveMaster() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiveMaster() => clearField(1);
  @$pb.TagNumber(1)
  $13.DiveMaster ensureDiveMaster() => $_ensure(0);
}

class AddStaffRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddStaffRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Staff>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staff', subBuilder: $13.Staff.create)
    ..hasRequiredFields = false
  ;

  AddStaffRequest._() : super();
  factory AddStaffRequest({
    $13.Staff? staff,
  }) {
    final _result = create();
    if (staff != null) {
      _result.staff = staff;
    }
    return _result;
  }
  factory AddStaffRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddStaffRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddStaffRequest clone() => AddStaffRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddStaffRequest copyWith(void Function(AddStaffRequest) updates) => super.copyWith((message) => updates(message as AddStaffRequest)) as AddStaffRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddStaffRequest create() => AddStaffRequest._();
  AddStaffRequest createEmptyInstance() => create();
  static $pb.PbList<AddStaffRequest> createRepeated() => $pb.PbList<AddStaffRequest>();
  @$core.pragma('dart2js:noInline')
  static AddStaffRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddStaffRequest>(create);
  static AddStaffRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Staff get staff => $_getN(0);
  @$pb.TagNumber(1)
  set staff($13.Staff v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStaff() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaff() => clearField(1);
  @$pb.TagNumber(1)
  $13.Staff ensureStaff() => $_ensure(0);
}

class AddTripTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddTripTemplateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.TripTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplate', subBuilder: $13.TripTemplate.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddTripTemplateRequest._() : super();
  factory AddTripTemplateRequest({
    $13.TripTemplate? tripTemplate,
    $fixnum.Int64? agencyId,
  }) {
    final _result = create();
    if (tripTemplate != null) {
      _result.tripTemplate = tripTemplate;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
    }
    return _result;
  }
  factory AddTripTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTripTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTripTemplateRequest clone() => AddTripTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTripTemplateRequest copyWith(void Function(AddTripTemplateRequest) updates) => super.copyWith((message) => updates(message as AddTripTemplateRequest)) as AddTripTemplateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTripTemplateRequest create() => AddTripTemplateRequest._();
  AddTripTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<AddTripTemplateRequest> createRepeated() => $pb.PbList<AddTripTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static AddTripTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTripTemplateRequest>(create);
  static AddTripTemplateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.TripTemplate get tripTemplate => $_getN(0);
  @$pb.TagNumber(1)
  set tripTemplate($13.TripTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripTemplate() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripTemplate ensureTripTemplate() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get agencyId => $_getI64(1);
  @$pb.TagNumber(2)
  set agencyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgencyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgencyId() => clearField(2);
}

class AddTripRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddTripRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.TripWithTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.TripWithTemplate.create)
    ..hasRequiredFields = false
  ;

  AddTripRequest._() : super();
  factory AddTripRequest({
    $13.TripWithTemplate? trip,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    return _result;
  }
  factory AddTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTripRequest clone() => AddTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTripRequest copyWith(void Function(AddTripRequest) updates) => super.copyWith((message) => updates(message as AddTripRequest)) as AddTripRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTripRequest create() => AddTripRequest._();
  AddTripRequest createEmptyInstance() => create();
  static $pb.PbList<AddTripRequest> createRepeated() => $pb.PbList<AddTripRequest>();
  @$core.pragma('dart2js:noInline')
  static AddTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTripRequest>(create);
  static AddTripRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.TripWithTemplate get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($13.TripWithTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripWithTemplate ensureTrip() => $_ensure(0);
}

class AddDivingBoatRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddDivingBoatRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Boat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divingBoat', subBuilder: $13.Boat.create)
    ..hasRequiredFields = false
  ;

  AddDivingBoatRequest._() : super();
  factory AddDivingBoatRequest({
    $13.Boat? divingBoat,
  }) {
    final _result = create();
    if (divingBoat != null) {
      _result.divingBoat = divingBoat;
    }
    return _result;
  }
  factory AddDivingBoatRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDivingBoatRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDivingBoatRequest clone() => AddDivingBoatRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDivingBoatRequest copyWith(void Function(AddDivingBoatRequest) updates) => super.copyWith((message) => updates(message as AddDivingBoatRequest)) as AddDivingBoatRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddDivingBoatRequest create() => AddDivingBoatRequest._();
  AddDivingBoatRequest createEmptyInstance() => create();
  static $pb.PbList<AddDivingBoatRequest> createRepeated() => $pb.PbList<AddDivingBoatRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDivingBoatRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDivingBoatRequest>(create);
  static AddDivingBoatRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Boat get divingBoat => $_getN(0);
  @$pb.TagNumber(1)
  set divingBoat($13.Boat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDivingBoat() => $_has(0);
  @$pb.TagNumber(1)
  void clearDivingBoat() => clearField(1);
  @$pb.TagNumber(1)
  $13.Boat ensureDivingBoat() => $_ensure(0);
}

class AddHotelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddHotelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Hotel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $13.Hotel.create)
    ..hasRequiredFields = false
  ;

  AddHotelRequest._() : super();
  factory AddHotelRequest({
    $13.Hotel? hotel,
  }) {
    final _result = create();
    if (hotel != null) {
      _result.hotel = hotel;
    }
    return _result;
  }
  factory AddHotelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddHotelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddHotelRequest clone() => AddHotelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddHotelRequest copyWith(void Function(AddHotelRequest) updates) => super.copyWith((message) => updates(message as AddHotelRequest)) as AddHotelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddHotelRequest create() => AddHotelRequest._();
  AddHotelRequest createEmptyInstance() => create();
  static $pb.PbList<AddHotelRequest> createRepeated() => $pb.PbList<AddHotelRequest>();
  @$core.pragma('dart2js:noInline')
  static AddHotelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddHotelRequest>(create);
  static AddHotelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Hotel get hotel => $_getN(0);
  @$pb.TagNumber(1)
  set hotel($13.Hotel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotel() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotel() => clearField(1);
  @$pb.TagNumber(1)
  $13.Hotel ensureHotel() => $_ensure(0);
}

class AddLiveaboardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddLiveaboardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Liveaboard>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $13.Liveaboard.create)
    ..hasRequiredFields = false
  ;

  AddLiveaboardRequest._() : super();
  factory AddLiveaboardRequest({
    $13.Liveaboard? liveaboard,
  }) {
    final _result = create();
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    return _result;
  }
  factory AddLiveaboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddLiveaboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddLiveaboardRequest clone() => AddLiveaboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddLiveaboardRequest copyWith(void Function(AddLiveaboardRequest) updates) => super.copyWith((message) => updates(message as AddLiveaboardRequest)) as AddLiveaboardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddLiveaboardRequest create() => AddLiveaboardRequest._();
  AddLiveaboardRequest createEmptyInstance() => create();
  static $pb.PbList<AddLiveaboardRequest> createRepeated() => $pb.PbList<AddLiveaboardRequest>();
  @$core.pragma('dart2js:noInline')
  static AddLiveaboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddLiveaboardRequest>(create);
  static AddLiveaboardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Liveaboard get liveaboard => $_getN(0);
  @$pb.TagNumber(1)
  set liveaboard($13.Liveaboard v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiveaboard() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveaboard() => clearField(1);
  @$pb.TagNumber(1)
  $13.Liveaboard ensureLiveaboard() => $_ensure(0);
}

class ListBoatsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListBoatsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListBoatsRequest._() : super();
  factory ListBoatsRequest({
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
  factory ListBoatsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBoatsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBoatsRequest clone() => ListBoatsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBoatsRequest copyWith(void Function(ListBoatsRequest) updates) => super.copyWith((message) => updates(message as ListBoatsRequest)) as ListBoatsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListBoatsRequest create() => ListBoatsRequest._();
  ListBoatsRequest createEmptyInstance() => create();
  static $pb.PbList<ListBoatsRequest> createRepeated() => $pb.PbList<ListBoatsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListBoatsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBoatsRequest>(create);
  static ListBoatsRequest? _defaultInstance;

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

class ListBoatsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListBoatsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Boat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boat', subBuilder: $13.Boat.create)
    ..hasRequiredFields = false
  ;

  ListBoatsResponse._() : super();
  factory ListBoatsResponse({
    $13.Boat? boat,
  }) {
    final _result = create();
    if (boat != null) {
      _result.boat = boat;
    }
    return _result;
  }
  factory ListBoatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBoatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBoatsResponse clone() => ListBoatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBoatsResponse copyWith(void Function(ListBoatsResponse) updates) => super.copyWith((message) => updates(message as ListBoatsResponse)) as ListBoatsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListBoatsResponse create() => ListBoatsResponse._();
  ListBoatsResponse createEmptyInstance() => create();
  static $pb.PbList<ListBoatsResponse> createRepeated() => $pb.PbList<ListBoatsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListBoatsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBoatsResponse>(create);
  static ListBoatsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Boat get boat => $_getN(0);
  @$pb.TagNumber(1)
  set boat($13.Boat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoat() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoat() => clearField(1);
  @$pb.TagNumber(1)
  $13.Boat ensureBoat() => $_ensure(0);
}

class ListDiveMastersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDiveMastersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListDiveMastersRequest._() : super();
  factory ListDiveMastersRequest({
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
  factory ListDiveMastersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDiveMastersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDiveMastersRequest clone() => ListDiveMastersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDiveMastersRequest copyWith(void Function(ListDiveMastersRequest) updates) => super.copyWith((message) => updates(message as ListDiveMastersRequest)) as ListDiveMastersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDiveMastersRequest create() => ListDiveMastersRequest._();
  ListDiveMastersRequest createEmptyInstance() => create();
  static $pb.PbList<ListDiveMastersRequest> createRepeated() => $pb.PbList<ListDiveMastersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDiveMastersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDiveMastersRequest>(create);
  static ListDiveMastersRequest? _defaultInstance;

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

class ListDiveMastersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDiveMastersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.DiveMaster>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMaster', subBuilder: $13.DiveMaster.create)
    ..hasRequiredFields = false
  ;

  ListDiveMastersResponse._() : super();
  factory ListDiveMastersResponse({
    $13.DiveMaster? diveMaster,
  }) {
    final _result = create();
    if (diveMaster != null) {
      _result.diveMaster = diveMaster;
    }
    return _result;
  }
  factory ListDiveMastersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDiveMastersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDiveMastersResponse clone() => ListDiveMastersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDiveMastersResponse copyWith(void Function(ListDiveMastersResponse) updates) => super.copyWith((message) => updates(message as ListDiveMastersResponse)) as ListDiveMastersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDiveMastersResponse create() => ListDiveMastersResponse._();
  ListDiveMastersResponse createEmptyInstance() => create();
  static $pb.PbList<ListDiveMastersResponse> createRepeated() => $pb.PbList<ListDiveMastersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDiveMastersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDiveMastersResponse>(create);
  static ListDiveMastersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.DiveMaster get diveMaster => $_getN(0);
  @$pb.TagNumber(1)
  set diveMaster($13.DiveMaster v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiveMaster() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiveMaster() => clearField(1);
  @$pb.TagNumber(1)
  $13.DiveMaster ensureDiveMaster() => $_ensure(0);
}

class ListHotelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListHotelsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListHotelsRequest._() : super();
  factory ListHotelsRequest({
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
  factory ListHotelsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHotelsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHotelsRequest clone() => ListHotelsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHotelsRequest copyWith(void Function(ListHotelsRequest) updates) => super.copyWith((message) => updates(message as ListHotelsRequest)) as ListHotelsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHotelsRequest create() => ListHotelsRequest._();
  ListHotelsRequest createEmptyInstance() => create();
  static $pb.PbList<ListHotelsRequest> createRepeated() => $pb.PbList<ListHotelsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListHotelsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHotelsRequest>(create);
  static ListHotelsRequest? _defaultInstance;

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

class ListHotelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListHotelsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Hotel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $13.Hotel.create)
    ..hasRequiredFields = false
  ;

  ListHotelsResponse._() : super();
  factory ListHotelsResponse({
    $13.Hotel? hotel,
  }) {
    final _result = create();
    if (hotel != null) {
      _result.hotel = hotel;
    }
    return _result;
  }
  factory ListHotelsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHotelsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHotelsResponse clone() => ListHotelsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHotelsResponse copyWith(void Function(ListHotelsResponse) updates) => super.copyWith((message) => updates(message as ListHotelsResponse)) as ListHotelsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHotelsResponse create() => ListHotelsResponse._();
  ListHotelsResponse createEmptyInstance() => create();
  static $pb.PbList<ListHotelsResponse> createRepeated() => $pb.PbList<ListHotelsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListHotelsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHotelsResponse>(create);
  static ListHotelsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Hotel get hotel => $_getN(0);
  @$pb.TagNumber(1)
  set hotel($13.Hotel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotel() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotel() => clearField(1);
  @$pb.TagNumber(1)
  $13.Hotel ensureHotel() => $_ensure(0);
}

class ListLiveaboardsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLiveaboardsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListLiveaboardsRequest._() : super();
  factory ListLiveaboardsRequest({
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
  factory ListLiveaboardsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLiveaboardsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLiveaboardsRequest clone() => ListLiveaboardsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLiveaboardsRequest copyWith(void Function(ListLiveaboardsRequest) updates) => super.copyWith((message) => updates(message as ListLiveaboardsRequest)) as ListLiveaboardsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLiveaboardsRequest create() => ListLiveaboardsRequest._();
  ListLiveaboardsRequest createEmptyInstance() => create();
  static $pb.PbList<ListLiveaboardsRequest> createRepeated() => $pb.PbList<ListLiveaboardsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListLiveaboardsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLiveaboardsRequest>(create);
  static ListLiveaboardsRequest? _defaultInstance;

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

class ListLiveaboardsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLiveaboardsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Liveaboard>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $13.Liveaboard.create)
    ..hasRequiredFields = false
  ;

  ListLiveaboardsResponse._() : super();
  factory ListLiveaboardsResponse({
    $13.Liveaboard? liveaboard,
  }) {
    final _result = create();
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    return _result;
  }
  factory ListLiveaboardsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLiveaboardsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLiveaboardsResponse clone() => ListLiveaboardsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLiveaboardsResponse copyWith(void Function(ListLiveaboardsResponse) updates) => super.copyWith((message) => updates(message as ListLiveaboardsResponse)) as ListLiveaboardsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLiveaboardsResponse create() => ListLiveaboardsResponse._();
  ListLiveaboardsResponse createEmptyInstance() => create();
  static $pb.PbList<ListLiveaboardsResponse> createRepeated() => $pb.PbList<ListLiveaboardsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListLiveaboardsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLiveaboardsResponse>(create);
  static ListLiveaboardsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Liveaboard get liveaboard => $_getN(0);
  @$pb.TagNumber(1)
  set liveaboard($13.Liveaboard v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiveaboard() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveaboard() => clearField(1);
  @$pb.TagNumber(1)
  $13.Liveaboard ensureLiveaboard() => $_ensure(0);
}

class ListStaffsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListStaffsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListStaffsRequest._() : super();
  factory ListStaffsRequest({
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
  factory ListStaffsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStaffsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStaffsRequest clone() => ListStaffsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStaffsRequest copyWith(void Function(ListStaffsRequest) updates) => super.copyWith((message) => updates(message as ListStaffsRequest)) as ListStaffsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListStaffsRequest create() => ListStaffsRequest._();
  ListStaffsRequest createEmptyInstance() => create();
  static $pb.PbList<ListStaffsRequest> createRepeated() => $pb.PbList<ListStaffsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStaffsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStaffsRequest>(create);
  static ListStaffsRequest? _defaultInstance;

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

class ListStaffsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListStaffsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Staff>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staff', subBuilder: $13.Staff.create)
    ..hasRequiredFields = false
  ;

  ListStaffsResponse._() : super();
  factory ListStaffsResponse({
    $13.Staff? staff,
  }) {
    final _result = create();
    if (staff != null) {
      _result.staff = staff;
    }
    return _result;
  }
  factory ListStaffsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStaffsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStaffsResponse clone() => ListStaffsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStaffsResponse copyWith(void Function(ListStaffsResponse) updates) => super.copyWith((message) => updates(message as ListStaffsResponse)) as ListStaffsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListStaffsResponse create() => ListStaffsResponse._();
  ListStaffsResponse createEmptyInstance() => create();
  static $pb.PbList<ListStaffsResponse> createRepeated() => $pb.PbList<ListStaffsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStaffsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStaffsResponse>(create);
  static ListStaffsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Staff get staff => $_getN(0);
  @$pb.TagNumber(1)
  set staff($13.Staff v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStaff() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaff() => clearField(1);
  @$pb.TagNumber(1)
  $13.Staff ensureStaff() => $_ensure(0);
}

class ListTripTemplatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripTemplatesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListTripTemplatesRequest._() : super();
  factory ListTripTemplatesRequest({
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
  factory ListTripTemplatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripTemplatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripTemplatesRequest clone() => ListTripTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripTemplatesRequest copyWith(void Function(ListTripTemplatesRequest) updates) => super.copyWith((message) => updates(message as ListTripTemplatesRequest)) as ListTripTemplatesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripTemplatesRequest create() => ListTripTemplatesRequest._();
  ListTripTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<ListTripTemplatesRequest> createRepeated() => $pb.PbList<ListTripTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListTripTemplatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripTemplatesRequest>(create);
  static ListTripTemplatesRequest? _defaultInstance;

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

class ListTripTemplatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripTemplatesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.TripTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'template', subBuilder: $13.TripTemplate.create)
    ..hasRequiredFields = false
  ;

  ListTripTemplatesResponse._() : super();
  factory ListTripTemplatesResponse({
    $13.TripTemplate? template,
  }) {
    final _result = create();
    if (template != null) {
      _result.template = template;
    }
    return _result;
  }
  factory ListTripTemplatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripTemplatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripTemplatesResponse clone() => ListTripTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripTemplatesResponse copyWith(void Function(ListTripTemplatesResponse) updates) => super.copyWith((message) => updates(message as ListTripTemplatesResponse)) as ListTripTemplatesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripTemplatesResponse create() => ListTripTemplatesResponse._();
  ListTripTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<ListTripTemplatesResponse> createRepeated() => $pb.PbList<ListTripTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTripTemplatesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripTemplatesResponse>(create);
  static ListTripTemplatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.TripTemplate get template => $_getN(0);
  @$pb.TagNumber(1)
  set template($13.TripTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplate() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripTemplate ensureTemplate() => $_ensure(0);
}

class ListTripsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListTripsRequest._() : super();
  factory ListTripsRequest({
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
  factory ListTripsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripsRequest clone() => ListTripsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripsRequest copyWith(void Function(ListTripsRequest) updates) => super.copyWith((message) => updates(message as ListTripsRequest)) as ListTripsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripsRequest create() => ListTripsRequest._();
  ListTripsRequest createEmptyInstance() => create();
  static $pb.PbList<ListTripsRequest> createRepeated() => $pb.PbList<ListTripsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListTripsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripsRequest>(create);
  static ListTripsRequest? _defaultInstance;

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

class ListTripsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Trip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.Trip.create)
    ..hasRequiredFields = false
  ;

  ListTripsResponse._() : super();
  factory ListTripsResponse({
    $13.Trip? trip,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    return _result;
  }
  factory ListTripsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripsResponse clone() => ListTripsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripsResponse copyWith(void Function(ListTripsResponse) updates) => super.copyWith((message) => updates(message as ListTripsResponse)) as ListTripsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripsResponse create() => ListTripsResponse._();
  ListTripsResponse createEmptyInstance() => create();
  static $pb.PbList<ListTripsResponse> createRepeated() => $pb.PbList<ListTripsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTripsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripsResponse>(create);
  static ListTripsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Trip get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($13.Trip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $13.Trip ensureTrip() => $_ensure(0);
}

class ListTripsWithTemplatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsWithTemplatesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListTripsWithTemplatesRequest._() : super();
  factory ListTripsWithTemplatesRequest({
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
  factory ListTripsWithTemplatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripsWithTemplatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesRequest clone() => ListTripsWithTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesRequest copyWith(void Function(ListTripsWithTemplatesRequest) updates) => super.copyWith((message) => updates(message as ListTripsWithTemplatesRequest)) as ListTripsWithTemplatesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesRequest create() => ListTripsWithTemplatesRequest._();
  ListTripsWithTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<ListTripsWithTemplatesRequest> createRepeated() => $pb.PbList<ListTripsWithTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripsWithTemplatesRequest>(create);
  static ListTripsWithTemplatesRequest? _defaultInstance;

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

class ListTripsWithTemplatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsWithTemplatesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.TripWithTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.TripWithTemplate.create)
    ..hasRequiredFields = false
  ;

  ListTripsWithTemplatesResponse._() : super();
  factory ListTripsWithTemplatesResponse({
    $13.TripWithTemplate? trip,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    return _result;
  }
  factory ListTripsWithTemplatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripsWithTemplatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesResponse clone() => ListTripsWithTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesResponse copyWith(void Function(ListTripsWithTemplatesResponse) updates) => super.copyWith((message) => updates(message as ListTripsWithTemplatesResponse)) as ListTripsWithTemplatesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesResponse create() => ListTripsWithTemplatesResponse._();
  ListTripsWithTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<ListTripsWithTemplatesResponse> createRepeated() => $pb.PbList<ListTripsWithTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripsWithTemplatesResponse>(create);
  static ListTripsWithTemplatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.TripWithTemplate get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($13.TripWithTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripWithTemplate ensureTrip() => $_ensure(0);
}

enum ListRoomTypesRequest_Id {
  hotelId, 
  liveaboardId, 
  notSet
}

class ListRoomTypesRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ListRoomTypesRequest_Id> _ListRoomTypesRequest_IdByTag = {
    1 : ListRoomTypesRequest_Id.hotelId,
    10 : ListRoomTypesRequest_Id.liveaboardId,
    0 : ListRoomTypesRequest_Id.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRoomTypesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..oo(0, [1, 10])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListRoomTypesRequest._() : super();
  factory ListRoomTypesRequest({
    $fixnum.Int64? hotelId,
    $fixnum.Int64? liveaboardId,
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
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory ListRoomTypesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRoomTypesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRoomTypesRequest clone() => ListRoomTypesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRoomTypesRequest copyWith(void Function(ListRoomTypesRequest) updates) => super.copyWith((message) => updates(message as ListRoomTypesRequest)) as ListRoomTypesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesRequest create() => ListRoomTypesRequest._();
  ListRoomTypesRequest createEmptyInstance() => create();
  static $pb.PbList<ListRoomTypesRequest> createRepeated() => $pb.PbList<ListRoomTypesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRoomTypesRequest>(create);
  static ListRoomTypesRequest? _defaultInstance;

  ListRoomTypesRequest_Id whichId() => _ListRoomTypesRequest_IdByTag[$_whichOneof(0)]!;
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

  @$pb.TagNumber(20)
  $fixnum.Int64 get limit => $_getI64(2);
  @$pb.TagNumber(20)
  set limit($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(20)
  void clearLimit() => clearField(20);

  @$pb.TagNumber(25)
  $fixnum.Int64 get offset => $_getI64(3);
  @$pb.TagNumber(25)
  set offset($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(25)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(25)
  void clearOffset() => clearField(25);
}

class ListRoomTypesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRoomTypesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.RoomType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomType', subBuilder: $13.RoomType.create)
    ..hasRequiredFields = false
  ;

  ListRoomTypesResponse._() : super();
  factory ListRoomTypesResponse({
    $13.RoomType? roomType,
  }) {
    final _result = create();
    if (roomType != null) {
      _result.roomType = roomType;
    }
    return _result;
  }
  factory ListRoomTypesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRoomTypesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRoomTypesResponse clone() => ListRoomTypesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRoomTypesResponse copyWith(void Function(ListRoomTypesResponse) updates) => super.copyWith((message) => updates(message as ListRoomTypesResponse)) as ListRoomTypesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesResponse create() => ListRoomTypesResponse._();
  ListRoomTypesResponse createEmptyInstance() => create();
  static $pb.PbList<ListRoomTypesResponse> createRepeated() => $pb.PbList<ListRoomTypesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRoomTypesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRoomTypesResponse>(create);
  static ListRoomTypesResponse? _defaultInstance;

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

enum SearchTripsOptions_LocationFilter {
  country, 
  city, 
  region, 
  notSet
}

class SearchTripsOptions extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SearchTripsOptions_LocationFilter> _SearchTripsOptions_LocationFilterByTag = {
    1 : SearchTripsOptions_LocationFilter.country,
    2 : SearchTripsOptions_LocationFilter.city,
    3 : SearchTripsOptions_LocationFilter.region,
    0 : SearchTripsOptions_LocationFilter.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchTripsOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divers', $pb.PbFieldType.OU3)
    ..e<$13.TripType>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: $13.TripType.ONSHORE, valueOf: $13.TripType.valueOf, enumValues: $13.TripType.values)
    ..aOM<$12.Timestamp>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', subBuilder: $12.Timestamp.create)
    ..aOM<$12.Timestamp>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', subBuilder: $12.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SearchTripsOptions._() : super();
  factory SearchTripsOptions({
    $core.String? country,
    $core.String? city,
    $core.String? region,
    $core.int? divers,
    $13.TripType? tripType,
    $12.Timestamp? startDate,
    $12.Timestamp? endDate,
  }) {
    final _result = create();
    if (country != null) {
      _result.country = country;
    }
    if (city != null) {
      _result.city = city;
    }
    if (region != null) {
      _result.region = region;
    }
    if (divers != null) {
      _result.divers = divers;
    }
    if (tripType != null) {
      _result.tripType = tripType;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    return _result;
  }
  factory SearchTripsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchTripsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchTripsOptions clone() => SearchTripsOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchTripsOptions copyWith(void Function(SearchTripsOptions) updates) => super.copyWith((message) => updates(message as SearchTripsOptions)) as SearchTripsOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchTripsOptions create() => SearchTripsOptions._();
  SearchTripsOptions createEmptyInstance() => create();
  static $pb.PbList<SearchTripsOptions> createRepeated() => $pb.PbList<SearchTripsOptions>();
  @$core.pragma('dart2js:noInline')
  static SearchTripsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchTripsOptions>(create);
  static SearchTripsOptions? _defaultInstance;

  SearchTripsOptions_LocationFilter whichLocationFilter() => _SearchTripsOptions_LocationFilterByTag[$_whichOneof(0)]!;
  void clearLocationFilter() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get country => $_getSZ(0);
  @$pb.TagNumber(1)
  set country($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get city => $_getSZ(1);
  @$pb.TagNumber(2)
  set city($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get region => $_getSZ(2);
  @$pb.TagNumber(3)
  set region($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegion() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegion() => clearField(3);

  @$pb.TagNumber(10)
  $core.int get divers => $_getIZ(3);
  @$pb.TagNumber(10)
  set divers($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(10)
  $core.bool hasDivers() => $_has(3);
  @$pb.TagNumber(10)
  void clearDivers() => clearField(10);

  @$pb.TagNumber(15)
  $13.TripType get tripType => $_getN(4);
  @$pb.TagNumber(15)
  set tripType($13.TripType v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasTripType() => $_has(4);
  @$pb.TagNumber(15)
  void clearTripType() => clearField(15);

  @$pb.TagNumber(20)
  $12.Timestamp get startDate => $_getN(5);
  @$pb.TagNumber(20)
  set startDate($12.Timestamp v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasStartDate() => $_has(5);
  @$pb.TagNumber(20)
  void clearStartDate() => clearField(20);
  @$pb.TagNumber(20)
  $12.Timestamp ensureStartDate() => $_ensure(5);

  @$pb.TagNumber(30)
  $12.Timestamp get endDate => $_getN(6);
  @$pb.TagNumber(30)
  set endDate($12.Timestamp v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasEndDate() => $_has(6);
  @$pb.TagNumber(30)
  void clearEndDate() => clearField(30);
  @$pb.TagNumber(30)
  $12.Timestamp ensureEndDate() => $_ensure(6);
}

class SearchTripsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchTripsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<SearchTripsOptions>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'searchTripsOptions', subBuilder: SearchTripsOptions.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SearchTripsRequest._() : super();
  factory SearchTripsRequest({
    SearchTripsOptions? searchTripsOptions,
    $fixnum.Int64? limit,
    $fixnum.Int64? offset,
  }) {
    final _result = create();
    if (searchTripsOptions != null) {
      _result.searchTripsOptions = searchTripsOptions;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory SearchTripsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchTripsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchTripsRequest clone() => SearchTripsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchTripsRequest copyWith(void Function(SearchTripsRequest) updates) => super.copyWith((message) => updates(message as SearchTripsRequest)) as SearchTripsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchTripsRequest create() => SearchTripsRequest._();
  SearchTripsRequest createEmptyInstance() => create();
  static $pb.PbList<SearchTripsRequest> createRepeated() => $pb.PbList<SearchTripsRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchTripsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchTripsRequest>(create);
  static SearchTripsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  SearchTripsOptions get searchTripsOptions => $_getN(0);
  @$pb.TagNumber(1)
  set searchTripsOptions(SearchTripsOptions v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchTripsOptions() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchTripsOptions() => clearField(1);
  @$pb.TagNumber(1)
  SearchTripsOptions ensureSearchTripsOptions() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get offset => $_getI64(2);
  @$pb.TagNumber(3)
  set offset($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);
}

class SearchTripsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchTripsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.TripWithTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.TripWithTemplate.create)
    ..hasRequiredFields = false
  ;

  SearchTripsResponse._() : super();
  factory SearchTripsResponse({
    $13.TripWithTemplate? trip,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    return _result;
  }
  factory SearchTripsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchTripsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchTripsResponse clone() => SearchTripsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchTripsResponse copyWith(void Function(SearchTripsResponse) updates) => super.copyWith((message) => updates(message as SearchTripsResponse)) as SearchTripsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchTripsResponse create() => SearchTripsResponse._();
  SearchTripsResponse createEmptyInstance() => create();
  static $pb.PbList<SearchTripsResponse> createRepeated() => $pb.PbList<SearchTripsResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchTripsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchTripsResponse>(create);
  static SearchTripsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.TripWithTemplate get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip($13.TripWithTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  $13.TripWithTemplate ensureTrip() => $_ensure(0);
}

class UpdateTripRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateTripRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Trip>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: $13.Trip.create)
    ..hasRequiredFields = false
  ;

  UpdateTripRequest._() : super();
  factory UpdateTripRequest({
    $13.Trip? trip,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    return _result;
  }
  factory UpdateTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTripRequest clone() => UpdateTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTripRequest copyWith(void Function(UpdateTripRequest) updates) => super.copyWith((message) => updates(message as UpdateTripRequest)) as UpdateTripRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateTripRequest create() => UpdateTripRequest._();
  UpdateTripRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTripRequest> createRepeated() => $pb.PbList<UpdateTripRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTripRequest>(create);
  static UpdateTripRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $13.Trip get trip => $_getN(0);
  @$pb.TagNumber(10)
  set trip($13.Trip v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(10)
  void clearTrip() => clearField(10);
  @$pb.TagNumber(10)
  $13.Trip ensureTrip() => $_ensure(0);
}

class UpdateHotelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateHotelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Hotel>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $13.Hotel.create)
    ..hasRequiredFields = false
  ;

  UpdateHotelRequest._() : super();
  factory UpdateHotelRequest({
    $13.Hotel? hotel,
  }) {
    final _result = create();
    if (hotel != null) {
      _result.hotel = hotel;
    }
    return _result;
  }
  factory UpdateHotelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateHotelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateHotelRequest clone() => UpdateHotelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateHotelRequest copyWith(void Function(UpdateHotelRequest) updates) => super.copyWith((message) => updates(message as UpdateHotelRequest)) as UpdateHotelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateHotelRequest create() => UpdateHotelRequest._();
  UpdateHotelRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateHotelRequest> createRepeated() => $pb.PbList<UpdateHotelRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateHotelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateHotelRequest>(create);
  static UpdateHotelRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $13.Hotel get hotel => $_getN(0);
  @$pb.TagNumber(10)
  set hotel($13.Hotel v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasHotel() => $_has(0);
  @$pb.TagNumber(10)
  void clearHotel() => clearField(10);
  @$pb.TagNumber(10)
  $13.Hotel ensureHotel() => $_ensure(0);
}

class UpdateLiveaboardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateLiveaboardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Liveaboard>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: $13.Liveaboard.create)
    ..hasRequiredFields = false
  ;

  UpdateLiveaboardRequest._() : super();
  factory UpdateLiveaboardRequest({
    $13.Liveaboard? liveaboard,
  }) {
    final _result = create();
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    return _result;
  }
  factory UpdateLiveaboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLiveaboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateLiveaboardRequest clone() => UpdateLiveaboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateLiveaboardRequest copyWith(void Function(UpdateLiveaboardRequest) updates) => super.copyWith((message) => updates(message as UpdateLiveaboardRequest)) as UpdateLiveaboardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateLiveaboardRequest create() => UpdateLiveaboardRequest._();
  UpdateLiveaboardRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateLiveaboardRequest> createRepeated() => $pb.PbList<UpdateLiveaboardRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateLiveaboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLiveaboardRequest>(create);
  static UpdateLiveaboardRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $13.Liveaboard get liveaboard => $_getN(0);
  @$pb.TagNumber(10)
  set liveaboard($13.Liveaboard v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLiveaboard() => $_has(0);
  @$pb.TagNumber(10)
  void clearLiveaboard() => clearField(10);
  @$pb.TagNumber(10)
  $13.Liveaboard ensureLiveaboard() => $_ensure(0);
}

class UpdateBoatRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateBoatRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Boat>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boat', subBuilder: $13.Boat.create)
    ..hasRequiredFields = false
  ;

  UpdateBoatRequest._() : super();
  factory UpdateBoatRequest({
    $13.Boat? boat,
  }) {
    final _result = create();
    if (boat != null) {
      _result.boat = boat;
    }
    return _result;
  }
  factory UpdateBoatRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBoatRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBoatRequest clone() => UpdateBoatRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBoatRequest copyWith(void Function(UpdateBoatRequest) updates) => super.copyWith((message) => updates(message as UpdateBoatRequest)) as UpdateBoatRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateBoatRequest create() => UpdateBoatRequest._();
  UpdateBoatRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateBoatRequest> createRepeated() => $pb.PbList<UpdateBoatRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateBoatRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBoatRequest>(create);
  static UpdateBoatRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $13.Boat get boat => $_getN(0);
  @$pb.TagNumber(10)
  set boat($13.Boat v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasBoat() => $_has(0);
  @$pb.TagNumber(10)
  void clearBoat() => clearField(10);
  @$pb.TagNumber(10)
  $13.Boat ensureBoat() => $_ensure(0);
}

class UpdateDiveMasterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateDiveMasterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.DiveMaster>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMaster', subBuilder: $13.DiveMaster.create)
    ..hasRequiredFields = false
  ;

  UpdateDiveMasterRequest._() : super();
  factory UpdateDiveMasterRequest({
    $13.DiveMaster? diveMaster,
  }) {
    final _result = create();
    if (diveMaster != null) {
      _result.diveMaster = diveMaster;
    }
    return _result;
  }
  factory UpdateDiveMasterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateDiveMasterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateDiveMasterRequest clone() => UpdateDiveMasterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateDiveMasterRequest copyWith(void Function(UpdateDiveMasterRequest) updates) => super.copyWith((message) => updates(message as UpdateDiveMasterRequest)) as UpdateDiveMasterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateDiveMasterRequest create() => UpdateDiveMasterRequest._();
  UpdateDiveMasterRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateDiveMasterRequest> createRepeated() => $pb.PbList<UpdateDiveMasterRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateDiveMasterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateDiveMasterRequest>(create);
  static UpdateDiveMasterRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $13.DiveMaster get diveMaster => $_getN(0);
  @$pb.TagNumber(10)
  set diveMaster($13.DiveMaster v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasDiveMaster() => $_has(0);
  @$pb.TagNumber(10)
  void clearDiveMaster() => clearField(10);
  @$pb.TagNumber(10)
  $13.DiveMaster ensureDiveMaster() => $_ensure(0);
}

class UpdateStaffRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateStaffRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.Staff>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staff', subBuilder: $13.Staff.create)
    ..hasRequiredFields = false
  ;

  UpdateStaffRequest._() : super();
  factory UpdateStaffRequest({
    $13.Staff? staff,
  }) {
    final _result = create();
    if (staff != null) {
      _result.staff = staff;
    }
    return _result;
  }
  factory UpdateStaffRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStaffRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStaffRequest clone() => UpdateStaffRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStaffRequest copyWith(void Function(UpdateStaffRequest) updates) => super.copyWith((message) => updates(message as UpdateStaffRequest)) as UpdateStaffRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateStaffRequest create() => UpdateStaffRequest._();
  UpdateStaffRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateStaffRequest> createRepeated() => $pb.PbList<UpdateStaffRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateStaffRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStaffRequest>(create);
  static UpdateStaffRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $13.Staff get staff => $_getN(0);
  @$pb.TagNumber(10)
  set staff($13.Staff v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasStaff() => $_has(0);
  @$pb.TagNumber(10)
  void clearStaff() => clearField(10);
  @$pb.TagNumber(10)
  $13.Staff ensureStaff() => $_ensure(0);
}

class GenerateCurrentTripsReportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenerateCurrentTripsReportRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GenerateCurrentTripsReportRequest._() : super();
  factory GenerateCurrentTripsReportRequest({
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
  factory GenerateCurrentTripsReportRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateCurrentTripsReportRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateCurrentTripsReportRequest clone() => GenerateCurrentTripsReportRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateCurrentTripsReportRequest copyWith(void Function(GenerateCurrentTripsReportRequest) updates) => super.copyWith((message) => updates(message as GenerateCurrentTripsReportRequest)) as GenerateCurrentTripsReportRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateCurrentTripsReportRequest create() => GenerateCurrentTripsReportRequest._();
  GenerateCurrentTripsReportRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateCurrentTripsReportRequest> createRepeated() => $pb.PbList<GenerateCurrentTripsReportRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateCurrentTripsReportRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateCurrentTripsReportRequest>(create);
  static GenerateCurrentTripsReportRequest? _defaultInstance;

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

class GenerateCurrentTripsReportResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenerateCurrentTripsReportResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.ReportTrip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'report', subBuilder: $13.ReportTrip.create)
    ..hasRequiredFields = false
  ;

  GenerateCurrentTripsReportResponse._() : super();
  factory GenerateCurrentTripsReportResponse({
    $13.ReportTrip? report,
  }) {
    final _result = create();
    if (report != null) {
      _result.report = report;
    }
    return _result;
  }
  factory GenerateCurrentTripsReportResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateCurrentTripsReportResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateCurrentTripsReportResponse clone() => GenerateCurrentTripsReportResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateCurrentTripsReportResponse copyWith(void Function(GenerateCurrentTripsReportResponse) updates) => super.copyWith((message) => updates(message as GenerateCurrentTripsReportResponse)) as GenerateCurrentTripsReportResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateCurrentTripsReportResponse create() => GenerateCurrentTripsReportResponse._();
  GenerateCurrentTripsReportResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateCurrentTripsReportResponse> createRepeated() => $pb.PbList<GenerateCurrentTripsReportResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateCurrentTripsReportResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateCurrentTripsReportResponse>(create);
  static GenerateCurrentTripsReportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.ReportTrip get report => $_getN(0);
  @$pb.TagNumber(1)
  set report($13.ReportTrip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearReport() => clearField(1);
  @$pb.TagNumber(1)
  $13.ReportTrip ensureReport() => $_ensure(0);
}

class GenerateYearlyEndedTripsReportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenerateYearlyEndedTripsReportRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'years', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  GenerateYearlyEndedTripsReportRequest._() : super();
  factory GenerateYearlyEndedTripsReportRequest({
    $fixnum.Int64? limit,
    $fixnum.Int64? offset,
    $core.int? years,
  }) {
    final _result = create();
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    if (years != null) {
      _result.years = years;
    }
    return _result;
  }
  factory GenerateYearlyEndedTripsReportRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateYearlyEndedTripsReportRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateYearlyEndedTripsReportRequest clone() => GenerateYearlyEndedTripsReportRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateYearlyEndedTripsReportRequest copyWith(void Function(GenerateYearlyEndedTripsReportRequest) updates) => super.copyWith((message) => updates(message as GenerateYearlyEndedTripsReportRequest)) as GenerateYearlyEndedTripsReportRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateYearlyEndedTripsReportRequest create() => GenerateYearlyEndedTripsReportRequest._();
  GenerateYearlyEndedTripsReportRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateYearlyEndedTripsReportRequest> createRepeated() => $pb.PbList<GenerateYearlyEndedTripsReportRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateYearlyEndedTripsReportRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateYearlyEndedTripsReportRequest>(create);
  static GenerateYearlyEndedTripsReportRequest? _defaultInstance;

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

  @$pb.TagNumber(10)
  $core.int get years => $_getIZ(2);
  @$pb.TagNumber(10)
  set years($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasYears() => $_has(2);
  @$pb.TagNumber(10)
  void clearYears() => clearField(10);
}

class GenerateYearlyEndedTripsReportResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenerateYearlyEndedTripsReportResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..pc<$13.ReportTrip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reports', $pb.PbFieldType.PM, subBuilder: $13.ReportTrip.create)
    ..hasRequiredFields = false
  ;

  GenerateYearlyEndedTripsReportResponse._() : super();
  factory GenerateYearlyEndedTripsReportResponse({
    $core.Iterable<$13.ReportTrip>? reports,
  }) {
    final _result = create();
    if (reports != null) {
      _result.reports.addAll(reports);
    }
    return _result;
  }
  factory GenerateYearlyEndedTripsReportResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateYearlyEndedTripsReportResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateYearlyEndedTripsReportResponse clone() => GenerateYearlyEndedTripsReportResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateYearlyEndedTripsReportResponse copyWith(void Function(GenerateYearlyEndedTripsReportResponse) updates) => super.copyWith((message) => updates(message as GenerateYearlyEndedTripsReportResponse)) as GenerateYearlyEndedTripsReportResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateYearlyEndedTripsReportResponse create() => GenerateYearlyEndedTripsReportResponse._();
  GenerateYearlyEndedTripsReportResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateYearlyEndedTripsReportResponse> createRepeated() => $pb.PbList<GenerateYearlyEndedTripsReportResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateYearlyEndedTripsReportResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateYearlyEndedTripsReportResponse>(create);
  static GenerateYearlyEndedTripsReportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$13.ReportTrip> get reports => $_getList(0);
}

class GenerateIncomingTripsReportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenerateIncomingTripsReportRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weeks', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  GenerateIncomingTripsReportRequest._() : super();
  factory GenerateIncomingTripsReportRequest({
    $fixnum.Int64? limit,
    $fixnum.Int64? offset,
    $core.int? weeks,
  }) {
    final _result = create();
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    if (weeks != null) {
      _result.weeks = weeks;
    }
    return _result;
  }
  factory GenerateIncomingTripsReportRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateIncomingTripsReportRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateIncomingTripsReportRequest clone() => GenerateIncomingTripsReportRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateIncomingTripsReportRequest copyWith(void Function(GenerateIncomingTripsReportRequest) updates) => super.copyWith((message) => updates(message as GenerateIncomingTripsReportRequest)) as GenerateIncomingTripsReportRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateIncomingTripsReportRequest create() => GenerateIncomingTripsReportRequest._();
  GenerateIncomingTripsReportRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateIncomingTripsReportRequest> createRepeated() => $pb.PbList<GenerateIncomingTripsReportRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateIncomingTripsReportRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateIncomingTripsReportRequest>(create);
  static GenerateIncomingTripsReportRequest? _defaultInstance;

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

  @$pb.TagNumber(10)
  $core.int get weeks => $_getIZ(2);
  @$pb.TagNumber(10)
  set weeks($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasWeeks() => $_has(2);
  @$pb.TagNumber(10)
  void clearWeeks() => clearField(10);
}

class GenerateIncomingTripsReportResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenerateIncomingTripsReportResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$13.ReportTrip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'report', subBuilder: $13.ReportTrip.create)
    ..hasRequiredFields = false
  ;

  GenerateIncomingTripsReportResponse._() : super();
  factory GenerateIncomingTripsReportResponse({
    $13.ReportTrip? report,
  }) {
    final _result = create();
    if (report != null) {
      _result.report = report;
    }
    return _result;
  }
  factory GenerateIncomingTripsReportResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateIncomingTripsReportResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateIncomingTripsReportResponse clone() => GenerateIncomingTripsReportResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateIncomingTripsReportResponse copyWith(void Function(GenerateIncomingTripsReportResponse) updates) => super.copyWith((message) => updates(message as GenerateIncomingTripsReportResponse)) as GenerateIncomingTripsReportResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateIncomingTripsReportResponse create() => GenerateIncomingTripsReportResponse._();
  GenerateIncomingTripsReportResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateIncomingTripsReportResponse> createRepeated() => $pb.PbList<GenerateIncomingTripsReportResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateIncomingTripsReportResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateIncomingTripsReportResponse>(create);
  static GenerateIncomingTripsReportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.ReportTrip get report => $_getN(0);
  @$pb.TagNumber(1)
  set report($13.ReportTrip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearReport() => clearField(1);
  @$pb.TagNumber(1)
  $13.ReportTrip ensureReport() => $_ensure(0);
}

