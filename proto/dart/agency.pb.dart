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
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<$6.File>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatImages', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffCapacity', $pb.PbFieldType.OU3)
    ..aOM<$6.Address>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
    ..hasRequiredFields = false
  ;

  DivingBoat._() : super();
  factory DivingBoat({
    $core.String? name,
    $core.Iterable<$6.File>? boatImages,
    $core.String? description,
    $core.int? totalCapacity,
    $core.int? diverCapacity,
    $core.int? staffCapacity,
    $6.Address? address,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (boatImages != null) {
      _result.boatImages.addAll(boatImages);
    }
    if (description != null) {
      _result.description = description;
    }
    if (totalCapacity != null) {
      _result.totalCapacity = totalCapacity;
    }
    if (diverCapacity != null) {
      _result.diverCapacity = diverCapacity;
    }
    if (staffCapacity != null) {
      _result.staffCapacity = staffCapacity;
    }
    if (address != null) {
      _result.address = address;
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$6.File> get boatImages => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalCapacity => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalCapacity($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalCapacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalCapacity() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get diverCapacity => $_getIZ(4);
  @$pb.TagNumber(5)
  set diverCapacity($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiverCapacity() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiverCapacity() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get staffCapacity => $_getIZ(5);
  @$pb.TagNumber(6)
  set staffCapacity($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStaffCapacity() => $_has(5);
  @$pb.TagNumber(6)
  void clearStaffCapacity() => clearField(6);

  @$pb.TagNumber(7)
  $6.Address get address => $_getN(6);
  @$pb.TagNumber(7)
  set address($6.Address v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearAddress() => clearField(7);
  @$pb.TagNumber(7)
  $6.Address ensureAddress() => $_ensure(6);
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

class HotelAndBoatId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HotelAndBoatId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  HotelAndBoatId._() : super();
  factory HotelAndBoatId({
    $fixnum.Int64? hotelId,
    $fixnum.Int64? boatId,
  }) {
    final _result = create();
    if (hotelId != null) {
      _result.hotelId = hotelId;
    }
    if (boatId != null) {
      _result.boatId = boatId;
    }
    return _result;
  }
  factory HotelAndBoatId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HotelAndBoatId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HotelAndBoatId clone() => HotelAndBoatId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HotelAndBoatId copyWith(void Function(HotelAndBoatId) updates) => super.copyWith((message) => updates(message as HotelAndBoatId)) as HotelAndBoatId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HotelAndBoatId create() => HotelAndBoatId._();
  HotelAndBoatId createEmptyInstance() => create();
  static $pb.PbList<HotelAndBoatId> createRepeated() => $pb.PbList<HotelAndBoatId>();
  @$core.pragma('dart2js:noInline')
  static HotelAndBoatId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotelAndBoatId>(create);
  static HotelAndBoatId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get hotelId => $_getI64(0);
  @$pb.TagNumber(1)
  set hotelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotelId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get boatId => $_getI64(1);
  @$pb.TagNumber(2)
  set boatId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBoatId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoatId() => clearField(2);
}

enum TripTemplate_ResidenceId {
  hotelAndBoatId, 
  liveaboardId, 
  notSet
}

class TripTemplate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TripTemplate_ResidenceId> _TripTemplate_ResidenceIdByTag = {
    8 : TripTemplate_ResidenceId.hotelAndBoatId,
    9 : TripTemplate_ResidenceId.liveaboardId,
    0 : TripTemplate_ResidenceId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..oo(0, [8, 9])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<$6.File>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..e<$6.TripType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: $6.TripType.ONSHORE, valueOf: $6.TripType.valueOf, enumValues: $6.TripType.values)
    ..aOM<HotelAndBoatId>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelAndBoatId', subBuilder: HotelAndBoatId.create)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$6.Address>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
    ..hasRequiredFields = false
  ;

  TripTemplate._() : super();
  factory TripTemplate({
    $core.String? name,
    $core.String? description,
    $core.Iterable<$6.File>? images,
    $6.TripType? tripType,
    HotelAndBoatId? hotelAndBoatId,
    $fixnum.Int64? liveaboardId,
    $6.Address? address,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (tripType != null) {
      _result.tripType = tripType;
    }
    if (hotelAndBoatId != null) {
      _result.hotelAndBoatId = hotelAndBoatId;
    }
    if (liveaboardId != null) {
      _result.liveaboardId = liveaboardId;
    }
    if (address != null) {
      _result.address = address;
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

  @$pb.TagNumber(5)
  $core.List<$6.File> get images => $_getList(2);

  @$pb.TagNumber(6)
  $6.TripType get tripType => $_getN(3);
  @$pb.TagNumber(6)
  set tripType($6.TripType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTripType() => $_has(3);
  @$pb.TagNumber(6)
  void clearTripType() => clearField(6);

  @$pb.TagNumber(8)
  HotelAndBoatId get hotelAndBoatId => $_getN(4);
  @$pb.TagNumber(8)
  set hotelAndBoatId(HotelAndBoatId v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasHotelAndBoatId() => $_has(4);
  @$pb.TagNumber(8)
  void clearHotelAndBoatId() => clearField(8);
  @$pb.TagNumber(8)
  HotelAndBoatId ensureHotelAndBoatId() => $_ensure(4);

  @$pb.TagNumber(9)
  $fixnum.Int64 get liveaboardId => $_getI64(5);
  @$pb.TagNumber(9)
  set liveaboardId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasLiveaboardId() => $_has(5);
  @$pb.TagNumber(9)
  void clearLiveaboardId() => clearField(9);

  @$pb.TagNumber(20)
  $6.Address get address => $_getN(6);
  @$pb.TagNumber(20)
  set address($6.Address v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(20)
  void clearAddress() => clearField(20);
  @$pb.TagNumber(20)
  $6.Address ensureAddress() => $_ensure(6);
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
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverRooms', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffRooms', $pb.PbFieldType.OU3)
    ..aOM<$6.Address>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
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
    $core.int? totalCapacity,
    $core.int? diverRooms,
    $core.int? staffRooms,
    $6.Address? address,
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
    if (totalCapacity != null) {
      _result.totalCapacity = totalCapacity;
    }
    if (diverRooms != null) {
      _result.diverRooms = diverRooms;
    }
    if (staffRooms != null) {
      _result.staffRooms = staffRooms;
    }
    if (address != null) {
      _result.address = address;
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

  @$pb.TagNumber(8)
  $core.int get totalCapacity => $_getIZ(6);
  @$pb.TagNumber(8)
  set totalCapacity($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalCapacity() => $_has(6);
  @$pb.TagNumber(8)
  void clearTotalCapacity() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get diverRooms => $_getIZ(7);
  @$pb.TagNumber(9)
  set diverRooms($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasDiverRooms() => $_has(7);
  @$pb.TagNumber(9)
  void clearDiverRooms() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get staffRooms => $_getIZ(8);
  @$pb.TagNumber(10)
  set staffRooms($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasStaffRooms() => $_has(8);
  @$pb.TagNumber(10)
  void clearStaffRooms() => clearField(10);

  @$pb.TagNumber(11)
  $6.Address get address => $_getN(9);
  @$pb.TagNumber(11)
  set address($6.Address v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasAddress() => $_has(9);
  @$pb.TagNumber(11)
  void clearAddress() => clearField(11);
  @$pb.TagNumber(11)
  $6.Address ensureAddress() => $_ensure(9);
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
    ..a<$core.int>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffCapacity', $pb.PbFieldType.OU3)
    ..aOM<$5.Timestamp>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListBoatsResponse_Boat._() : super();
  factory ListBoatsResponse_Boat({
    $fixnum.Int64? id,
    $core.String? name,
    $core.Iterable<$6.File>? images,
    $core.int? totalCapacity,
    $core.int? diverCapacity,
    $core.int? staffCapacity,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (totalCapacity != null) {
      _result.totalCapacity = totalCapacity;
    }
    if (diverCapacity != null) {
      _result.diverCapacity = diverCapacity;
    }
    if (staffCapacity != null) {
      _result.staffCapacity = staffCapacity;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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

  @$pb.TagNumber(21)
  $core.int get totalCapacity => $_getIZ(3);
  @$pb.TagNumber(21)
  set totalCapacity($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(21)
  $core.bool hasTotalCapacity() => $_has(3);
  @$pb.TagNumber(21)
  void clearTotalCapacity() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get diverCapacity => $_getIZ(4);
  @$pb.TagNumber(22)
  set diverCapacity($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(22)
  $core.bool hasDiverCapacity() => $_has(4);
  @$pb.TagNumber(22)
  void clearDiverCapacity() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get staffCapacity => $_getIZ(5);
  @$pb.TagNumber(23)
  set staffCapacity($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(23)
  $core.bool hasStaffCapacity() => $_has(5);
  @$pb.TagNumber(23)
  void clearStaffCapacity() => clearField(23);

  @$pb.TagNumber(30)
  $5.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(30)
  set createdAt($5.Timestamp v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(30)
  void clearCreatedAt() => clearField(30);
  @$pb.TagNumber(30)
  $5.Timestamp ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(40)
  $5.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(40)
  set updatedAt($5.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(40)
  void clearUpdatedAt() => clearField(40);
  @$pb.TagNumber(40)
  $5.Timestamp ensureUpdatedAt() => $_ensure(7);
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
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListDiveMastersResponse_DiveMaster._() : super();
  factory ListDiveMastersResponse_DiveMaster({
    $fixnum.Int64? id,
    $core.String? firstName,
    $core.String? lastName,
    $6.LevelType? level,
    $core.Iterable<$6.File>? documents,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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
  $5.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(50)
  set createdAt($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearCreatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(60)
  $5.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(60)
  set updatedAt($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(60)
  void clearUpdatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureUpdatedAt() => $_ensure(6);
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
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
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
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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
  $5.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(70)
  set createdAt($5.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(70)
  void clearCreatedAt() => clearField(70);
  @$pb.TagNumber(70)
  $5.Timestamp ensureCreatedAt() => $_ensure(7);

  @$pb.TagNumber(80)
  $5.Timestamp get updatedAt => $_getN(8);
  @$pb.TagNumber(80)
  set updatedAt($5.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(80)
  void clearUpdatedAt() => clearField(80);
  @$pb.TagNumber(80)
  $5.Timestamp ensureUpdatedAt() => $_ensure(8);
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
    ..a<$core.int>(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverRooms', $pb.PbFieldType.OU3)
    ..a<$core.int>(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffRooms', $pb.PbFieldType.OU3)
    ..aOM<$6.Address>(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
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
    $core.int? totalCapacity,
    $core.int? diverRooms,
    $core.int? staffRooms,
    $6.Address? address,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (totalCapacity != null) {
      _result.totalCapacity = totalCapacity;
    }
    if (diverRooms != null) {
      _result.diverRooms = diverRooms;
    }
    if (staffRooms != null) {
      _result.staffRooms = staffRooms;
    }
    if (address != null) {
      _result.address = address;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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

  @$pb.TagNumber(51)
  $core.int get totalCapacity => $_getIZ(6);
  @$pb.TagNumber(51)
  set totalCapacity($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(51)
  $core.bool hasTotalCapacity() => $_has(6);
  @$pb.TagNumber(51)
  void clearTotalCapacity() => clearField(51);

  @$pb.TagNumber(52)
  $core.int get diverRooms => $_getIZ(7);
  @$pb.TagNumber(52)
  set diverRooms($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(52)
  $core.bool hasDiverRooms() => $_has(7);
  @$pb.TagNumber(52)
  void clearDiverRooms() => clearField(52);

  @$pb.TagNumber(53)
  $core.int get staffRooms => $_getIZ(8);
  @$pb.TagNumber(53)
  set staffRooms($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(53)
  $core.bool hasStaffRooms() => $_has(8);
  @$pb.TagNumber(53)
  void clearStaffRooms() => clearField(53);

  @$pb.TagNumber(54)
  $6.Address get address => $_getN(9);
  @$pb.TagNumber(54)
  set address($6.Address v) { setField(54, v); }
  @$pb.TagNumber(54)
  $core.bool hasAddress() => $_has(9);
  @$pb.TagNumber(54)
  void clearAddress() => clearField(54);
  @$pb.TagNumber(54)
  $6.Address ensureAddress() => $_ensure(9);

  @$pb.TagNumber(60)
  $5.Timestamp get createdAt => $_getN(10);
  @$pb.TagNumber(60)
  set createdAt($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(60)
  void clearCreatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureCreatedAt() => $_ensure(10);

  @$pb.TagNumber(70)
  $5.Timestamp get updatedAt => $_getN(11);
  @$pb.TagNumber(70)
  set updatedAt($5.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasUpdatedAt() => $_has(11);
  @$pb.TagNumber(70)
  void clearUpdatedAt() => clearField(70);
  @$pb.TagNumber(70)
  $5.Timestamp ensureUpdatedAt() => $_ensure(11);
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

class ListStaffsResponse_Staff extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListStaffsResponse.Staff', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position')
    ..e<$6.GenderType>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: $6.GenderType.FEMALE, valueOf: $6.GenderType.valueOf, enumValues: $6.GenderType.values)
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListStaffsResponse_Staff._() : super();
  factory ListStaffsResponse_Staff({
    $fixnum.Int64? id,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? position,
    $6.GenderType? gender,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (position != null) {
      _result.position = position;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory ListStaffsResponse_Staff.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStaffsResponse_Staff.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStaffsResponse_Staff clone() => ListStaffsResponse_Staff()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStaffsResponse_Staff copyWith(void Function(ListStaffsResponse_Staff) updates) => super.copyWith((message) => updates(message as ListStaffsResponse_Staff)) as ListStaffsResponse_Staff; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListStaffsResponse_Staff create() => ListStaffsResponse_Staff._();
  ListStaffsResponse_Staff createEmptyInstance() => create();
  static $pb.PbList<ListStaffsResponse_Staff> createRepeated() => $pb.PbList<ListStaffsResponse_Staff>();
  @$core.pragma('dart2js:noInline')
  static ListStaffsResponse_Staff getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStaffsResponse_Staff>(create);
  static ListStaffsResponse_Staff? _defaultInstance;

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
  $core.String get position => $_getSZ(3);
  @$pb.TagNumber(30)
  set position($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(30)
  void clearPosition() => clearField(30);

  @$pb.TagNumber(40)
  $6.GenderType get gender => $_getN(4);
  @$pb.TagNumber(40)
  set gender($6.GenderType v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(40)
  void clearGender() => clearField(40);

  @$pb.TagNumber(50)
  $5.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(50)
  set createdAt($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearCreatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(60)
  $5.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(60)
  set updatedAt($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(60)
  void clearUpdatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureUpdatedAt() => $_ensure(6);
}

class ListStaffsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListStaffsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListStaffsResponse_Staff>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staff', subBuilder: ListStaffsResponse_Staff.create)
    ..hasRequiredFields = false
  ;

  ListStaffsResponse._() : super();
  factory ListStaffsResponse({
    ListStaffsResponse_Staff? staff,
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
  ListStaffsResponse_Staff get staff => $_getN(0);
  @$pb.TagNumber(1)
  set staff(ListStaffsResponse_Staff v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStaff() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaff() => clearField(1);
  @$pb.TagNumber(1)
  ListStaffsResponse_Staff ensureStaff() => $_ensure(0);
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

class ListTripTemplatesResponse_TripTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripTemplatesResponse.TripTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<$6.TripType>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: $6.TripType.ONSHORE, valueOf: $6.TripType.valueOf, enumValues: $6.TripType.values)
    ..a<$fixnum.Int64>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$6.File>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListTripTemplatesResponse_TripTemplate._() : super();
  factory ListTripTemplatesResponse_TripTemplate({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $6.TripType? tripType,
    $fixnum.Int64? hotelId,
    $fixnum.Int64? boatId,
    $fixnum.Int64? liveaboardId,
    $core.Iterable<$6.File>? images,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (tripType != null) {
      _result.tripType = tripType;
    }
    if (hotelId != null) {
      _result.hotelId = hotelId;
    }
    if (boatId != null) {
      _result.boatId = boatId;
    }
    if (liveaboardId != null) {
      _result.liveaboardId = liveaboardId;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory ListTripTemplatesResponse_TripTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripTemplatesResponse_TripTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripTemplatesResponse_TripTemplate clone() => ListTripTemplatesResponse_TripTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripTemplatesResponse_TripTemplate copyWith(void Function(ListTripTemplatesResponse_TripTemplate) updates) => super.copyWith((message) => updates(message as ListTripTemplatesResponse_TripTemplate)) as ListTripTemplatesResponse_TripTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripTemplatesResponse_TripTemplate create() => ListTripTemplatesResponse_TripTemplate._();
  ListTripTemplatesResponse_TripTemplate createEmptyInstance() => create();
  static $pb.PbList<ListTripTemplatesResponse_TripTemplate> createRepeated() => $pb.PbList<ListTripTemplatesResponse_TripTemplate>();
  @$core.pragma('dart2js:noInline')
  static ListTripTemplatesResponse_TripTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripTemplatesResponse_TripTemplate>(create);
  static ListTripTemplatesResponse_TripTemplate? _defaultInstance;

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
  $6.TripType get tripType => $_getN(3);
  @$pb.TagNumber(30)
  set tripType($6.TripType v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasTripType() => $_has(3);
  @$pb.TagNumber(30)
  void clearTripType() => clearField(30);

  @$pb.TagNumber(40)
  $fixnum.Int64 get hotelId => $_getI64(4);
  @$pb.TagNumber(40)
  set hotelId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasHotelId() => $_has(4);
  @$pb.TagNumber(40)
  void clearHotelId() => clearField(40);

  @$pb.TagNumber(50)
  $fixnum.Int64 get boatId => $_getI64(5);
  @$pb.TagNumber(50)
  set boatId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(50)
  $core.bool hasBoatId() => $_has(5);
  @$pb.TagNumber(50)
  void clearBoatId() => clearField(50);

  @$pb.TagNumber(60)
  $fixnum.Int64 get liveaboardId => $_getI64(6);
  @$pb.TagNumber(60)
  set liveaboardId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(60)
  $core.bool hasLiveaboardId() => $_has(6);
  @$pb.TagNumber(60)
  void clearLiveaboardId() => clearField(60);

  @$pb.TagNumber(70)
  $core.List<$6.File> get images => $_getList(7);

  @$pb.TagNumber(80)
  $5.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(80)
  set createdAt($5.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(80)
  void clearCreatedAt() => clearField(80);
  @$pb.TagNumber(80)
  $5.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(90)
  $5.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(90)
  set updatedAt($5.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(90)
  void clearUpdatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $5.Timestamp ensureUpdatedAt() => $_ensure(9);
}

class ListTripTemplatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripTemplatesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListTripTemplatesResponse_TripTemplate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'template', subBuilder: ListTripTemplatesResponse_TripTemplate.create)
    ..hasRequiredFields = false
  ;

  ListTripTemplatesResponse._() : super();
  factory ListTripTemplatesResponse({
    ListTripTemplatesResponse_TripTemplate? template,
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
  ListTripTemplatesResponse_TripTemplate get template => $_getN(0);
  @$pb.TagNumber(1)
  set template(ListTripTemplatesResponse_TripTemplate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplate() => clearField(1);
  @$pb.TagNumber(1)
  ListTripTemplatesResponse_TripTemplate ensureTemplate() => $_ensure(0);
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

class ListTripsResponse_Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsResponse.Trip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplateId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGuest', $pb.PbFieldType.OU3)
    ..a<$core.double>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReservationDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListTripsResponse_Trip._() : super();
  factory ListTripsResponse_Trip({
    $fixnum.Int64? id,
    $fixnum.Int64? tripTemplateId,
    $core.int? maxGuest,
    $core.double? price,
    $5.Timestamp? fromDate,
    $5.Timestamp? toDate,
    $5.Timestamp? lastReservationDate,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (tripTemplateId != null) {
      _result.tripTemplateId = tripTemplateId;
    }
    if (maxGuest != null) {
      _result.maxGuest = maxGuest;
    }
    if (price != null) {
      _result.price = price;
    }
    if (fromDate != null) {
      _result.fromDate = fromDate;
    }
    if (toDate != null) {
      _result.toDate = toDate;
    }
    if (lastReservationDate != null) {
      _result.lastReservationDate = lastReservationDate;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory ListTripsResponse_Trip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripsResponse_Trip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripsResponse_Trip clone() => ListTripsResponse_Trip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripsResponse_Trip copyWith(void Function(ListTripsResponse_Trip) updates) => super.copyWith((message) => updates(message as ListTripsResponse_Trip)) as ListTripsResponse_Trip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripsResponse_Trip create() => ListTripsResponse_Trip._();
  ListTripsResponse_Trip createEmptyInstance() => create();
  static $pb.PbList<ListTripsResponse_Trip> createRepeated() => $pb.PbList<ListTripsResponse_Trip>();
  @$core.pragma('dart2js:noInline')
  static ListTripsResponse_Trip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripsResponse_Trip>(create);
  static ListTripsResponse_Trip? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(20)
  $fixnum.Int64 get tripTemplateId => $_getI64(1);
  @$pb.TagNumber(20)
  set tripTemplateId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(20)
  $core.bool hasTripTemplateId() => $_has(1);
  @$pb.TagNumber(20)
  void clearTripTemplateId() => clearField(20);

  @$pb.TagNumber(30)
  $core.int get maxGuest => $_getIZ(2);
  @$pb.TagNumber(30)
  set maxGuest($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(30)
  $core.bool hasMaxGuest() => $_has(2);
  @$pb.TagNumber(30)
  void clearMaxGuest() => clearField(30);

  @$pb.TagNumber(40)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(40)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(40)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(40)
  void clearPrice() => clearField(40);

  @$pb.TagNumber(50)
  $5.Timestamp get fromDate => $_getN(4);
  @$pb.TagNumber(50)
  set fromDate($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasFromDate() => $_has(4);
  @$pb.TagNumber(50)
  void clearFromDate() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureFromDate() => $_ensure(4);

  @$pb.TagNumber(60)
  $5.Timestamp get toDate => $_getN(5);
  @$pb.TagNumber(60)
  set toDate($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasToDate() => $_has(5);
  @$pb.TagNumber(60)
  void clearToDate() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureToDate() => $_ensure(5);

  @$pb.TagNumber(70)
  $5.Timestamp get lastReservationDate => $_getN(6);
  @$pb.TagNumber(70)
  set lastReservationDate($5.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasLastReservationDate() => $_has(6);
  @$pb.TagNumber(70)
  void clearLastReservationDate() => clearField(70);
  @$pb.TagNumber(70)
  $5.Timestamp ensureLastReservationDate() => $_ensure(6);

  @$pb.TagNumber(80)
  $5.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(80)
  set createdAt($5.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(80)
  void clearCreatedAt() => clearField(80);
  @$pb.TagNumber(80)
  $5.Timestamp ensureCreatedAt() => $_ensure(7);

  @$pb.TagNumber(90)
  $5.Timestamp get updatedAt => $_getN(8);
  @$pb.TagNumber(90)
  set updatedAt($5.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(90)
  void clearUpdatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $5.Timestamp ensureUpdatedAt() => $_ensure(8);
}

class ListTripsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListTripsResponse_Trip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: ListTripsResponse_Trip.create)
    ..hasRequiredFields = false
  ;

  ListTripsResponse._() : super();
  factory ListTripsResponse({
    ListTripsResponse_Trip? trip,
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
  ListTripsResponse_Trip get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip(ListTripsResponse_Trip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  ListTripsResponse_Trip ensureTrip() => $_ensure(0);
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

class ListTripsWithTemplatesResponse_Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsWithTemplatesResponse.Trip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplateId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGuest', $pb.PbFieldType.OU3)
    ..a<$core.double>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..pc<DiveMaster>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMasters', $pb.PbFieldType.PM, subBuilder: DiveMaster.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReservationDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..aOM<ListTripsWithTemplatesResponse_TripTemplate>(110, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplate', subBuilder: ListTripsWithTemplatesResponse_TripTemplate.create)
    ..hasRequiredFields = false
  ;

  ListTripsWithTemplatesResponse_Trip._() : super();
  factory ListTripsWithTemplatesResponse_Trip({
    $fixnum.Int64? id,
    $fixnum.Int64? tripTemplateId,
    $core.int? maxGuest,
    $core.double? price,
    $core.Iterable<DiveMaster>? diveMasters,
    $5.Timestamp? fromDate,
    $5.Timestamp? toDate,
    $5.Timestamp? lastReservationDate,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
    ListTripsWithTemplatesResponse_TripTemplate? tripTemplate,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (tripTemplateId != null) {
      _result.tripTemplateId = tripTemplateId;
    }
    if (maxGuest != null) {
      _result.maxGuest = maxGuest;
    }
    if (price != null) {
      _result.price = price;
    }
    if (diveMasters != null) {
      _result.diveMasters.addAll(diveMasters);
    }
    if (fromDate != null) {
      _result.fromDate = fromDate;
    }
    if (toDate != null) {
      _result.toDate = toDate;
    }
    if (lastReservationDate != null) {
      _result.lastReservationDate = lastReservationDate;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (tripTemplate != null) {
      _result.tripTemplate = tripTemplate;
    }
    return _result;
  }
  factory ListTripsWithTemplatesResponse_Trip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripsWithTemplatesResponse_Trip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesResponse_Trip clone() => ListTripsWithTemplatesResponse_Trip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesResponse_Trip copyWith(void Function(ListTripsWithTemplatesResponse_Trip) updates) => super.copyWith((message) => updates(message as ListTripsWithTemplatesResponse_Trip)) as ListTripsWithTemplatesResponse_Trip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesResponse_Trip create() => ListTripsWithTemplatesResponse_Trip._();
  ListTripsWithTemplatesResponse_Trip createEmptyInstance() => create();
  static $pb.PbList<ListTripsWithTemplatesResponse_Trip> createRepeated() => $pb.PbList<ListTripsWithTemplatesResponse_Trip>();
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesResponse_Trip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripsWithTemplatesResponse_Trip>(create);
  static ListTripsWithTemplatesResponse_Trip? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(20)
  $fixnum.Int64 get tripTemplateId => $_getI64(1);
  @$pb.TagNumber(20)
  set tripTemplateId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(20)
  $core.bool hasTripTemplateId() => $_has(1);
  @$pb.TagNumber(20)
  void clearTripTemplateId() => clearField(20);

  @$pb.TagNumber(30)
  $core.int get maxGuest => $_getIZ(2);
  @$pb.TagNumber(30)
  set maxGuest($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(30)
  $core.bool hasMaxGuest() => $_has(2);
  @$pb.TagNumber(30)
  void clearMaxGuest() => clearField(30);

  @$pb.TagNumber(40)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(40)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(40)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(40)
  void clearPrice() => clearField(40);

  @$pb.TagNumber(50)
  $core.List<DiveMaster> get diveMasters => $_getList(4);

  @$pb.TagNumber(60)
  $5.Timestamp get fromDate => $_getN(5);
  @$pb.TagNumber(60)
  set fromDate($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasFromDate() => $_has(5);
  @$pb.TagNumber(60)
  void clearFromDate() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureFromDate() => $_ensure(5);

  @$pb.TagNumber(70)
  $5.Timestamp get toDate => $_getN(6);
  @$pb.TagNumber(70)
  set toDate($5.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasToDate() => $_has(6);
  @$pb.TagNumber(70)
  void clearToDate() => clearField(70);
  @$pb.TagNumber(70)
  $5.Timestamp ensureToDate() => $_ensure(6);

  @$pb.TagNumber(80)
  $5.Timestamp get lastReservationDate => $_getN(7);
  @$pb.TagNumber(80)
  set lastReservationDate($5.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasLastReservationDate() => $_has(7);
  @$pb.TagNumber(80)
  void clearLastReservationDate() => clearField(80);
  @$pb.TagNumber(80)
  $5.Timestamp ensureLastReservationDate() => $_ensure(7);

  @$pb.TagNumber(90)
  $5.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(90)
  set createdAt($5.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $5.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(100)
  $5.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(100)
  set updatedAt($5.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $5.Timestamp ensureUpdatedAt() => $_ensure(9);

  @$pb.TagNumber(110)
  ListTripsWithTemplatesResponse_TripTemplate get tripTemplate => $_getN(10);
  @$pb.TagNumber(110)
  set tripTemplate(ListTripsWithTemplatesResponse_TripTemplate v) { setField(110, v); }
  @$pb.TagNumber(110)
  $core.bool hasTripTemplate() => $_has(10);
  @$pb.TagNumber(110)
  void clearTripTemplate() => clearField(110);
  @$pb.TagNumber(110)
  ListTripsWithTemplatesResponse_TripTemplate ensureTripTemplate() => $_ensure(10);
}

class ListTripsWithTemplatesResponse_TripTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsWithTemplatesResponse.TripTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<$6.TripType>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: $6.TripType.ONSHORE, valueOf: $6.TripType.valueOf, enumValues: $6.TripType.values)
    ..a<$fixnum.Int64>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$6.File>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOM<$6.Address>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
    ..aOM<$5.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ListTripsWithTemplatesResponse_TripTemplate._() : super();
  factory ListTripsWithTemplatesResponse_TripTemplate({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $6.TripType? tripType,
    $fixnum.Int64? hotelId,
    $fixnum.Int64? boatId,
    $fixnum.Int64? liveaboardId,
    $core.Iterable<$6.File>? images,
    $6.Address? address,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (tripType != null) {
      _result.tripType = tripType;
    }
    if (hotelId != null) {
      _result.hotelId = hotelId;
    }
    if (boatId != null) {
      _result.boatId = boatId;
    }
    if (liveaboardId != null) {
      _result.liveaboardId = liveaboardId;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (address != null) {
      _result.address = address;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory ListTripsWithTemplatesResponse_TripTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTripsWithTemplatesResponse_TripTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesResponse_TripTemplate clone() => ListTripsWithTemplatesResponse_TripTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTripsWithTemplatesResponse_TripTemplate copyWith(void Function(ListTripsWithTemplatesResponse_TripTemplate) updates) => super.copyWith((message) => updates(message as ListTripsWithTemplatesResponse_TripTemplate)) as ListTripsWithTemplatesResponse_TripTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesResponse_TripTemplate create() => ListTripsWithTemplatesResponse_TripTemplate._();
  ListTripsWithTemplatesResponse_TripTemplate createEmptyInstance() => create();
  static $pb.PbList<ListTripsWithTemplatesResponse_TripTemplate> createRepeated() => $pb.PbList<ListTripsWithTemplatesResponse_TripTemplate>();
  @$core.pragma('dart2js:noInline')
  static ListTripsWithTemplatesResponse_TripTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTripsWithTemplatesResponse_TripTemplate>(create);
  static ListTripsWithTemplatesResponse_TripTemplate? _defaultInstance;

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
  $6.TripType get tripType => $_getN(3);
  @$pb.TagNumber(30)
  set tripType($6.TripType v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasTripType() => $_has(3);
  @$pb.TagNumber(30)
  void clearTripType() => clearField(30);

  @$pb.TagNumber(40)
  $fixnum.Int64 get hotelId => $_getI64(4);
  @$pb.TagNumber(40)
  set hotelId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasHotelId() => $_has(4);
  @$pb.TagNumber(40)
  void clearHotelId() => clearField(40);

  @$pb.TagNumber(50)
  $fixnum.Int64 get boatId => $_getI64(5);
  @$pb.TagNumber(50)
  set boatId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(50)
  $core.bool hasBoatId() => $_has(5);
  @$pb.TagNumber(50)
  void clearBoatId() => clearField(50);

  @$pb.TagNumber(60)
  $fixnum.Int64 get liveaboardId => $_getI64(6);
  @$pb.TagNumber(60)
  set liveaboardId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(60)
  $core.bool hasLiveaboardId() => $_has(6);
  @$pb.TagNumber(60)
  void clearLiveaboardId() => clearField(60);

  @$pb.TagNumber(70)
  $core.List<$6.File> get images => $_getList(7);

  @$pb.TagNumber(80)
  $6.Address get address => $_getN(8);
  @$pb.TagNumber(80)
  set address($6.Address v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasAddress() => $_has(8);
  @$pb.TagNumber(80)
  void clearAddress() => clearField(80);
  @$pb.TagNumber(80)
  $6.Address ensureAddress() => $_ensure(8);

  @$pb.TagNumber(90)
  $5.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(90)
  set createdAt($5.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $5.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(100)
  $5.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(100)
  set updatedAt($5.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $5.Timestamp ensureUpdatedAt() => $_ensure(10);
}

class ListTripsWithTemplatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTripsWithTemplatesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<ListTripsWithTemplatesResponse_Trip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: ListTripsWithTemplatesResponse_Trip.create)
    ..hasRequiredFields = false
  ;

  ListTripsWithTemplatesResponse._() : super();
  factory ListTripsWithTemplatesResponse({
    ListTripsWithTemplatesResponse_Trip? trip,
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
  ListTripsWithTemplatesResponse_Trip get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip(ListTripsWithTemplatesResponse_Trip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  ListTripsWithTemplatesResponse_Trip ensureTrip() => $_ensure(0);
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
    ..e<$6.TripType>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: $6.TripType.ONSHORE, valueOf: $6.TripType.valueOf, enumValues: $6.TripType.values)
    ..aOM<$5.Timestamp>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SearchTripsOptions._() : super();
  factory SearchTripsOptions({
    $core.String? country,
    $core.String? city,
    $core.String? region,
    $core.int? divers,
    $6.TripType? tripType,
    $5.Timestamp? startDate,
    $5.Timestamp? endDate,
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
  $6.TripType get tripType => $_getN(4);
  @$pb.TagNumber(15)
  set tripType($6.TripType v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasTripType() => $_has(4);
  @$pb.TagNumber(15)
  void clearTripType() => clearField(15);

  @$pb.TagNumber(20)
  $5.Timestamp get startDate => $_getN(5);
  @$pb.TagNumber(20)
  set startDate($5.Timestamp v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasStartDate() => $_has(5);
  @$pb.TagNumber(20)
  void clearStartDate() => clearField(20);
  @$pb.TagNumber(20)
  $5.Timestamp ensureStartDate() => $_ensure(5);

  @$pb.TagNumber(30)
  $5.Timestamp get endDate => $_getN(6);
  @$pb.TagNumber(30)
  set endDate($5.Timestamp v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasEndDate() => $_has(6);
  @$pb.TagNumber(30)
  void clearEndDate() => clearField(30);
  @$pb.TagNumber(30)
  $5.Timestamp ensureEndDate() => $_ensure(6);
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

class SearchTripsResponse_Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchTripsResponse.Trip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplateId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGuest', $pb.PbFieldType.OU3)
    ..a<$core.double>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..pc<DiveMaster>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMasters', $pb.PbFieldType.PM, subBuilder: DiveMaster.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReservationDate', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..aOM<SearchTripsResponse_TripTemplate>(110, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplate', subBuilder: SearchTripsResponse_TripTemplate.create)
    ..hasRequiredFields = false
  ;

  SearchTripsResponse_Trip._() : super();
  factory SearchTripsResponse_Trip({
    $fixnum.Int64? id,
    $fixnum.Int64? tripTemplateId,
    $core.int? maxGuest,
    $core.double? price,
    $core.Iterable<DiveMaster>? diveMasters,
    $5.Timestamp? fromDate,
    $5.Timestamp? toDate,
    $5.Timestamp? lastReservationDate,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
    SearchTripsResponse_TripTemplate? tripTemplate,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (tripTemplateId != null) {
      _result.tripTemplateId = tripTemplateId;
    }
    if (maxGuest != null) {
      _result.maxGuest = maxGuest;
    }
    if (price != null) {
      _result.price = price;
    }
    if (diveMasters != null) {
      _result.diveMasters.addAll(diveMasters);
    }
    if (fromDate != null) {
      _result.fromDate = fromDate;
    }
    if (toDate != null) {
      _result.toDate = toDate;
    }
    if (lastReservationDate != null) {
      _result.lastReservationDate = lastReservationDate;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (tripTemplate != null) {
      _result.tripTemplate = tripTemplate;
    }
    return _result;
  }
  factory SearchTripsResponse_Trip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchTripsResponse_Trip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchTripsResponse_Trip clone() => SearchTripsResponse_Trip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchTripsResponse_Trip copyWith(void Function(SearchTripsResponse_Trip) updates) => super.copyWith((message) => updates(message as SearchTripsResponse_Trip)) as SearchTripsResponse_Trip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchTripsResponse_Trip create() => SearchTripsResponse_Trip._();
  SearchTripsResponse_Trip createEmptyInstance() => create();
  static $pb.PbList<SearchTripsResponse_Trip> createRepeated() => $pb.PbList<SearchTripsResponse_Trip>();
  @$core.pragma('dart2js:noInline')
  static SearchTripsResponse_Trip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchTripsResponse_Trip>(create);
  static SearchTripsResponse_Trip? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(20)
  $fixnum.Int64 get tripTemplateId => $_getI64(1);
  @$pb.TagNumber(20)
  set tripTemplateId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(20)
  $core.bool hasTripTemplateId() => $_has(1);
  @$pb.TagNumber(20)
  void clearTripTemplateId() => clearField(20);

  @$pb.TagNumber(30)
  $core.int get maxGuest => $_getIZ(2);
  @$pb.TagNumber(30)
  set maxGuest($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(30)
  $core.bool hasMaxGuest() => $_has(2);
  @$pb.TagNumber(30)
  void clearMaxGuest() => clearField(30);

  @$pb.TagNumber(40)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(40)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(40)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(40)
  void clearPrice() => clearField(40);

  @$pb.TagNumber(50)
  $core.List<DiveMaster> get diveMasters => $_getList(4);

  @$pb.TagNumber(60)
  $5.Timestamp get fromDate => $_getN(5);
  @$pb.TagNumber(60)
  set fromDate($5.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasFromDate() => $_has(5);
  @$pb.TagNumber(60)
  void clearFromDate() => clearField(60);
  @$pb.TagNumber(60)
  $5.Timestamp ensureFromDate() => $_ensure(5);

  @$pb.TagNumber(70)
  $5.Timestamp get toDate => $_getN(6);
  @$pb.TagNumber(70)
  set toDate($5.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasToDate() => $_has(6);
  @$pb.TagNumber(70)
  void clearToDate() => clearField(70);
  @$pb.TagNumber(70)
  $5.Timestamp ensureToDate() => $_ensure(6);

  @$pb.TagNumber(80)
  $5.Timestamp get lastReservationDate => $_getN(7);
  @$pb.TagNumber(80)
  set lastReservationDate($5.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasLastReservationDate() => $_has(7);
  @$pb.TagNumber(80)
  void clearLastReservationDate() => clearField(80);
  @$pb.TagNumber(80)
  $5.Timestamp ensureLastReservationDate() => $_ensure(7);

  @$pb.TagNumber(90)
  $5.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(90)
  set createdAt($5.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $5.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(100)
  $5.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(100)
  set updatedAt($5.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $5.Timestamp ensureUpdatedAt() => $_ensure(9);

  @$pb.TagNumber(110)
  SearchTripsResponse_TripTemplate get tripTemplate => $_getN(10);
  @$pb.TagNumber(110)
  set tripTemplate(SearchTripsResponse_TripTemplate v) { setField(110, v); }
  @$pb.TagNumber(110)
  $core.bool hasTripTemplate() => $_has(10);
  @$pb.TagNumber(110)
  void clearTripTemplate() => clearField(110);
  @$pb.TagNumber(110)
  SearchTripsResponse_TripTemplate ensureTripTemplate() => $_ensure(10);
}

class SearchTripsResponse_TripTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchTripsResponse.TripTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<$6.TripType>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: $6.TripType.ONSHORE, valueOf: $6.TripType.valueOf, enumValues: $6.TripType.values)
    ..a<$fixnum.Int64>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$6.File>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $6.File.create)
    ..aOM<$6.Address>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $6.Address.create)
    ..aOM<$5.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SearchTripsResponse_TripTemplate._() : super();
  factory SearchTripsResponse_TripTemplate({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $6.TripType? tripType,
    $fixnum.Int64? hotelId,
    $fixnum.Int64? boatId,
    $fixnum.Int64? liveaboardId,
    $core.Iterable<$6.File>? images,
    $6.Address? address,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
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
    if (tripType != null) {
      _result.tripType = tripType;
    }
    if (hotelId != null) {
      _result.hotelId = hotelId;
    }
    if (boatId != null) {
      _result.boatId = boatId;
    }
    if (liveaboardId != null) {
      _result.liveaboardId = liveaboardId;
    }
    if (images != null) {
      _result.images.addAll(images);
    }
    if (address != null) {
      _result.address = address;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory SearchTripsResponse_TripTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchTripsResponse_TripTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchTripsResponse_TripTemplate clone() => SearchTripsResponse_TripTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchTripsResponse_TripTemplate copyWith(void Function(SearchTripsResponse_TripTemplate) updates) => super.copyWith((message) => updates(message as SearchTripsResponse_TripTemplate)) as SearchTripsResponse_TripTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchTripsResponse_TripTemplate create() => SearchTripsResponse_TripTemplate._();
  SearchTripsResponse_TripTemplate createEmptyInstance() => create();
  static $pb.PbList<SearchTripsResponse_TripTemplate> createRepeated() => $pb.PbList<SearchTripsResponse_TripTemplate>();
  @$core.pragma('dart2js:noInline')
  static SearchTripsResponse_TripTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchTripsResponse_TripTemplate>(create);
  static SearchTripsResponse_TripTemplate? _defaultInstance;

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
  $6.TripType get tripType => $_getN(3);
  @$pb.TagNumber(30)
  set tripType($6.TripType v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasTripType() => $_has(3);
  @$pb.TagNumber(30)
  void clearTripType() => clearField(30);

  @$pb.TagNumber(40)
  $fixnum.Int64 get hotelId => $_getI64(4);
  @$pb.TagNumber(40)
  set hotelId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasHotelId() => $_has(4);
  @$pb.TagNumber(40)
  void clearHotelId() => clearField(40);

  @$pb.TagNumber(50)
  $fixnum.Int64 get boatId => $_getI64(5);
  @$pb.TagNumber(50)
  set boatId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(50)
  $core.bool hasBoatId() => $_has(5);
  @$pb.TagNumber(50)
  void clearBoatId() => clearField(50);

  @$pb.TagNumber(60)
  $fixnum.Int64 get liveaboardId => $_getI64(6);
  @$pb.TagNumber(60)
  set liveaboardId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(60)
  $core.bool hasLiveaboardId() => $_has(6);
  @$pb.TagNumber(60)
  void clearLiveaboardId() => clearField(60);

  @$pb.TagNumber(70)
  $core.List<$6.File> get images => $_getList(7);

  @$pb.TagNumber(80)
  $6.Address get address => $_getN(8);
  @$pb.TagNumber(80)
  set address($6.Address v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasAddress() => $_has(8);
  @$pb.TagNumber(80)
  void clearAddress() => clearField(80);
  @$pb.TagNumber(80)
  $6.Address ensureAddress() => $_ensure(8);

  @$pb.TagNumber(90)
  $5.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(90)
  set createdAt($5.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $5.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(100)
  $5.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(100)
  set updatedAt($5.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $5.Timestamp ensureUpdatedAt() => $_ensure(10);
}

class SearchTripsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchTripsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'agency'), createEmptyInstance: create)
    ..aOM<SearchTripsResponse_Trip>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: SearchTripsResponse_Trip.create)
    ..hasRequiredFields = false
  ;

  SearchTripsResponse._() : super();
  factory SearchTripsResponse({
    SearchTripsResponse_Trip? trip,
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
  SearchTripsResponse_Trip get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip(SearchTripsResponse_Trip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  SearchTripsResponse_Trip ensureTrip() => $_ensure(0);
}

