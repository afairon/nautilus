///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $6;
import 'google/protobuf/timestamp.pb.dart' as $5;

import 'model.pbenum.dart' as $6;
import 'agency.pbenum.dart';

export 'agency.pbenum.dart';

class DiveMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiveMaster', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..e<$6.LevelType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: $6.LevelType.INSTRUCTOR, valueOf: $6.LevelType.valueOf, enumValues: $6.LevelType.values)
    ..aOM<$6.File>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frontImage', subBuilder: $6.File.create)
    ..aOM<$6.File>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backImage', subBuilder: $6.File.create)
    ..hasRequiredFields = false
  ;

  DiveMaster._() : super();
  factory DiveMaster({
    $core.String? firstName,
    $core.String? lastName,
    $6.LevelType? level,
    $6.File? frontImage,
    $6.File? backImage,
  }) {
    final _result = create();
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (level != null) {
      _result.level = level;
    }
    if (frontImage != null) {
      _result.frontImage = frontImage;
    }
    if (backImage != null) {
      _result.backImage = backImage;
    }
    return _result;
  }
  factory DiveMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiveMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiveMaster clone() => DiveMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiveMaster copyWith(void Function(DiveMaster) updates) => super.copyWith((message) => updates(message as DiveMaster)) as DiveMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiveMaster create() => DiveMaster._();
  DiveMaster createEmptyInstance() => create();
  static $pb.PbList<DiveMaster> createRepeated() => $pb.PbList<DiveMaster>();
  @$core.pragma('dart2js:noInline')
  static DiveMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiveMaster>(create);
  static DiveMaster? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);

  @$pb.TagNumber(3)
  $6.LevelType get level => $_getN(2);
  @$pb.TagNumber(3)
  set level($6.LevelType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevel() => clearField(3);

  @$pb.TagNumber(4)
  $6.File get frontImage => $_getN(3);
  @$pb.TagNumber(4)
  set frontImage($6.File v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrontImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrontImage() => clearField(4);
  @$pb.TagNumber(4)
  $6.File ensureFrontImage() => $_ensure(3);

  @$pb.TagNumber(5)
  $6.File get backImage => $_getN(4);
  @$pb.TagNumber(5)
  set backImage($6.File v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBackImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearBackImage() => clearField(5);
  @$pb.TagNumber(5)
  $6.File ensureBackImage() => $_ensure(4);
}

class DiveMasterFirstAndLastName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiveMasterFirstAndLastName', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..hasRequiredFields = false
  ;

  DiveMasterFirstAndLastName._() : super();
  factory DiveMasterFirstAndLastName({
    $core.String? firstName,
    $core.String? lastName,
  }) {
    final _result = create();
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    return _result;
  }
  factory DiveMasterFirstAndLastName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiveMasterFirstAndLastName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiveMasterFirstAndLastName clone() => DiveMasterFirstAndLastName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiveMasterFirstAndLastName copyWith(void Function(DiveMasterFirstAndLastName) updates) => super.copyWith((message) => updates(message as DiveMasterFirstAndLastName)) as DiveMasterFirstAndLastName; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiveMasterFirstAndLastName create() => DiveMasterFirstAndLastName._();
  DiveMasterFirstAndLastName createEmptyInstance() => create();
  static $pb.PbList<DiveMasterFirstAndLastName> createRepeated() => $pb.PbList<DiveMasterFirstAndLastName>();
  @$core.pragma('dart2js:noInline')
  static DiveMasterFirstAndLastName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiveMasterFirstAndLastName>(create);
  static DiveMasterFirstAndLastName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);
}

class Staff extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Staff', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position')
    ..hasRequiredFields = false
  ;

  Staff._() : super();
  factory Staff({
    $core.String? firstName,
    $core.String? lastName,
    $core.String? position,
  }) {
    final _result = create();
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (position != null) {
      _result.position = position;
    }
    return _result;
  }
  factory Staff.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Staff.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Staff clone() => Staff()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Staff copyWith(void Function(Staff) updates) => super.copyWith((message) => updates(message as Staff)) as Staff; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Staff create() => Staff._();
  Staff createEmptyInstance() => create();
  static $pb.PbList<Staff> createRepeated() => $pb.PbList<Staff>();
  @$core.pragma('dart2js:noInline')
  static Staff getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Staff>(create);
  static Staff? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get position => $_getSZ(2);
  @$pb.TagNumber(3)
  set position($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
}

class DivingBoat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DivingBoat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatModel')
    ..aOM<$6.File>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatImage', subBuilder: $6.File.create)
    ..hasRequiredFields = false
  ;

  DivingBoat._() : super();
  factory DivingBoat({
    $core.String? boatModel,
    $6.File? boatImage,
  }) {
    final _result = create();
    if (boatModel != null) {
      _result.boatModel = boatModel;
    }
    if (boatImage != null) {
      _result.boatImage = boatImage;
    }
    return _result;
  }
  factory DivingBoat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DivingBoat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DivingBoat clone() => DivingBoat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DivingBoat copyWith(void Function(DivingBoat) updates) => super.copyWith((message) => updates(message as DivingBoat)) as DivingBoat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DivingBoat create() => DivingBoat._();
  DivingBoat createEmptyInstance() => create();
  static $pb.PbList<DivingBoat> createRepeated() => $pb.PbList<DivingBoat>();
  @$core.pragma('dart2js:noInline')
  static DivingBoat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DivingBoat>(create);
  static DivingBoat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get boatModel => $_getSZ(0);
  @$pb.TagNumber(1)
  set boatModel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoatModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoatModel() => clearField(1);

  @$pb.TagNumber(2)
  $6.File get boatImage => $_getN(1);
  @$pb.TagNumber(2)
  set boatImage($6.File v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBoatImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoatImage() => clearField(2);
  @$pb.TagNumber(2)
  $6.File ensureBoatImage() => $_ensure(1);
}

class Place extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Place', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..hasRequiredFields = false
  ;

  Place._() : super();
  factory Place({
    $core.String? country,
    $core.String? city,
  }) {
    final _result = create();
    if (country != null) {
      _result.country = country;
    }
    if (city != null) {
      _result.city = city;
    }
    return _result;
  }
  factory Place.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Place.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Place clone() => Place()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Place copyWith(void Function(Place) updates) => super.copyWith((message) => updates(message as Place)) as Place; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Place create() => Place._();
  Place createEmptyInstance() => create();
  static $pb.PbList<Place> createRepeated() => $pb.PbList<Place>();
  @$core.pragma('dart2js:noInline')
  static Place getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Place>(create);
  static Place? _defaultInstance;

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
}

class Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Room', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..e<Room_RoomType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomType', $pb.PbFieldType.OE, defaultOrMaker: Room_RoomType.SINGLE, valueOf: Room_RoomType.valueOf, enumValues: Room_RoomType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxCapacity', $pb.PbFieldType.O3)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..pc<$6.File>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomImages', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amenityNames')
    ..hasRequiredFields = false
  ;

  Room._() : super();
  factory Room({
    Room_RoomType? roomType,
    $core.String? description,
    $core.int? maxCapacity,
    $core.double? price,
    $core.Iterable<$6.File>? roomImages,
    $core.Iterable<$core.String>? amenityNames,
  }) {
    final _result = create();
    if (roomType != null) {
      _result.roomType = roomType;
    }
    if (description != null) {
      _result.description = description;
    }
    if (maxCapacity != null) {
      _result.maxCapacity = maxCapacity;
    }
    if (price != null) {
      _result.price = price;
    }
    if (roomImages != null) {
      _result.roomImages.addAll(roomImages);
    }
    if (amenityNames != null) {
      _result.amenityNames.addAll(amenityNames);
    }
    return _result;
  }
  factory Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Room clone() => Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Room copyWith(void Function(Room) updates) => super.copyWith((message) => updates(message as Room)) as Room; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Room create() => Room._();
  Room createEmptyInstance() => create();
  static $pb.PbList<Room> createRepeated() => $pb.PbList<Room>();
  @$core.pragma('dart2js:noInline')
  static Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Room>(create);
  static Room? _defaultInstance;

  @$pb.TagNumber(1)
  Room_RoomType get roomType => $_getN(0);
  @$pb.TagNumber(1)
  set roomType(Room_RoomType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxCapacity => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxCapacity($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxCapacity() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxCapacity() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$6.File> get roomImages => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get amenityNames => $_getList(5);
}

class TripTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<DivingBoat>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divingBoat', subBuilder: DivingBoat.create)
    ..aOM<Place>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'place', subBuilder: Place.create)
    ..pc<$6.File>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..e<TripTemplate_TripType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: TripTemplate_TripType.LIVEABOARD, valueOf: TripTemplate_TripType.valueOf, enumValues: TripTemplate_TripType.values)
    ..aOM<$6.File>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleImage', subBuilder: $6.File.create)
    ..hasRequiredFields = false
  ;

  TripTemplate._() : super();
  factory TripTemplate({
    $core.String? name,
    $core.String? description,
    DivingBoat? divingBoat,
    Place? place,
    $core.Iterable<$6.File>? images,
    TripTemplate_TripType? tripType,
    $6.File? scheduleImage,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (divingBoat != null) {
      _result.divingBoat = divingBoat;
    }
    if (place != null) {
      _result.place = place;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (tripType != null) {
      _result.tripType = tripType;
    }
    if (scheduleImage != null) {
      _result.scheduleImage = scheduleImage;
    }
    return _result;
  }
  factory TripTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TripTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TripTemplate clone() => TripTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TripTemplate copyWith(void Function(TripTemplate) updates) => super.copyWith((message) => updates(message as TripTemplate)) as TripTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TripTemplate create() => TripTemplate._();
  TripTemplate createEmptyInstance() => create();
  static $pb.PbList<TripTemplate> createRepeated() => $pb.PbList<TripTemplate>();
  @$core.pragma('dart2js:noInline')
  static TripTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TripTemplate>(create);
  static TripTemplate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  DivingBoat get divingBoat => $_getN(2);
  @$pb.TagNumber(3)
  set divingBoat(DivingBoat v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDivingBoat() => $_has(2);
  @$pb.TagNumber(3)
  void clearDivingBoat() => clearField(3);
  @$pb.TagNumber(3)
  DivingBoat ensureDivingBoat() => $_ensure(2);

  @$pb.TagNumber(4)
  Place get place => $_getN(3);
  @$pb.TagNumber(4)
  set place(Place v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlace() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlace() => clearField(4);
  @$pb.TagNumber(4)
  Place ensurePlace() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$6.File> get images => $_getList(4);

  @$pb.TagNumber(6)
  TripTemplate_TripType get tripType => $_getN(5);
  @$pb.TagNumber(6)
  set tripType(TripTemplate_TripType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTripType() => $_has(5);
  @$pb.TagNumber(6)
  void clearTripType() => clearField(6);

  @$pb.TagNumber(7)
  $6.File get scheduleImage => $_getN(6);
  @$pb.TagNumber(7)
  set scheduleImage($6.File v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasScheduleImage() => $_has(6);
  @$pb.TagNumber(7)
  void clearScheduleImage() => clearField(7);
  @$pb.TagNumber(7)
  $6.File ensureScheduleImage() => $_ensure(6);
}

class Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Trip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$5.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', subBuilder: $5.Timestamp.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxCapacity', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pricePerPserson', $pb.PbFieldType.O3)
    ..pc<DiveMasterFirstAndLastName>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMasters', $pb.PbFieldType.PM, subBuilder: DiveMasterFirstAndLastName.create)
    ..hasRequiredFields = false
  ;

  Trip._() : super();
  factory Trip({
    $5.Timestamp? from,
    $5.Timestamp? to,
    $core.int? maxCapacity,
    $core.int? pricePerPserson,
    $core.Iterable<DiveMasterFirstAndLastName>? diveMasters,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (maxCapacity != null) {
      _result.maxCapacity = maxCapacity;
    }
    if (pricePerPserson != null) {
      _result.pricePerPserson = pricePerPserson;
    }
    if (diveMasters != null) {
      _result.diveMasters.addAll(diveMasters);
    }
    return _result;
  }
  factory Trip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Trip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Trip clone() => Trip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Trip copyWith(void Function(Trip) updates) => super.copyWith((message) => updates(message as Trip)) as Trip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Trip create() => Trip._();
  Trip createEmptyInstance() => create();
  static $pb.PbList<Trip> createRepeated() => $pb.PbList<Trip>();
  @$core.pragma('dart2js:noInline')
  static Trip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Trip>(create);
  static Trip? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Timestamp get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($5.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);
  @$pb.TagNumber(1)
  $5.Timestamp ensureFrom() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.Timestamp get to => $_getN(1);
  @$pb.TagNumber(2)
  set to($5.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureTo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get maxCapacity => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxCapacity($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxCapacity() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxCapacity() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pricePerPserson => $_getIZ(3);
  @$pb.TagNumber(4)
  set pricePerPserson($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPricePerPserson() => $_has(3);
  @$pb.TagNumber(4)
  void clearPricePerPserson() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<DiveMasterFirstAndLastName> get diveMasters => $_getList(4);
}

class Hotel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hotel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelName')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'star', $pb.PbFieldType.O3)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highlights')
    ..pc<$6.File>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..pc<Room>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: Room.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelDescription')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..hasRequiredFields = false
  ;

  Hotel._() : super();
  factory Hotel({
    $core.String? hotelName,
    $core.int? star,
    $core.Iterable<$core.String>? highlights,
    $core.Iterable<$6.File>? images,
    $core.Iterable<Room>? rooms,
    $core.String? hotelDescription,
    $core.String? phone,
  }) {
    final _result = create();
    if (hotelName != null) {
      _result.hotelName = hotelName;
    }
    if (star != null) {
      _result.star = star;
    }
    if (highlights != null) {
      _result.highlights.addAll(highlights);
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (rooms != null) {
      _result.rooms.addAll(rooms);
    }
    if (hotelDescription != null) {
      _result.hotelDescription = hotelDescription;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    return _result;
  }
  factory Hotel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Hotel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Hotel clone() => Hotel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Hotel copyWith(void Function(Hotel) updates) => super.copyWith((message) => updates(message as Hotel)) as Hotel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Hotel create() => Hotel._();
  Hotel createEmptyInstance() => create();
  static $pb.PbList<Hotel> createRepeated() => $pb.PbList<Hotel>();
  @$core.pragma('dart2js:noInline')
  static Hotel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Hotel>(create);
  static Hotel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hotelName => $_getSZ(0);
  @$pb.TagNumber(1)
  set hotelName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotelName() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotelName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get star => $_getIZ(1);
  @$pb.TagNumber(2)
  set star($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStar() => $_has(1);
  @$pb.TagNumber(2)
  void clearStar() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get highlights => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$6.File> get images => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Room> get rooms => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get hotelDescription => $_getSZ(5);
  @$pb.TagNumber(6)
  set hotelDescription($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHotelDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearHotelDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get phone => $_getSZ(6);
  @$pb.TagNumber(7)
  set phone($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPhone() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhone() => clearField(7);
}

class Liveaboard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Liveaboard', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'length', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OF)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highlights')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images')
    ..pc<Room>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: Room.create)
    ..hasRequiredFields = false
  ;

  Liveaboard._() : super();
  factory Liveaboard({
    $core.String? model,
    $core.String? description,
    $core.double? length,
    $core.double? width,
    $core.Iterable<$core.String>? highlights,
    $core.Iterable<$core.String>? images,
    $core.Iterable<Room>? rooms,
  }) {
    final _result = create();
    if (model != null) {
      _result.model = model;
    }
    if (description != null) {
      _result.description = description;
    }
    if (length != null) {
      _result.length = length;
    }
    if (width != null) {
      _result.width = width;
    }
    if (highlights != null) {
      _result.highlights.addAll(highlights);
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (rooms != null) {
      _result.rooms.addAll(rooms);
    }
    return _result;
  }
  factory Liveaboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Liveaboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Liveaboard clone() => Liveaboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Liveaboard copyWith(void Function(Liveaboard) updates) => super.copyWith((message) => updates(message as Liveaboard)) as Liveaboard; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Liveaboard create() => Liveaboard._();
  Liveaboard createEmptyInstance() => create();
  static $pb.PbList<Liveaboard> createRepeated() => $pb.PbList<Liveaboard>();
  @$core.pragma('dart2js:noInline')
  static Liveaboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Liveaboard>(create);
  static Liveaboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get model => $_getSZ(0);
  @$pb.TagNumber(1)
  set model($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearModel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get length => $_getN(2);
  @$pb.TagNumber(3)
  set length($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearLength() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get width => $_getN(3);
  @$pb.TagNumber(4)
  set width($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearWidth() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get highlights => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get images => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<Room> get rooms => $_getList(6);
}

class AddDiveMasterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddDiveMasterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<DiveMaster>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMaster', subBuilder: DiveMaster.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddDiveMasterRequest._() : super();
  factory AddDiveMasterRequest({
    DiveMaster? diveMaster,
    $fixnum.Int64? agencyId,
  }) {
    final _result = create();
    if (diveMaster != null) {
      _result.diveMaster = diveMaster;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
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
  DiveMaster get diveMaster => $_getN(0);
  @$pb.TagNumber(1)
  set diveMaster(DiveMaster v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiveMaster() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiveMaster() => clearField(1);
  @$pb.TagNumber(1)
  DiveMaster ensureDiveMaster() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get agencyId => $_getI64(1);
  @$pb.TagNumber(2)
  set agencyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgencyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgencyId() => clearField(2);
}

class AddStaffRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddStaffRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<Staff>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staff', subBuilder: Staff.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddStaffRequest._() : super();
  factory AddStaffRequest({
    Staff? staff,
    $fixnum.Int64? agencyId,
  }) {
    final _result = create();
    if (staff != null) {
      _result.staff = staff;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
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
  Staff get staff => $_getN(0);
  @$pb.TagNumber(1)
  set staff(Staff v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStaff() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaff() => clearField(1);
  @$pb.TagNumber(1)
  Staff ensureStaff() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get agencyId => $_getI64(1);
  @$pb.TagNumber(2)
  set agencyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgencyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgencyId() => clearField(2);
}

class AddTripTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddTripTemplateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<TripTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplate', subBuilder: TripTemplate.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddTripTemplateRequest._() : super();
  factory AddTripTemplateRequest({
    TripTemplate? tripTemplate,
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
  TripTemplate get tripTemplate => $_getN(0);
  @$pb.TagNumber(1)
  set tripTemplate(TripTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripTemplate() => clearField(1);
  @$pb.TagNumber(1)
  TripTemplate ensureTripTemplate() => $_ensure(0);

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
    ..aOM<Trip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: Trip.create)
    ..aOM<TripTemplate>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplate', subBuilder: TripTemplate.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddTripRequest._() : super();
  factory AddTripRequest({
    Trip? trip,
    TripTemplate? tripTemplate,
    $fixnum.Int64? agencyId,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (tripTemplate != null) {
      _result.tripTemplate = tripTemplate;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
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
  Trip get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip(Trip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  Trip ensureTrip() => $_ensure(0);

  @$pb.TagNumber(2)
  TripTemplate get tripTemplate => $_getN(1);
  @$pb.TagNumber(2)
  set tripTemplate(TripTemplate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTripTemplate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTripTemplate() => clearField(2);
  @$pb.TagNumber(2)
  TripTemplate ensureTripTemplate() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get agencyId => $_getI64(2);
  @$pb.TagNumber(3)
  set agencyId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgencyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgencyId() => clearField(3);
}

class AddDivingBoatRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddDivingBoatRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<DivingBoat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divingBoat', subBuilder: DivingBoat.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddDivingBoatRequest._() : super();
  factory AddDivingBoatRequest({
    DivingBoat? divingBoat,
    $fixnum.Int64? agencyId,
  }) {
    final _result = create();
    if (divingBoat != null) {
      _result.divingBoat = divingBoat;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
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
  DivingBoat get divingBoat => $_getN(0);
  @$pb.TagNumber(1)
  set divingBoat(DivingBoat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDivingBoat() => $_has(0);
  @$pb.TagNumber(1)
  void clearDivingBoat() => clearField(1);
  @$pb.TagNumber(1)
  DivingBoat ensureDivingBoat() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get agencyId => $_getI64(1);
  @$pb.TagNumber(2)
  set agencyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgencyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgencyId() => clearField(2);
}

class AddHotelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddHotelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<Hotel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: Hotel.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressId', $pb.PbFieldType.OU6, protoName: 'addressId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddHotelRequest._() : super();
  factory AddHotelRequest({
    Hotel? hotel,
    $fixnum.Int64? agencyId,
    $fixnum.Int64? addressId,
  }) {
    final _result = create();
    if (hotel != null) {
      _result.hotel = hotel;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
    }
    if (addressId != null) {
      _result.addressId = addressId;
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
  Hotel get hotel => $_getN(0);
  @$pb.TagNumber(1)
  set hotel(Hotel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotel() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotel() => clearField(1);
  @$pb.TagNumber(1)
  Hotel ensureHotel() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get agencyId => $_getI64(1);
  @$pb.TagNumber(2)
  set agencyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgencyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgencyId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get addressId => $_getI64(2);
  @$pb.TagNumber(3)
  set addressId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddressId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddressId() => clearField(3);
}

class AddLiveaboardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddLiveaboardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<Liveaboard>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: Liveaboard.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agencyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddLiveaboardRequest._() : super();
  factory AddLiveaboardRequest({
    Liveaboard? liveaboard,
    $fixnum.Int64? agencyId,
  }) {
    final _result = create();
    if (liveaboard != null) {
      _result.liveaboard = liveaboard;
    }
    if (agencyId != null) {
      _result.agencyId = agencyId;
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
  Liveaboard get liveaboard => $_getN(0);
  @$pb.TagNumber(1)
  set liveaboard(Liveaboard v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiveaboard() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveaboard() => clearField(1);
  @$pb.TagNumber(1)
  Liveaboard ensureLiveaboard() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get agencyId => $_getI64(1);
  @$pb.TagNumber(2)
  set agencyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgencyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgencyId() => clearField(2);
}

