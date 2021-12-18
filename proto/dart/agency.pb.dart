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
    ..e<$6.GenderType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: $6.GenderType.FEMALE, valueOf: $6.GenderType.valueOf, enumValues: $6.GenderType.values)
    ..hasRequiredFields = false
  ;

  Staff._() : super();
  factory Staff({
    $core.String? firstName,
    $core.String? lastName,
    $core.String? position,
    $6.GenderType? gender,
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
    if (gender != null) {
      _result.gender = gender;
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

  @$pb.TagNumber(4)
  $6.GenderType get gender => $_getN(3);
  @$pb.TagNumber(4)
  set gender($6.GenderType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGender() => $_has(3);
  @$pb.TagNumber(4)
  void clearGender() => clearField(4);
}

class DivingBoat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DivingBoat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatModel')
    ..pc<$6.File>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatImages', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..hasRequiredFields = false
  ;

  DivingBoat._() : super();
  factory DivingBoat({
    $core.String? boatModel,
    $core.Iterable<$6.File>? boatImages,
  }) {
    final _result = create();
    if (boatModel != null) {
      _result.boatModel = boatModel;
    }
    if (boatImages != null) {
      _result.boatImages.addAll(boatImages);
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
  $core.List<$6.File> get boatImages => $_getList(1);
}

class Amenity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Amenity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  Amenity._() : super();
  factory Amenity({
    $core.String? name,
    $core.String? description,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Amenity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Amenity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Amenity clone() => Amenity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Amenity copyWith(void Function(Amenity) updates) => super.copyWith((message) => updates(message as Amenity)) as Amenity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Amenity create() => Amenity._();
  Amenity createEmptyInstance() => create();
  static $pb.PbList<Amenity> createRepeated() => $pb.PbList<Amenity>();
  @$core.pragma('dart2js:noInline')
  static Amenity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Amenity>(create);
  static Amenity? _defaultInstance;

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
}

class RoomType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGuest', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..pc<$6.File>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomImages', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..pc<Amenity>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amenities', $pb.PbFieldType.PM, subBuilder: Amenity.create)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  RoomType._() : super();
  factory RoomType({
    $core.String? name,
    $core.String? description,
    $core.int? maxGuest,
    $core.double? price,
    $core.Iterable<$6.File>? roomImages,
    $core.Iterable<Amenity>? amenities,
    $core.int? quantity,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (maxGuest != null) {
      _result.maxGuest = maxGuest;
    }
    if (price != null) {
      _result.price = price;
    }
    if (roomImages != null) {
      _result.roomImages.addAll(roomImages);
    }
    if (amenities != null) {
      _result.amenities.addAll(amenities);
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory RoomType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomType clone() => RoomType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomType copyWith(void Function(RoomType) updates) => super.copyWith((message) => updates(message as RoomType)) as RoomType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomType create() => RoomType._();
  RoomType createEmptyInstance() => create();
  static $pb.PbList<RoomType> createRepeated() => $pb.PbList<RoomType>();
  @$core.pragma('dart2js:noInline')
  static RoomType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomType>(create);
  static RoomType? _defaultInstance;

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
  $core.int get maxGuest => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxGuest($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxGuest() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxGuest() => clearField(3);

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
  $core.List<Amenity> get amenities => $_getList(5);

  @$pb.TagNumber(7)
  $core.int get quantity => $_getIZ(6);
  @$pb.TagNumber(7)
  set quantity($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuantity() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuantity() => clearField(7);
}

enum TripTemplate_ResidenceId {
  hotelId, 
  liveaboardId, 
  notSet
}

class TripTemplate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TripTemplate_ResidenceId> _TripTemplate_ResidenceIdByTag = {
    8 : TripTemplate_ResidenceId.hotelId,
    9 : TripTemplate_ResidenceId.liveaboardId,
    0 : TripTemplate_ResidenceId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..oo(0, [8, 9])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divingBoatId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$6.File>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..e<$6.TripType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: $6.TripType.ONSHORE, valueOf: $6.TripType.valueOf, enumValues: $6.TripType.values)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  TripTemplate._() : super();
  factory TripTemplate({
    $core.String? name,
    $core.String? description,
    $fixnum.Int64? divingBoatId,
    $core.Iterable<$6.File>? images,
    $6.TripType? tripType,
    $fixnum.Int64? hotelId,
    $fixnum.Int64? liveaboardId,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (divingBoatId != null) {
      _result.divingBoatId = divingBoatId;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (tripType != null) {
      _result.tripType = tripType;
    }
    if (hotelId != null) {
      _result.hotelId = hotelId;
    }
    if (liveaboardId != null) {
      _result.liveaboardId = liveaboardId;
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

  TripTemplate_ResidenceId whichResidenceId() => _TripTemplate_ResidenceIdByTag[$_whichOneof(0)]!;
  void clearResidenceId() => clearField($_whichOneof(0));

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
  $fixnum.Int64 get divingBoatId => $_getI64(2);
  @$pb.TagNumber(3)
  set divingBoatId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDivingBoatId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDivingBoatId() => clearField(3);

  @$pb.TagNumber(5)
  $core.List<$6.File> get images => $_getList(3);

  @$pb.TagNumber(6)
  $6.TripType get tripType => $_getN(4);
  @$pb.TagNumber(6)
  set tripType($6.TripType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTripType() => $_has(4);
  @$pb.TagNumber(6)
  void clearTripType() => clearField(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get hotelId => $_getI64(5);
  @$pb.TagNumber(8)
  set hotelId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasHotelId() => $_has(5);
  @$pb.TagNumber(8)
  void clearHotelId() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get liveaboardId => $_getI64(6);
  @$pb.TagNumber(9)
  set liveaboardId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasLiveaboardId() => $_has(6);
  @$pb.TagNumber(9)
  void clearLiveaboardId() => clearField(9);
}

class Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Trip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<$5.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', subBuilder: $5.Timestamp.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxCapacity', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..p<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMasterIds', $pb.PbFieldType.PU6)
    ..aOM<$5.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReservationDate', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Trip._() : super();
  factory Trip({
    $5.Timestamp? from,
    $5.Timestamp? to,
    $core.int? maxCapacity,
    $core.double? price,
    $core.Iterable<$fixnum.Int64>? diveMasterIds,
    $5.Timestamp? lastReservationDate,
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
    if (price != null) {
      _result.price = price;
    }
    if (diveMasterIds != null) {
      _result.diveMasterIds.addAll(diveMasterIds);
    }
    if (lastReservationDate != null) {
      _result.lastReservationDate = lastReservationDate;
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
  set maxCapacity($core.int v) { $_setUnsignedInt32(2, v); }
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
  $core.List<$fixnum.Int64> get diveMasterIds => $_getList(4);

  @$pb.TagNumber(6)
  $5.Timestamp get lastReservationDate => $_getN(5);
  @$pb.TagNumber(6)
  set lastReservationDate($5.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastReservationDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastReservationDate() => clearField(6);
  @$pb.TagNumber(6)
  $5.Timestamp ensureLastReservationDate() => $_ensure(5);
}

class Hotel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hotel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelName')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'star', $pb.PbFieldType.OU3)
    ..pc<$6.File>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..pc<RoomType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomTypes', $pb.PbFieldType.PM, subBuilder: RoomType.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelDescription')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<$6.Address>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
    ..hasRequiredFields = false
  ;

  Hotel._() : super();
  factory Hotel({
    $core.String? hotelName,
    $core.int? star,
    $core.Iterable<$6.File>? images,
    $core.Iterable<RoomType>? roomTypes,
    $core.String? hotelDescription,
    $core.String? phone,
    $6.Address? address,
  }) {
    final _result = create();
    if (hotelName != null) {
      _result.hotelName = hotelName;
    }
    if (star != null) {
      _result.star = star;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (roomTypes != null) {
      _result.roomTypes.addAll(roomTypes);
    }
    if (hotelDescription != null) {
      _result.hotelDescription = hotelDescription;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (address != null) {
      _result.address = address;
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
  set star($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStar() => $_has(1);
  @$pb.TagNumber(2)
  void clearStar() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<$6.File> get images => $_getList(2);

  @$pb.TagNumber(5)
  $core.List<RoomType> get roomTypes => $_getList(3);

  @$pb.TagNumber(6)
  $core.String get hotelDescription => $_getSZ(4);
  @$pb.TagNumber(6)
  set hotelDescription($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasHotelDescription() => $_has(4);
  @$pb.TagNumber(6)
  void clearHotelDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get phone => $_getSZ(5);
  @$pb.TagNumber(7)
  set phone($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasPhone() => $_has(5);
  @$pb.TagNumber(7)
  void clearPhone() => clearField(7);

  @$pb.TagNumber(8)
  $6.Address get address => $_getN(6);
  @$pb.TagNumber(8)
  set address($6.Address v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(8)
  void clearAddress() => clearField(8);
  @$pb.TagNumber(8)
  $6.Address ensureAddress() => $_ensure(6);
}

class Liveaboard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Liveaboard', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'length', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OU3)
    ..pc<$6.File>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..pc<RoomType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomTypes', $pb.PbFieldType.PM, subBuilder: RoomType.create)
    ..hasRequiredFields = false
  ;

  Liveaboard._() : super();
  factory Liveaboard({
    $core.String? name,
    $core.String? description,
    $core.int? length,
    $core.int? width,
    $core.Iterable<$6.File>? images,
    $core.Iterable<RoomType>? roomTypes,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
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
    if (images != null) {
      _result.images.addAll(images);
    }
    if (roomTypes != null) {
      _result.roomTypes.addAll(roomTypes);
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
  $core.int get length => $_getIZ(2);
  @$pb.TagNumber(3)
  set length($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearLength() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get width => $_getIZ(3);
  @$pb.TagNumber(4)
  set width($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearWidth() => clearField(4);

  @$pb.TagNumber(6)
  $core.List<$6.File> get images => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<RoomType> get roomTypes => $_getList(5);
}

class AddDiveMasterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddDiveMasterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<DiveMaster>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMaster', subBuilder: DiveMaster.create)
    ..hasRequiredFields = false
  ;

  AddDiveMasterRequest._() : super();
  factory AddDiveMasterRequest({
    DiveMaster? diveMaster,
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
  DiveMaster get diveMaster => $_getN(0);
  @$pb.TagNumber(1)
  set diveMaster(DiveMaster v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiveMaster() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiveMaster() => clearField(1);
  @$pb.TagNumber(1)
  DiveMaster ensureDiveMaster() => $_ensure(0);
}

class AddStaffRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddStaffRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<Staff>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staff', subBuilder: Staff.create)
    ..hasRequiredFields = false
  ;

  AddStaffRequest._() : super();
  factory AddStaffRequest({
    Staff? staff,
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
  Staff get staff => $_getN(0);
  @$pb.TagNumber(1)
  set staff(Staff v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStaff() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaff() => clearField(1);
  @$pb.TagNumber(1)
  Staff ensureStaff() => $_ensure(0);
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
    ..hasRequiredFields = false
  ;

  AddTripRequest._() : super();
  factory AddTripRequest({
    Trip? trip,
    TripTemplate? tripTemplate,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (tripTemplate != null) {
      _result.tripTemplate = tripTemplate;
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
}

class AddDivingBoatRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddDivingBoatRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<DivingBoat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divingBoat', subBuilder: DivingBoat.create)
    ..hasRequiredFields = false
  ;

  AddDivingBoatRequest._() : super();
  factory AddDivingBoatRequest({
    DivingBoat? divingBoat,
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
  DivingBoat get divingBoat => $_getN(0);
  @$pb.TagNumber(1)
  set divingBoat(DivingBoat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDivingBoat() => $_has(0);
  @$pb.TagNumber(1)
  void clearDivingBoat() => clearField(1);
  @$pb.TagNumber(1)
  DivingBoat ensureDivingBoat() => $_ensure(0);
}

class AddHotelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddHotelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<Hotel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: Hotel.create)
    ..hasRequiredFields = false
  ;

  AddHotelRequest._() : super();
  factory AddHotelRequest({
    Hotel? hotel,
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
  Hotel get hotel => $_getN(0);
  @$pb.TagNumber(1)
  set hotel(Hotel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotel() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotel() => clearField(1);
  @$pb.TagNumber(1)
  Hotel ensureHotel() => $_ensure(0);
}

class AddLiveaboardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddLiveaboardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<Liveaboard>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: Liveaboard.create)
    ..hasRequiredFields = false
  ;

  AddLiveaboardRequest._() : super();
  factory AddLiveaboardRequest({
    Liveaboard? liveaboard,
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
  Liveaboard get liveaboard => $_getN(0);
  @$pb.TagNumber(1)
  set liveaboard(Liveaboard v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiveaboard() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveaboard() => clearField(1);
  @$pb.TagNumber(1)
  Liveaboard ensureLiveaboard() => $_ensure(0);
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

class ListBoatsResponse_Boat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListBoatsResponse.Boat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<$6.File>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOM<$5.Timestamp>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListBoatsResponse_Boat._() : super();
  factory ListBoatsResponse_Boat({
    $fixnum.Int64? id,
    $core.String? name,
    $core.Iterable<$6.File>? images,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
    }
    return _result;
  }
  factory ListBoatsResponse_Boat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListBoatsResponse_Boat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListBoatsResponse_Boat clone() => ListBoatsResponse_Boat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListBoatsResponse_Boat copyWith(void Function(ListBoatsResponse_Boat) updates) => super.copyWith((message) => updates(message as ListBoatsResponse_Boat)) as ListBoatsResponse_Boat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListBoatsResponse_Boat create() => ListBoatsResponse_Boat._();
  ListBoatsResponse_Boat createEmptyInstance() => create();
  static $pb.PbList<ListBoatsResponse_Boat> createRepeated() => $pb.PbList<ListBoatsResponse_Boat>();
  @$core.pragma('dart2js:noInline')
  static ListBoatsResponse_Boat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBoatsResponse_Boat>(create);
  static ListBoatsResponse_Boat? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(10)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(10)
  void clearName() => clearField(10);

  @$pb.TagNumber(20)
  $core.List<$6.File> get images => $_getList(2);

  @$pb.TagNumber(30)
  $5.Timestamp get createdOn => $_getN(3);
  @$pb.TagNumber(30)
  set createdOn($5.Timestamp v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasCreatedOn() => $_has(3);
  @$pb.TagNumber(30)
  void clearCreatedOn() => clearField(30);
  @$pb.TagNumber(30)
  $5.Timestamp ensureCreatedOn() => $_ensure(3);

  @$pb.TagNumber(40)
  $5.Timestamp get updatedOn => $_getN(4);
  @$pb.TagNumber(40)
  set updatedOn($5.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasUpdatedOn() => $_has(4);
  @$pb.TagNumber(40)
  void clearUpdatedOn() => clearField(40);
  @$pb.TagNumber(40)
  $5.Timestamp ensureUpdatedOn() => $_ensure(4);
}

class ListBoatsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListBoatsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListBoatsResponse_Boat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boat', subBuilder: ListBoatsResponse_Boat.create)
    ..hasRequiredFields = false
  ;

  ListBoatsResponse._() : super();
  factory ListBoatsResponse({
    ListBoatsResponse_Boat? boat,
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
  ListBoatsResponse_Boat get boat => $_getN(0);
  @$pb.TagNumber(1)
  set boat(ListBoatsResponse_Boat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoat() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoat() => clearField(1);
  @$pb.TagNumber(1)
  ListBoatsResponse_Boat ensureBoat() => $_ensure(0);
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

class ListDiveMastersResponse_DiveMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDiveMastersResponse.DiveMaster', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..e<$6.LevelType>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: $6.LevelType.INSTRUCTOR, valueOf: $6.LevelType.valueOf, enumValues: $6.LevelType.values)
    ..pc<$6.File>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListDiveMastersResponse_DiveMaster._() : super();
  factory ListDiveMastersResponse_DiveMaster({
    $fixnum.Int64? id,
    $core.String? firstName,
    $core.String? lastName,
    $6.LevelType? level,
    $core.Iterable<$6.File>? documents,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (level != null) {
      _result.level = level;
    }
    if (documents != null) {
      _result.documents.addAll(documents);
    }
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
    }
    return _result;
  }
  factory ListDiveMastersResponse_DiveMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDiveMastersResponse_DiveMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDiveMastersResponse_DiveMaster clone() => ListDiveMastersResponse_DiveMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDiveMastersResponse_DiveMaster copyWith(void Function(ListDiveMastersResponse_DiveMaster) updates) => super.copyWith((message) => updates(message as ListDiveMastersResponse_DiveMaster)) as ListDiveMastersResponse_DiveMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDiveMastersResponse_DiveMaster create() => ListDiveMastersResponse_DiveMaster._();
  ListDiveMastersResponse_DiveMaster createEmptyInstance() => create();
  static $pb.PbList<ListDiveMastersResponse_DiveMaster> createRepeated() => $pb.PbList<ListDiveMastersResponse_DiveMaster>();
  @$core.pragma('dart2js:noInline')
  static ListDiveMastersResponse_DiveMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDiveMastersResponse_DiveMaster>(create);
  static ListDiveMastersResponse_DiveMaster? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(10)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(10)
  void clearFirstName() => clearField(10);

  @$pb.TagNumber(20)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(20)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(20)
  void clearLastName() => clearField(20);

  @$pb.TagNumber(30)
  $6.LevelType get level => $_getN(3);
  @$pb.TagNumber(30)
  set level($6.LevelType v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasLevel() => $_has(3);
  @$pb.TagNumber(30)
  void clearLevel() => clearField(30);

  @$pb.TagNumber(40)
  $core.List<$6.File> get documents => $_getList(4);

  @$pb.TagNumber(50)
  $5.Timestamp get createdOn => $_getN(5);
  @$pb.TagNumber(50)
  set createdOn($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedOn() => $_has(5);
  @$pb.TagNumber(50)
  void clearCreatedOn() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureCreatedOn() => $_ensure(5);

  @$pb.TagNumber(60)
  $5.Timestamp get updatedOn => $_getN(6);
  @$pb.TagNumber(60)
  set updatedOn($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedOn() => $_has(6);
  @$pb.TagNumber(60)
  void clearUpdatedOn() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureUpdatedOn() => $_ensure(6);
}

class ListDiveMastersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDiveMastersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListDiveMastersResponse_DiveMaster>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMaster', subBuilder: ListDiveMastersResponse_DiveMaster.create)
    ..hasRequiredFields = false
  ;

  ListDiveMastersResponse._() : super();
  factory ListDiveMastersResponse({
    ListDiveMastersResponse_DiveMaster? diveMaster,
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
  ListDiveMastersResponse_DiveMaster get diveMaster => $_getN(0);
  @$pb.TagNumber(1)
  set diveMaster(ListDiveMastersResponse_DiveMaster v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiveMaster() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiveMaster() => clearField(1);
  @$pb.TagNumber(1)
  ListDiveMastersResponse_DiveMaster ensureDiveMaster() => $_ensure(0);
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

class ListHotelsResponse_Hotel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListHotelsResponse.Hotel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..aOS(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<$6.Address>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
    ..pc<$6.File>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListHotelsResponse_Hotel._() : super();
  factory ListHotelsResponse_Hotel({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.int? stars,
    $core.String? phone,
    $6.Address? address,
    $core.Iterable<$6.File>? images,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (stars != null) {
      _result.stars = stars;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (address != null) {
      _result.address = address;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
    }
    return _result;
  }
  factory ListHotelsResponse_Hotel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHotelsResponse_Hotel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHotelsResponse_Hotel clone() => ListHotelsResponse_Hotel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHotelsResponse_Hotel copyWith(void Function(ListHotelsResponse_Hotel) updates) => super.copyWith((message) => updates(message as ListHotelsResponse_Hotel)) as ListHotelsResponse_Hotel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHotelsResponse_Hotel create() => ListHotelsResponse_Hotel._();
  ListHotelsResponse_Hotel createEmptyInstance() => create();
  static $pb.PbList<ListHotelsResponse_Hotel> createRepeated() => $pb.PbList<ListHotelsResponse_Hotel>();
  @$core.pragma('dart2js:noInline')
  static ListHotelsResponse_Hotel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHotelsResponse_Hotel>(create);
  static ListHotelsResponse_Hotel? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(10)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(10)
  void clearName() => clearField(10);

  @$pb.TagNumber(20)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(20)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(20)
  void clearDescription() => clearField(20);

  @$pb.TagNumber(30)
  $core.int get stars => $_getIZ(3);
  @$pb.TagNumber(30)
  set stars($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasStars() => $_has(3);
  @$pb.TagNumber(30)
  void clearStars() => clearField(30);

  @$pb.TagNumber(40)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(40)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(40)
  void clearPhone() => clearField(40);

  @$pb.TagNumber(50)
  $6.Address get address => $_getN(5);
  @$pb.TagNumber(50)
  set address($6.Address v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasAddress() => $_has(5);
  @$pb.TagNumber(50)
  void clearAddress() => clearField(50);
  @$pb.TagNumber(50)
  $6.Address ensureAddress() => $_ensure(5);

  @$pb.TagNumber(60)
  $core.List<$6.File> get images => $_getList(6);

  @$pb.TagNumber(70)
  $5.Timestamp get createdOn => $_getN(7);
  @$pb.TagNumber(70)
  set createdOn($5.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasCreatedOn() => $_has(7);
  @$pb.TagNumber(70)
  void clearCreatedOn() => clearField(70);
  @$pb.TagNumber(70)
  $5.Timestamp ensureCreatedOn() => $_ensure(7);

  @$pb.TagNumber(80)
  $5.Timestamp get updatedOn => $_getN(8);
  @$pb.TagNumber(80)
  set updatedOn($5.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasUpdatedOn() => $_has(8);
  @$pb.TagNumber(80)
  void clearUpdatedOn() => clearField(80);
  @$pb.TagNumber(80)
  $5.Timestamp ensureUpdatedOn() => $_ensure(8);
}

class ListHotelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListHotelsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListHotelsResponse_Hotel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: ListHotelsResponse_Hotel.create)
    ..hasRequiredFields = false
  ;

  ListHotelsResponse._() : super();
  factory ListHotelsResponse({
    ListHotelsResponse_Hotel? hotel,
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
  ListHotelsResponse_Hotel get hotel => $_getN(0);
  @$pb.TagNumber(1)
  set hotel(ListHotelsResponse_Hotel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotel() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotel() => clearField(1);
  @$pb.TagNumber(1)
  ListHotelsResponse_Hotel ensureHotel() => $_ensure(0);
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

class ListLiveaboardsResponse_Liveaboard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLiveaboardsResponse.Liveaboard', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.double>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'length', $pb.PbFieldType.OF)
    ..a<$core.double>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OF)
    ..pc<$6.File>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListLiveaboardsResponse_Liveaboard._() : super();
  factory ListLiveaboardsResponse_Liveaboard({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.double? length,
    $core.double? width,
    $core.Iterable<$6.File>? images,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
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
    if (images != null) {
      _result.images.addAll(images);
    }
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
    }
    return _result;
  }
  factory ListLiveaboardsResponse_Liveaboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLiveaboardsResponse_Liveaboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLiveaboardsResponse_Liveaboard clone() => ListLiveaboardsResponse_Liveaboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLiveaboardsResponse_Liveaboard copyWith(void Function(ListLiveaboardsResponse_Liveaboard) updates) => super.copyWith((message) => updates(message as ListLiveaboardsResponse_Liveaboard)) as ListLiveaboardsResponse_Liveaboard; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLiveaboardsResponse_Liveaboard create() => ListLiveaboardsResponse_Liveaboard._();
  ListLiveaboardsResponse_Liveaboard createEmptyInstance() => create();
  static $pb.PbList<ListLiveaboardsResponse_Liveaboard> createRepeated() => $pb.PbList<ListLiveaboardsResponse_Liveaboard>();
  @$core.pragma('dart2js:noInline')
  static ListLiveaboardsResponse_Liveaboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLiveaboardsResponse_Liveaboard>(create);
  static ListLiveaboardsResponse_Liveaboard? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(10)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(10)
  void clearName() => clearField(10);

  @$pb.TagNumber(20)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(20)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(20)
  void clearDescription() => clearField(20);

  @$pb.TagNumber(30)
  $core.double get length => $_getN(3);
  @$pb.TagNumber(30)
  set length($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasLength() => $_has(3);
  @$pb.TagNumber(30)
  void clearLength() => clearField(30);

  @$pb.TagNumber(40)
  $core.double get width => $_getN(4);
  @$pb.TagNumber(40)
  set width($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasWidth() => $_has(4);
  @$pb.TagNumber(40)
  void clearWidth() => clearField(40);

  @$pb.TagNumber(50)
  $core.List<$6.File> get images => $_getList(5);

  @$pb.TagNumber(60)
  $5.Timestamp get createdOn => $_getN(6);
  @$pb.TagNumber(60)
  set createdOn($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasCreatedOn() => $_has(6);
  @$pb.TagNumber(60)
  void clearCreatedOn() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureCreatedOn() => $_ensure(6);

  @$pb.TagNumber(70)
  $5.Timestamp get updatedOn => $_getN(7);
  @$pb.TagNumber(70)
  set updatedOn($5.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasUpdatedOn() => $_has(7);
  @$pb.TagNumber(70)
  void clearUpdatedOn() => clearField(70);
  @$pb.TagNumber(70)
  $5.Timestamp ensureUpdatedOn() => $_ensure(7);
}

class ListLiveaboardsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLiveaboardsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListLiveaboardsResponse_Liveaboard>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboard', subBuilder: ListLiveaboardsResponse_Liveaboard.create)
    ..hasRequiredFields = false
  ;

  ListLiveaboardsResponse._() : super();
  factory ListLiveaboardsResponse({
    ListLiveaboardsResponse_Liveaboard? liveaboard,
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
  ListLiveaboardsResponse_Liveaboard get liveaboard => $_getN(0);
  @$pb.TagNumber(1)
  set liveaboard(ListLiveaboardsResponse_Liveaboard v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiveaboard() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveaboard() => clearField(1);
  @$pb.TagNumber(1)
  ListLiveaboardsResponse_Liveaboard ensureLiveaboard() => $_ensure(0);
}

