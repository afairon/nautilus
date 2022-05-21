///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $13;

import 'model.pbenum.dart';

export 'model.pbenum.dart';

class File extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'File', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filename')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'link')
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  File._() : super();
  factory File({
    $core.String? filename,
    $core.String? link,
    $core.List<$core.int>? file,
  }) {
    final _result = create();
    if (filename != null) {
      _result.filename = filename;
    }
    if (link != null) {
      _result.link = link;
    }
    if (file != null) {
      _result.file = file;
    }
    return _result;
  }
  factory File.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory File.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  File clone() => File()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  File copyWith(void Function(File) updates) => super.copyWith((message) => updates(message as File)) as File; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  File createEmptyInstance() => create();
  static $pb.PbList<File> createRepeated() => $pb.PbList<File>();
  @$core.pragma('dart2js:noInline')
  static File getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filename => $_getSZ(0);
  @$pb.TagNumber(1)
  set filename($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilename() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilename() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get link => $_getSZ(1);
  @$pb.TagNumber(2)
  set link($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearLink() => clearField(2);

  @$pb.TagNumber(10)
  $core.List<$core.int> get file => $_getN(2);
  @$pb.TagNumber(10)
  set file($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasFile() => $_has(2);
  @$pb.TagNumber(10)
  void clearFile() => clearField(10);
}

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Account', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'oldPassword')
    ..e<AccountType>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: AccountType.ADMIN, valueOf: AccountType.valueOf, enumValues: AccountType.values)
    ..aOB(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verified')
    ..aOB(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..aOM<$13.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account({
    $fixnum.Int64? id,
    $core.String? username,
    $core.String? email,
    $core.String? password,
    $core.String? oldPassword,
    AccountType? type,
    $core.bool? verified,
    $core.bool? active,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (username != null) {
      _result.username = username;
    }
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    if (oldPassword != null) {
      _result.oldPassword = oldPassword;
    }
    if (type != null) {
      _result.type = type;
    }
    if (verified != null) {
      _result.verified = verified;
    }
    if (active != null) {
      _result.active = active;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(10)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(10)
  void clearUsername() => clearField(10);

  @$pb.TagNumber(20)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(20)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(20)
  void clearEmail() => clearField(20);

  @$pb.TagNumber(30)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(30)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(30)
  void clearPassword() => clearField(30);

  @$pb.TagNumber(35)
  $core.String get oldPassword => $_getSZ(4);
  @$pb.TagNumber(35)
  set oldPassword($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(35)
  $core.bool hasOldPassword() => $_has(4);
  @$pb.TagNumber(35)
  void clearOldPassword() => clearField(35);

  @$pb.TagNumber(40)
  AccountType get type => $_getN(5);
  @$pb.TagNumber(40)
  set type(AccountType v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(40)
  void clearType() => clearField(40);

  @$pb.TagNumber(50)
  $core.bool get verified => $_getBF(6);
  @$pb.TagNumber(50)
  set verified($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(50)
  $core.bool hasVerified() => $_has(6);
  @$pb.TagNumber(50)
  void clearVerified() => clearField(50);

  @$pb.TagNumber(60)
  $core.bool get active => $_getBF(7);
  @$pb.TagNumber(60)
  set active($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(60)
  $core.bool hasActive() => $_has(7);
  @$pb.TagNumber(60)
  void clearActive() => clearField(60);

  @$pb.TagNumber(70)
  $13.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(70)
  set createdAt($13.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(70)
  void clearCreatedAt() => clearField(70);
  @$pb.TagNumber(70)
  $13.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(80)
  $13.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(80)
  set updatedAt($13.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(80)
  void clearUpdatedAt() => clearField(80);
  @$pb.TagNumber(80)
  $13.Timestamp ensureUpdatedAt() => $_ensure(9);
}

class Admin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Admin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOM<Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  Admin._() : super();
  factory Admin({
    Account? account,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory Admin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Admin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Admin clone() => Admin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Admin copyWith(void Function(Admin) updates) => super.copyWith((message) => updates(message as Admin)) as Admin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Admin create() => Admin._();
  Admin createEmptyInstance() => create();
  static $pb.PbList<Admin> createRepeated() => $pb.PbList<Admin>();
  @$core.pragma('dart2js:noInline')
  static Admin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Admin>(create);
  static Admin? _defaultInstance;

  @$pb.TagNumber(1)
  Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  Account ensureAccount() => $_ensure(0);
}

class Address extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Address', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressLine1', protoName: 'address_line_1')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressLine2', protoName: 'address_line_2')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postcode')
    ..aOS(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region')
    ..aOS(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOM<$13.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Address._() : super();
  factory Address({
    $fixnum.Int64? id,
    $core.String? addressLine1,
    $core.String? addressLine2,
    $core.String? city,
    $core.String? postcode,
    $core.String? region,
    $core.String? country,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (addressLine1 != null) {
      _result.addressLine1 = addressLine1;
    }
    if (addressLine2 != null) {
      _result.addressLine2 = addressLine2;
    }
    if (city != null) {
      _result.city = city;
    }
    if (postcode != null) {
      _result.postcode = postcode;
    }
    if (region != null) {
      _result.region = region;
    }
    if (country != null) {
      _result.country = country;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Address.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Address.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Address clone() => Address()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Address copyWith(void Function(Address) updates) => super.copyWith((message) => updates(message as Address)) as Address; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Address create() => Address._();
  Address createEmptyInstance() => create();
  static $pb.PbList<Address> createRepeated() => $pb.PbList<Address>();
  @$core.pragma('dart2js:noInline')
  static Address getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Address>(create);
  static Address? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get addressLine1 => $_getSZ(1);
  @$pb.TagNumber(10)
  set addressLine1($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasAddressLine1() => $_has(1);
  @$pb.TagNumber(10)
  void clearAddressLine1() => clearField(10);

  @$pb.TagNumber(20)
  $core.String get addressLine2 => $_getSZ(2);
  @$pb.TagNumber(20)
  set addressLine2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasAddressLine2() => $_has(2);
  @$pb.TagNumber(20)
  void clearAddressLine2() => clearField(20);

  @$pb.TagNumber(30)
  $core.String get city => $_getSZ(3);
  @$pb.TagNumber(30)
  set city($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasCity() => $_has(3);
  @$pb.TagNumber(30)
  void clearCity() => clearField(30);

  @$pb.TagNumber(40)
  $core.String get postcode => $_getSZ(4);
  @$pb.TagNumber(40)
  set postcode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasPostcode() => $_has(4);
  @$pb.TagNumber(40)
  void clearPostcode() => clearField(40);

  @$pb.TagNumber(50)
  $core.String get region => $_getSZ(5);
  @$pb.TagNumber(50)
  set region($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(50)
  $core.bool hasRegion() => $_has(5);
  @$pb.TagNumber(50)
  void clearRegion() => clearField(50);

  @$pb.TagNumber(60)
  $core.String get country => $_getSZ(6);
  @$pb.TagNumber(60)
  set country($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(60)
  $core.bool hasCountry() => $_has(6);
  @$pb.TagNumber(60)
  void clearCountry() => clearField(60);

  @$pb.TagNumber(70)
  $13.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(70)
  set createdAt($13.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(70)
  void clearCreatedAt() => clearField(70);
  @$pb.TagNumber(70)
  $13.Timestamp ensureCreatedAt() => $_ensure(7);

  @$pb.TagNumber(80)
  $13.Timestamp get updatedAt => $_getN(8);
  @$pb.TagNumber(80)
  set updatedAt($13.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(80)
  void clearUpdatedAt() => clearField(80);
  @$pb.TagNumber(80)
  $13.Timestamp ensureUpdatedAt() => $_ensure(8);
}

class Coordinate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Coordinate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'long', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Coordinate._() : super();
  factory Coordinate({
    $core.double? lat,
    $core.double? long,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (long != null) {
      _result.long = long;
    }
    return _result;
  }
  factory Coordinate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Coordinate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Coordinate clone() => Coordinate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Coordinate copyWith(void Function(Coordinate) updates) => super.copyWith((message) => updates(message as Coordinate)) as Coordinate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Coordinate create() => Coordinate._();
  Coordinate createEmptyInstance() => create();
  static $pb.PbList<Coordinate> createRepeated() => $pb.PbList<Coordinate>();
  @$core.pragma('dart2js:noInline')
  static Coordinate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Coordinate>(create);
  static Coordinate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get long => $_getN(1);
  @$pb.TagNumber(2)
  set long($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLong() => $_has(1);
  @$pb.TagNumber(2)
  void clearLong() => clearField(2);
}

class Agency extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Agency', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<Account>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: Account.create)
    ..aOM<Address>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Address.create)
    ..aOM<Coordinate>(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinate', subBuilder: Coordinate.create)
    ..pc<File>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: File.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Agency._() : super();
  factory Agency({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? phone,
    Account? account,
    Address? address,
    Coordinate? coordinate,
    $core.Iterable<File>? documents,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (account != null) {
      _result.account = account;
    }
    if (address != null) {
      _result.address = address;
    }
    if (coordinate != null) {
      _result.coordinate = coordinate;
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
  factory Agency.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Agency.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Agency clone() => Agency()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Agency copyWith(void Function(Agency) updates) => super.copyWith((message) => updates(message as Agency)) as Agency; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Agency create() => Agency._();
  Agency createEmptyInstance() => create();
  static $pb.PbList<Agency> createRepeated() => $pb.PbList<Agency>();
  @$core.pragma('dart2js:noInline')
  static Agency getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Agency>(create);
  static Agency? _defaultInstance;

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
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(20)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(20)
  void clearPhone() => clearField(20);

  @$pb.TagNumber(30)
  Account get account => $_getN(3);
  @$pb.TagNumber(30)
  set account(Account v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasAccount() => $_has(3);
  @$pb.TagNumber(30)
  void clearAccount() => clearField(30);
  @$pb.TagNumber(30)
  Account ensureAccount() => $_ensure(3);

  @$pb.TagNumber(40)
  Address get address => $_getN(4);
  @$pb.TagNumber(40)
  set address(Address v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasAddress() => $_has(4);
  @$pb.TagNumber(40)
  void clearAddress() => clearField(40);
  @$pb.TagNumber(40)
  Address ensureAddress() => $_ensure(4);

  @$pb.TagNumber(45)
  Coordinate get coordinate => $_getN(5);
  @$pb.TagNumber(45)
  set coordinate(Coordinate v) { setField(45, v); }
  @$pb.TagNumber(45)
  $core.bool hasCoordinate() => $_has(5);
  @$pb.TagNumber(45)
  void clearCoordinate() => clearField(45);
  @$pb.TagNumber(45)
  Coordinate ensureCoordinate() => $_ensure(5);

  @$pb.TagNumber(50)
  $core.List<File> get documents => $_getList(6);

  @$pb.TagNumber(60)
  $13.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(60)
  set createdAt($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(60)
  void clearCreatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureCreatedAt() => $_ensure(7);

  @$pb.TagNumber(70)
  $13.Timestamp get updatedAt => $_getN(8);
  @$pb.TagNumber(70)
  set updatedAt($13.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(70)
  void clearUpdatedAt() => clearField(70);
  @$pb.TagNumber(70)
  $13.Timestamp ensureUpdatedAt() => $_ensure(8);
}

class Diver extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Diver', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<$13.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthDate', subBuilder: $13.Timestamp.create)
    ..e<LevelType>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: LevelType.INSTRUCTOR, valueOf: LevelType.valueOf, enumValues: LevelType.values)
    ..aOM<Account>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: Account.create)
    ..pc<File>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: File.create)
    ..aOM<$13.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Diver._() : super();
  factory Diver({
    $fixnum.Int64? id,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? phone,
    $13.Timestamp? birthDate,
    LevelType? level,
    Account? account,
    $core.Iterable<File>? documents,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
    if (phone != null) {
      _result.phone = phone;
    }
    if (birthDate != null) {
      _result.birthDate = birthDate;
    }
    if (level != null) {
      _result.level = level;
    }
    if (account != null) {
      _result.account = account;
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
  factory Diver.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Diver.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Diver clone() => Diver()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Diver copyWith(void Function(Diver) updates) => super.copyWith((message) => updates(message as Diver)) as Diver; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Diver create() => Diver._();
  Diver createEmptyInstance() => create();
  static $pb.PbList<Diver> createRepeated() => $pb.PbList<Diver>();
  @$core.pragma('dart2js:noInline')
  static Diver getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Diver>(create);
  static Diver? _defaultInstance;

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
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(30)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(30)
  void clearPhone() => clearField(30);

  @$pb.TagNumber(40)
  $13.Timestamp get birthDate => $_getN(4);
  @$pb.TagNumber(40)
  set birthDate($13.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasBirthDate() => $_has(4);
  @$pb.TagNumber(40)
  void clearBirthDate() => clearField(40);
  @$pb.TagNumber(40)
  $13.Timestamp ensureBirthDate() => $_ensure(4);

  @$pb.TagNumber(50)
  LevelType get level => $_getN(5);
  @$pb.TagNumber(50)
  set level(LevelType v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasLevel() => $_has(5);
  @$pb.TagNumber(50)
  void clearLevel() => clearField(50);

  @$pb.TagNumber(60)
  Account get account => $_getN(6);
  @$pb.TagNumber(60)
  set account(Account v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasAccount() => $_has(6);
  @$pb.TagNumber(60)
  void clearAccount() => clearField(60);
  @$pb.TagNumber(60)
  Account ensureAccount() => $_ensure(6);

  @$pb.TagNumber(70)
  $core.List<File> get documents => $_getList(7);

  @$pb.TagNumber(80)
  $13.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(80)
  set createdAt($13.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(80)
  void clearCreatedAt() => clearField(80);
  @$pb.TagNumber(80)
  $13.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(90)
  $13.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(90)
  set updatedAt($13.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(90)
  void clearUpdatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $13.Timestamp ensureUpdatedAt() => $_ensure(9);
}

class TripComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripComment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$13.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TripComment._() : super();
  factory TripComment({
    $fixnum.Int64? id,
    $core.String? comment,
    $core.int? stars,
    $fixnum.Int64? reservationId,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (stars != null) {
      _result.stars = stars;
    }
    if (reservationId != null) {
      _result.reservationId = reservationId;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory TripComment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TripComment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TripComment clone() => TripComment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TripComment copyWith(void Function(TripComment) updates) => super.copyWith((message) => updates(message as TripComment)) as TripComment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TripComment create() => TripComment._();
  TripComment createEmptyInstance() => create();
  static $pb.PbList<TripComment> createRepeated() => $pb.PbList<TripComment>();
  @$core.pragma('dart2js:noInline')
  static TripComment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TripComment>(create);
  static TripComment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(10)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(10)
  void clearComment() => clearField(10);

  @$pb.TagNumber(20)
  $core.int get stars => $_getIZ(2);
  @$pb.TagNumber(20)
  set stars($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasStars() => $_has(2);
  @$pb.TagNumber(20)
  void clearStars() => clearField(20);

  @$pb.TagNumber(30)
  $fixnum.Int64 get reservationId => $_getI64(3);
  @$pb.TagNumber(30)
  set reservationId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasReservationId() => $_has(3);
  @$pb.TagNumber(30)
  void clearReservationId() => clearField(30);

  @$pb.TagNumber(40)
  $13.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(40)
  set createdAt($13.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(40)
  void clearCreatedAt() => clearField(40);
  @$pb.TagNumber(40)
  $13.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(50)
  $13.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(50)
  set updatedAt($13.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearUpdatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $13.Timestamp ensureUpdatedAt() => $_ensure(5);
}

class HotelComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HotelComment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$13.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  HotelComment._() : super();
  factory HotelComment({
    $fixnum.Int64? id,
    $core.String? comment,
    $core.int? stars,
    $fixnum.Int64? reservationId,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (stars != null) {
      _result.stars = stars;
    }
    if (reservationId != null) {
      _result.reservationId = reservationId;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory HotelComment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HotelComment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HotelComment clone() => HotelComment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HotelComment copyWith(void Function(HotelComment) updates) => super.copyWith((message) => updates(message as HotelComment)) as HotelComment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HotelComment create() => HotelComment._();
  HotelComment createEmptyInstance() => create();
  static $pb.PbList<HotelComment> createRepeated() => $pb.PbList<HotelComment>();
  @$core.pragma('dart2js:noInline')
  static HotelComment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotelComment>(create);
  static HotelComment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(10)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(10)
  void clearComment() => clearField(10);

  @$pb.TagNumber(20)
  $core.int get stars => $_getIZ(2);
  @$pb.TagNumber(20)
  set stars($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasStars() => $_has(2);
  @$pb.TagNumber(20)
  void clearStars() => clearField(20);

  @$pb.TagNumber(30)
  $fixnum.Int64 get reservationId => $_getI64(3);
  @$pb.TagNumber(30)
  set reservationId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasReservationId() => $_has(3);
  @$pb.TagNumber(30)
  void clearReservationId() => clearField(30);

  @$pb.TagNumber(40)
  $13.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(40)
  set createdAt($13.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(40)
  void clearCreatedAt() => clearField(40);
  @$pb.TagNumber(40)
  $13.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(50)
  $13.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(50)
  set updatedAt($13.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearUpdatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $13.Timestamp ensureUpdatedAt() => $_ensure(5);
}

class LiveaboardComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LiveaboardComment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$13.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  LiveaboardComment._() : super();
  factory LiveaboardComment({
    $fixnum.Int64? id,
    $core.String? comment,
    $core.int? stars,
    $fixnum.Int64? reservationId,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (stars != null) {
      _result.stars = stars;
    }
    if (reservationId != null) {
      _result.reservationId = reservationId;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory LiveaboardComment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveaboardComment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiveaboardComment clone() => LiveaboardComment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiveaboardComment copyWith(void Function(LiveaboardComment) updates) => super.copyWith((message) => updates(message as LiveaboardComment)) as LiveaboardComment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LiveaboardComment create() => LiveaboardComment._();
  LiveaboardComment createEmptyInstance() => create();
  static $pb.PbList<LiveaboardComment> createRepeated() => $pb.PbList<LiveaboardComment>();
  @$core.pragma('dart2js:noInline')
  static LiveaboardComment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveaboardComment>(create);
  static LiveaboardComment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(10)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(10)
  void clearComment() => clearField(10);

  @$pb.TagNumber(20)
  $core.int get stars => $_getIZ(2);
  @$pb.TagNumber(20)
  set stars($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasStars() => $_has(2);
  @$pb.TagNumber(20)
  void clearStars() => clearField(20);

  @$pb.TagNumber(30)
  $fixnum.Int64 get reservationId => $_getI64(3);
  @$pb.TagNumber(30)
  set reservationId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasReservationId() => $_has(3);
  @$pb.TagNumber(30)
  void clearReservationId() => clearField(30);

  @$pb.TagNumber(40)
  $13.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(40)
  set createdAt($13.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(40)
  void clearCreatedAt() => clearField(40);
  @$pb.TagNumber(40)
  $13.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(50)
  $13.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(50)
  set updatedAt($13.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearUpdatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $13.Timestamp ensureUpdatedAt() => $_ensure(5);
}

class Boat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Boat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<File>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: File.create)
    ..a<$core.int>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffCapacity', $pb.PbFieldType.OU3)
    ..aOM<Address>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Address.create)
    ..aOM<$13.Timestamp>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Boat._() : super();
  factory Boat({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.Iterable<File>? images,
    $core.int? totalCapacity,
    $core.int? diverCapacity,
    $core.int? staffCapacity,
    Address? address,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
  factory Boat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Boat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Boat clone() => Boat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Boat copyWith(void Function(Boat) updates) => super.copyWith((message) => updates(message as Boat)) as Boat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Boat create() => Boat._();
  Boat createEmptyInstance() => create();
  static $pb.PbList<Boat> createRepeated() => $pb.PbList<Boat>();
  @$core.pragma('dart2js:noInline')
  static Boat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Boat>(create);
  static Boat? _defaultInstance;

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

  @$pb.TagNumber(11)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(11)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(11)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(11)
  void clearDescription() => clearField(11);

  @$pb.TagNumber(20)
  $core.List<File> get images => $_getList(3);

  @$pb.TagNumber(21)
  $core.int get totalCapacity => $_getIZ(4);
  @$pb.TagNumber(21)
  set totalCapacity($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(21)
  $core.bool hasTotalCapacity() => $_has(4);
  @$pb.TagNumber(21)
  void clearTotalCapacity() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get diverCapacity => $_getIZ(5);
  @$pb.TagNumber(22)
  set diverCapacity($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(22)
  $core.bool hasDiverCapacity() => $_has(5);
  @$pb.TagNumber(22)
  void clearDiverCapacity() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get staffCapacity => $_getIZ(6);
  @$pb.TagNumber(23)
  set staffCapacity($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(23)
  $core.bool hasStaffCapacity() => $_has(6);
  @$pb.TagNumber(23)
  void clearStaffCapacity() => clearField(23);

  @$pb.TagNumber(24)
  Address get address => $_getN(7);
  @$pb.TagNumber(24)
  set address(Address v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasAddress() => $_has(7);
  @$pb.TagNumber(24)
  void clearAddress() => clearField(24);
  @$pb.TagNumber(24)
  Address ensureAddress() => $_ensure(7);

  @$pb.TagNumber(30)
  $13.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(30)
  set createdAt($13.Timestamp v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(30)
  void clearCreatedAt() => clearField(30);
  @$pb.TagNumber(30)
  $13.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(40)
  $13.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(40)
  set updatedAt($13.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(40)
  void clearUpdatedAt() => clearField(40);
  @$pb.TagNumber(40)
  $13.Timestamp ensureUpdatedAt() => $_ensure(9);
}

class DiveMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiveMaster', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..e<LevelType>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: LevelType.INSTRUCTOR, valueOf: LevelType.valueOf, enumValues: LevelType.values)
    ..pc<File>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: File.create)
    ..aOM<$13.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  DiveMaster._() : super();
  factory DiveMaster({
    $fixnum.Int64? id,
    $core.String? firstName,
    $core.String? lastName,
    LevelType? level,
    $core.Iterable<File>? documents,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
  LevelType get level => $_getN(3);
  @$pb.TagNumber(30)
  set level(LevelType v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasLevel() => $_has(3);
  @$pb.TagNumber(30)
  void clearLevel() => clearField(30);

  @$pb.TagNumber(40)
  $core.List<File> get documents => $_getList(4);

  @$pb.TagNumber(50)
  $13.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(50)
  set createdAt($13.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearCreatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $13.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(60)
  $13.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(60)
  set updatedAt($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(60)
  void clearUpdatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureUpdatedAt() => $_ensure(6);
}

class Hotel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hotel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..aOS(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<Address>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Address.create)
    ..pc<File>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: File.create)
    ..pc<RoomType>(65, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomTypes', $pb.PbFieldType.PM, subBuilder: RoomType.create)
    ..aOM<$13.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Hotel._() : super();
  factory Hotel({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.int? stars,
    $core.String? phone,
    Address? address,
    $core.Iterable<File>? images,
    $core.Iterable<RoomType>? roomTypes,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
    if (roomTypes != null) {
      _result.roomTypes.addAll(roomTypes);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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
  Address get address => $_getN(5);
  @$pb.TagNumber(50)
  set address(Address v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasAddress() => $_has(5);
  @$pb.TagNumber(50)
  void clearAddress() => clearField(50);
  @$pb.TagNumber(50)
  Address ensureAddress() => $_ensure(5);

  @$pb.TagNumber(60)
  $core.List<File> get images => $_getList(6);

  @$pb.TagNumber(65)
  $core.List<RoomType> get roomTypes => $_getList(7);

  @$pb.TagNumber(70)
  $13.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(70)
  set createdAt($13.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(70)
  void clearCreatedAt() => clearField(70);
  @$pb.TagNumber(70)
  $13.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(80)
  $13.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(80)
  set updatedAt($13.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(80)
  void clearUpdatedAt() => clearField(80);
  @$pb.TagNumber(80)
  $13.Timestamp ensureUpdatedAt() => $_ensure(9);
}

class Liveaboard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Liveaboard', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.double>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'length', $pb.PbFieldType.OF)
    ..a<$core.double>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OF)
    ..pc<File>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: File.create)
    ..a<$core.int>(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCapacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverRooms', $pb.PbFieldType.OU3)
    ..a<$core.int>(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffRooms', $pb.PbFieldType.OU3)
    ..aOM<Address>(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Address.create)
    ..pc<RoomType>(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomTypes', $pb.PbFieldType.PM, subBuilder: RoomType.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Liveaboard._() : super();
  factory Liveaboard({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.double? length,
    $core.double? width,
    $core.Iterable<File>? images,
    $core.int? totalCapacity,
    $core.int? diverRooms,
    $core.int? staffRooms,
    Address? address,
    $core.Iterable<RoomType>? roomTypes,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
    if (roomTypes != null) {
      _result.roomTypes.addAll(roomTypes);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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
  $core.List<File> get images => $_getList(5);

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
  Address get address => $_getN(9);
  @$pb.TagNumber(54)
  set address(Address v) { setField(54, v); }
  @$pb.TagNumber(54)
  $core.bool hasAddress() => $_has(9);
  @$pb.TagNumber(54)
  void clearAddress() => clearField(54);
  @$pb.TagNumber(54)
  Address ensureAddress() => $_ensure(9);

  @$pb.TagNumber(55)
  $core.List<RoomType> get roomTypes => $_getList(10);

  @$pb.TagNumber(60)
  $13.Timestamp get createdAt => $_getN(11);
  @$pb.TagNumber(60)
  set createdAt($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasCreatedAt() => $_has(11);
  @$pb.TagNumber(60)
  void clearCreatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureCreatedAt() => $_ensure(11);

  @$pb.TagNumber(70)
  $13.Timestamp get updatedAt => $_getN(12);
  @$pb.TagNumber(70)
  set updatedAt($13.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasUpdatedAt() => $_has(12);
  @$pb.TagNumber(70)
  void clearUpdatedAt() => clearField(70);
  @$pb.TagNumber(70)
  $13.Timestamp ensureUpdatedAt() => $_ensure(12);
}

class Staff extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Staff', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position')
    ..e<GenderType>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: GenderType.FEMALE, valueOf: GenderType.valueOf, enumValues: GenderType.values)
    ..aOM<$13.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Staff._() : super();
  factory Staff({
    $fixnum.Int64? id,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? position,
    GenderType? gender,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
  GenderType get gender => $_getN(4);
  @$pb.TagNumber(40)
  set gender(GenderType v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(40)
  void clearGender() => clearField(40);

  @$pb.TagNumber(50)
  $13.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(50)
  set createdAt($13.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearCreatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $13.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(60)
  $13.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(60)
  set updatedAt($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(60)
  void clearUpdatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureUpdatedAt() => $_ensure(6);
}

class TripTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<TripType>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripType', $pb.PbFieldType.OE, defaultOrMaker: TripType.ONSHORE, valueOf: TripType.valueOf, enumValues: TripType.values)
    ..a<$fixnum.Int64>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boatId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<File>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'images', $pb.PbFieldType.PM, subBuilder: File.create)
    ..aOM<Address>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Address.create)
    ..aOM<$13.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TripTemplate._() : super();
  factory TripTemplate({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    TripType? tripType,
    $fixnum.Int64? hotelId,
    $fixnum.Int64? boatId,
    $fixnum.Int64? liveaboardId,
    $core.Iterable<File>? images,
    Address? address,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
  TripType get tripType => $_getN(3);
  @$pb.TagNumber(30)
  set tripType(TripType v) { setField(30, v); }
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
  $core.List<File> get images => $_getList(7);

  @$pb.TagNumber(80)
  Address get address => $_getN(8);
  @$pb.TagNumber(80)
  set address(Address v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasAddress() => $_has(8);
  @$pb.TagNumber(80)
  void clearAddress() => clearField(80);
  @$pb.TagNumber(80)
  Address ensureAddress() => $_ensure(8);

  @$pb.TagNumber(90)
  $13.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(90)
  set createdAt($13.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $13.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(100)
  $13.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(100)
  set updatedAt($13.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $13.Timestamp ensureUpdatedAt() => $_ensure(10);
}

class Trip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Trip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplateId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGuest', $pb.PbFieldType.OU3)
    ..a<$core.int>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'curentGuest', $pb.PbFieldType.OU3)
    ..aOS(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schedule')
    ..pc<DiveMaster>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMasters', $pb.PbFieldType.PM, subBuilder: DiveMaster.create)
    ..p<$fixnum.Int64>(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMasterIds', $pb.PbFieldType.PU6)
    ..pc<DiveSite>(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveSites', $pb.PbFieldType.PM, subBuilder: DiveSite.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReservationDate', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Trip._() : super();
  factory Trip({
    $fixnum.Int64? id,
    $fixnum.Int64? tripTemplateId,
    $core.int? maxGuest,
    $core.int? curentGuest,
    $core.String? schedule,
    $core.Iterable<DiveMaster>? diveMasters,
    $core.Iterable<$fixnum.Int64>? diveMasterIds,
    $core.Iterable<DiveSite>? diveSites,
    $13.Timestamp? startDate,
    $13.Timestamp? endDate,
    $13.Timestamp? lastReservationDate,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
    if (curentGuest != null) {
      _result.curentGuest = curentGuest;
    }
    if (schedule != null) {
      _result.schedule = schedule;
    }
    if (diveMasters != null) {
      _result.diveMasters.addAll(diveMasters);
    }
    if (diveMasterIds != null) {
      _result.diveMasterIds.addAll(diveMasterIds);
    }
    if (diveSites != null) {
      _result.diveSites.addAll(diveSites);
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
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

  @$pb.TagNumber(35)
  $core.int get curentGuest => $_getIZ(3);
  @$pb.TagNumber(35)
  set curentGuest($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(35)
  $core.bool hasCurentGuest() => $_has(3);
  @$pb.TagNumber(35)
  void clearCurentGuest() => clearField(35);

  @$pb.TagNumber(45)
  $core.String get schedule => $_getSZ(4);
  @$pb.TagNumber(45)
  set schedule($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(45)
  $core.bool hasSchedule() => $_has(4);
  @$pb.TagNumber(45)
  void clearSchedule() => clearField(45);

  @$pb.TagNumber(50)
  $core.List<DiveMaster> get diveMasters => $_getList(5);

  @$pb.TagNumber(55)
  $core.List<$fixnum.Int64> get diveMasterIds => $_getList(6);

  @$pb.TagNumber(56)
  $core.List<DiveSite> get diveSites => $_getList(7);

  @$pb.TagNumber(60)
  $13.Timestamp get startDate => $_getN(8);
  @$pb.TagNumber(60)
  set startDate($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasStartDate() => $_has(8);
  @$pb.TagNumber(60)
  void clearStartDate() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureStartDate() => $_ensure(8);

  @$pb.TagNumber(70)
  $13.Timestamp get endDate => $_getN(9);
  @$pb.TagNumber(70)
  set endDate($13.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasEndDate() => $_has(9);
  @$pb.TagNumber(70)
  void clearEndDate() => clearField(70);
  @$pb.TagNumber(70)
  $13.Timestamp ensureEndDate() => $_ensure(9);

  @$pb.TagNumber(80)
  $13.Timestamp get lastReservationDate => $_getN(10);
  @$pb.TagNumber(80)
  set lastReservationDate($13.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasLastReservationDate() => $_has(10);
  @$pb.TagNumber(80)
  void clearLastReservationDate() => clearField(80);
  @$pb.TagNumber(80)
  $13.Timestamp ensureLastReservationDate() => $_ensure(10);

  @$pb.TagNumber(90)
  $13.Timestamp get createdAt => $_getN(11);
  @$pb.TagNumber(90)
  set createdAt($13.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(11);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $13.Timestamp ensureCreatedAt() => $_ensure(11);

  @$pb.TagNumber(100)
  $13.Timestamp get updatedAt => $_getN(12);
  @$pb.TagNumber(100)
  set updatedAt($13.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(12);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $13.Timestamp ensureUpdatedAt() => $_ensure(12);
}

class TripWithTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripWithTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplateId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<TripTemplate>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripTemplate', subBuilder: TripTemplate.create)
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGuest', $pb.PbFieldType.OU3)
    ..a<$core.int>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'curentGuest', $pb.PbFieldType.OU3)
    ..aOS(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schedule')
    ..pc<DiveMaster>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveMasters', $pb.PbFieldType.PM, subBuilder: DiveMaster.create)
    ..pc<DiveSite>(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diveSites', $pb.PbFieldType.PM, subBuilder: DiveSite.create)
    ..pc<RoomTypeTripPrice>(57, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripRoomTypePrices', $pb.PbFieldType.PM, subBuilder: RoomTypeTripPrice.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReservationDate', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TripWithTemplate._() : super();
  factory TripWithTemplate({
    $fixnum.Int64? id,
    $fixnum.Int64? tripTemplateId,
    TripTemplate? tripTemplate,
    $core.int? maxGuest,
    $core.int? curentGuest,
    $core.String? schedule,
    $core.Iterable<DiveMaster>? diveMasters,
    $core.Iterable<DiveSite>? diveSites,
    $core.Iterable<RoomTypeTripPrice>? tripRoomTypePrices,
    $13.Timestamp? startDate,
    $13.Timestamp? endDate,
    $13.Timestamp? lastReservationDate,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (tripTemplateId != null) {
      _result.tripTemplateId = tripTemplateId;
    }
    if (tripTemplate != null) {
      _result.tripTemplate = tripTemplate;
    }
    if (maxGuest != null) {
      _result.maxGuest = maxGuest;
    }
    if (curentGuest != null) {
      _result.curentGuest = curentGuest;
    }
    if (schedule != null) {
      _result.schedule = schedule;
    }
    if (diveMasters != null) {
      _result.diveMasters.addAll(diveMasters);
    }
    if (diveSites != null) {
      _result.diveSites.addAll(diveSites);
    }
    if (tripRoomTypePrices != null) {
      _result.tripRoomTypePrices.addAll(tripRoomTypePrices);
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
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
  factory TripWithTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TripWithTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TripWithTemplate clone() => TripWithTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TripWithTemplate copyWith(void Function(TripWithTemplate) updates) => super.copyWith((message) => updates(message as TripWithTemplate)) as TripWithTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TripWithTemplate create() => TripWithTemplate._();
  TripWithTemplate createEmptyInstance() => create();
  static $pb.PbList<TripWithTemplate> createRepeated() => $pb.PbList<TripWithTemplate>();
  @$core.pragma('dart2js:noInline')
  static TripWithTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TripWithTemplate>(create);
  static TripWithTemplate? _defaultInstance;

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

  @$pb.TagNumber(25)
  TripTemplate get tripTemplate => $_getN(2);
  @$pb.TagNumber(25)
  set tripTemplate(TripTemplate v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasTripTemplate() => $_has(2);
  @$pb.TagNumber(25)
  void clearTripTemplate() => clearField(25);
  @$pb.TagNumber(25)
  TripTemplate ensureTripTemplate() => $_ensure(2);

  @$pb.TagNumber(30)
  $core.int get maxGuest => $_getIZ(3);
  @$pb.TagNumber(30)
  set maxGuest($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasMaxGuest() => $_has(3);
  @$pb.TagNumber(30)
  void clearMaxGuest() => clearField(30);

  @$pb.TagNumber(35)
  $core.int get curentGuest => $_getIZ(4);
  @$pb.TagNumber(35)
  set curentGuest($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(35)
  $core.bool hasCurentGuest() => $_has(4);
  @$pb.TagNumber(35)
  void clearCurentGuest() => clearField(35);

  @$pb.TagNumber(45)
  $core.String get schedule => $_getSZ(5);
  @$pb.TagNumber(45)
  set schedule($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(45)
  $core.bool hasSchedule() => $_has(5);
  @$pb.TagNumber(45)
  void clearSchedule() => clearField(45);

  @$pb.TagNumber(50)
  $core.List<DiveMaster> get diveMasters => $_getList(6);

  @$pb.TagNumber(56)
  $core.List<DiveSite> get diveSites => $_getList(7);

  @$pb.TagNumber(57)
  $core.List<RoomTypeTripPrice> get tripRoomTypePrices => $_getList(8);

  @$pb.TagNumber(60)
  $13.Timestamp get startDate => $_getN(9);
  @$pb.TagNumber(60)
  set startDate($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasStartDate() => $_has(9);
  @$pb.TagNumber(60)
  void clearStartDate() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureStartDate() => $_ensure(9);

  @$pb.TagNumber(70)
  $13.Timestamp get endDate => $_getN(10);
  @$pb.TagNumber(70)
  set endDate($13.Timestamp v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasEndDate() => $_has(10);
  @$pb.TagNumber(70)
  void clearEndDate() => clearField(70);
  @$pb.TagNumber(70)
  $13.Timestamp ensureEndDate() => $_ensure(10);

  @$pb.TagNumber(80)
  $13.Timestamp get lastReservationDate => $_getN(11);
  @$pb.TagNumber(80)
  set lastReservationDate($13.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasLastReservationDate() => $_has(11);
  @$pb.TagNumber(80)
  void clearLastReservationDate() => clearField(80);
  @$pb.TagNumber(80)
  $13.Timestamp ensureLastReservationDate() => $_ensure(11);

  @$pb.TagNumber(90)
  $13.Timestamp get createdAt => $_getN(12);
  @$pb.TagNumber(90)
  set createdAt($13.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(12);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $13.Timestamp ensureCreatedAt() => $_ensure(12);

  @$pb.TagNumber(100)
  $13.Timestamp get updatedAt => $_getN(13);
  @$pb.TagNumber(100)
  set updatedAt($13.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(13);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $13.Timestamp ensureUpdatedAt() => $_ensure(13);
}

class Amenity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Amenity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<$13.Timestamp>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Amenity._() : super();
  factory Amenity({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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
  $13.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(30)
  set createdAt($13.Timestamp v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(30)
  void clearCreatedAt() => clearField(30);
  @$pb.TagNumber(30)
  $13.Timestamp ensureCreatedAt() => $_ensure(3);

  @$pb.TagNumber(40)
  $13.Timestamp get updatedAt => $_getN(4);
  @$pb.TagNumber(40)
  set updatedAt($13.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(40)
  void clearUpdatedAt() => clearField(40);
  @$pb.TagNumber(40)
  $13.Timestamp ensureUpdatedAt() => $_ensure(4);
}

class RoomType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxGuest', $pb.PbFieldType.OU3)
    ..a<$core.double>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..a<$core.int>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OU3)
    ..pc<File>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomImages', $pb.PbFieldType.PM, subBuilder: File.create)
    ..pc<Amenity>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amenities', $pb.PbFieldType.PM, subBuilder: Amenity.create)
    ..aOM<$13.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  RoomType._() : super();
  factory RoomType({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.int? maxGuest,
    $core.double? price,
    $core.int? quantity,
    $core.Iterable<File>? roomImages,
    $core.Iterable<Amenity>? amenities,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
    if (maxGuest != null) {
      _result.maxGuest = maxGuest;
    }
    if (price != null) {
      _result.price = price;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (roomImages != null) {
      _result.roomImages.addAll(roomImages);
    }
    if (amenities != null) {
      _result.amenities.addAll(amenities);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
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
  $core.int get maxGuest => $_getIZ(3);
  @$pb.TagNumber(30)
  set maxGuest($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(30)
  $core.bool hasMaxGuest() => $_has(3);
  @$pb.TagNumber(30)
  void clearMaxGuest() => clearField(30);

  @$pb.TagNumber(40)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(40)
  set price($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(40)
  void clearPrice() => clearField(40);

  @$pb.TagNumber(50)
  $core.int get quantity => $_getIZ(5);
  @$pb.TagNumber(50)
  set quantity($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(50)
  $core.bool hasQuantity() => $_has(5);
  @$pb.TagNumber(50)
  void clearQuantity() => clearField(50);

  @$pb.TagNumber(60)
  $core.List<File> get roomImages => $_getList(6);

  @$pb.TagNumber(70)
  $core.List<Amenity> get amenities => $_getList(7);

  @$pb.TagNumber(90)
  $13.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(90)
  set createdAt($13.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $13.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(100)
  $13.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(100)
  set updatedAt($13.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $13.Timestamp ensureUpdatedAt() => $_ensure(9);
}

class DiveSite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiveSite', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minDepth', $pb.PbFieldType.OU3)
    ..a<$core.int>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxDepth', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$13.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  DiveSite._() : super();
  factory DiveSite({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.int? minDepth,
    $core.int? maxDepth,
    $fixnum.Int64? tripId,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
    if (minDepth != null) {
      _result.minDepth = minDepth;
    }
    if (maxDepth != null) {
      _result.maxDepth = maxDepth;
    }
    if (tripId != null) {
      _result.tripId = tripId;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory DiveSite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiveSite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiveSite clone() => DiveSite()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiveSite copyWith(void Function(DiveSite) updates) => super.copyWith((message) => updates(message as DiveSite)) as DiveSite; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiveSite create() => DiveSite._();
  DiveSite createEmptyInstance() => create();
  static $pb.PbList<DiveSite> createRepeated() => $pb.PbList<DiveSite>();
  @$core.pragma('dart2js:noInline')
  static DiveSite getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiveSite>(create);
  static DiveSite? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(10)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(10)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(10)
  void clearDescription() => clearField(10);

  @$pb.TagNumber(20)
  $core.int get minDepth => $_getIZ(3);
  @$pb.TagNumber(20)
  set minDepth($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(20)
  $core.bool hasMinDepth() => $_has(3);
  @$pb.TagNumber(20)
  void clearMinDepth() => clearField(20);

  @$pb.TagNumber(25)
  $core.int get maxDepth => $_getIZ(4);
  @$pb.TagNumber(25)
  set maxDepth($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(25)
  $core.bool hasMaxDepth() => $_has(4);
  @$pb.TagNumber(25)
  void clearMaxDepth() => clearField(25);

  @$pb.TagNumber(30)
  $fixnum.Int64 get tripId => $_getI64(5);
  @$pb.TagNumber(30)
  set tripId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(30)
  $core.bool hasTripId() => $_has(5);
  @$pb.TagNumber(30)
  void clearTripId() => clearField(30);

  @$pb.TagNumber(90)
  $13.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(90)
  set createdAt($13.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(90)
  void clearCreatedAt() => clearField(90);
  @$pb.TagNumber(90)
  $13.Timestamp ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(100)
  $13.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(100)
  set updatedAt($13.Timestamp v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(100)
  void clearUpdatedAt() => clearField(100);
  @$pb.TagNumber(100)
  $13.Timestamp ensureUpdatedAt() => $_ensure(7);
}

class ReportTrip extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReportTrip', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..aOM<TripWithTemplate>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trip', subBuilder: TripWithTemplate.create)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placesLeft', $pb.PbFieldType.OU3)
    ..pc<Diver>(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divers', $pb.PbFieldType.PM, subBuilder: Diver.create)
    ..pc<Reservation>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservations', $pb.PbFieldType.PM, subBuilder: Reservation.create)
    ..hasRequiredFields = false
  ;

  ReportTrip._() : super();
  factory ReportTrip({
    TripWithTemplate? trip,
    $core.int? placesLeft,
    $core.Iterable<Diver>? divers,
    $core.Iterable<Reservation>? reservations,
  }) {
    final _result = create();
    if (trip != null) {
      _result.trip = trip;
    }
    if (placesLeft != null) {
      _result.placesLeft = placesLeft;
    }
    if (divers != null) {
      _result.divers.addAll(divers);
    }
    if (reservations != null) {
      _result.reservations.addAll(reservations);
    }
    return _result;
  }
  factory ReportTrip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportTrip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportTrip clone() => ReportTrip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportTrip copyWith(void Function(ReportTrip) updates) => super.copyWith((message) => updates(message as ReportTrip)) as ReportTrip; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReportTrip create() => ReportTrip._();
  ReportTrip createEmptyInstance() => create();
  static $pb.PbList<ReportTrip> createRepeated() => $pb.PbList<ReportTrip>();
  @$core.pragma('dart2js:noInline')
  static ReportTrip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportTrip>(create);
  static ReportTrip? _defaultInstance;

  @$pb.TagNumber(10)
  TripWithTemplate get trip => $_getN(0);
  @$pb.TagNumber(10)
  set trip(TripWithTemplate v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(10)
  void clearTrip() => clearField(10);
  @$pb.TagNumber(10)
  TripWithTemplate ensureTrip() => $_ensure(0);

  @$pb.TagNumber(20)
  $core.int get placesLeft => $_getIZ(1);
  @$pb.TagNumber(20)
  set placesLeft($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(20)
  $core.bool hasPlacesLeft() => $_has(1);
  @$pb.TagNumber(20)
  void clearPlacesLeft() => clearField(20);

  @$pb.TagNumber(45)
  $core.List<Diver> get divers => $_getList(2);

  @$pb.TagNumber(50)
  $core.List<Reservation> get reservations => $_getList(3);
}

class Payment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Payment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<File>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentSlip', subBuilder: File.create)
    ..aOB(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verified')
    ..aOM<Diver>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diver', subBuilder: Diver.create)
    ..a<$fixnum.Int64>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$13.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Payment._() : super();
  factory Payment({
    $fixnum.Int64? id,
    File? paymentSlip,
    $core.bool? verified,
    Diver? diver,
    $fixnum.Int64? reservationId,
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (paymentSlip != null) {
      _result.paymentSlip = paymentSlip;
    }
    if (verified != null) {
      _result.verified = verified;
    }
    if (diver != null) {
      _result.diver = diver;
    }
    if (reservationId != null) {
      _result.reservationId = reservationId;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Payment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Payment clone() => Payment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Payment copyWith(void Function(Payment) updates) => super.copyWith((message) => updates(message as Payment)) as Payment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Payment create() => Payment._();
  Payment createEmptyInstance() => create();
  static $pb.PbList<Payment> createRepeated() => $pb.PbList<Payment>();
  @$core.pragma('dart2js:noInline')
  static Payment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Payment>(create);
  static Payment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(10)
  File get paymentSlip => $_getN(1);
  @$pb.TagNumber(10)
  set paymentSlip(File v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPaymentSlip() => $_has(1);
  @$pb.TagNumber(10)
  void clearPaymentSlip() => clearField(10);
  @$pb.TagNumber(10)
  File ensurePaymentSlip() => $_ensure(1);

  @$pb.TagNumber(20)
  $core.bool get verified => $_getBF(2);
  @$pb.TagNumber(20)
  set verified($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(20)
  $core.bool hasVerified() => $_has(2);
  @$pb.TagNumber(20)
  void clearVerified() => clearField(20);

  @$pb.TagNumber(30)
  Diver get diver => $_getN(3);
  @$pb.TagNumber(30)
  set diver(Diver v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasDiver() => $_has(3);
  @$pb.TagNumber(30)
  void clearDiver() => clearField(30);
  @$pb.TagNumber(30)
  Diver ensureDiver() => $_ensure(3);

  @$pb.TagNumber(40)
  $fixnum.Int64 get reservationId => $_getI64(4);
  @$pb.TagNumber(40)
  set reservationId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasReservationId() => $_has(4);
  @$pb.TagNumber(40)
  void clearReservationId() => clearField(40);

  @$pb.TagNumber(50)
  $13.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(50)
  set createdAt($13.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(50)
  void clearCreatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $13.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(60)
  $13.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(60)
  set updatedAt($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(60)
  void clearUpdatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureUpdatedAt() => $_ensure(6);
}

class Reservation_Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Reservation.Room', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Reservation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diverId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalDivers', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<Reservation_Room>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: Reservation_Room.create)
    ..aOM<$13.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $13.Timestamp.create)
    ..aOM<$13.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $13.Timestamp.create)
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
    $13.Timestamp? createdAt,
    $13.Timestamp? updatedAt,
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
  $13.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(50)
  set createdAt($13.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(50)
  void clearCreatedAt() => clearField(50);
  @$pb.TagNumber(50)
  $13.Timestamp ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(60)
  $13.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(60)
  set updatedAt($13.Timestamp v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(60)
  void clearUpdatedAt() => clearField(60);
  @$pb.TagNumber(60)
  $13.Timestamp ensureUpdatedAt() => $_ensure(7);
}

class ReservationRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReservationRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomTypeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tripId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noDivers', $pb.PbFieldType.OU3)
    ..a<$core.int>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReservationRoom._() : super();
  factory ReservationRoom({
    $fixnum.Int64? reservationId,
    $fixnum.Int64? roomTypeId,
    $fixnum.Int64? tripId,
    $core.int? noDivers,
    $core.int? quantity,
  }) {
    final _result = create();
    if (reservationId != null) {
      _result.reservationId = reservationId;
    }
    if (roomTypeId != null) {
      _result.roomTypeId = roomTypeId;
    }
    if (tripId != null) {
      _result.tripId = tripId;
    }
    if (noDivers != null) {
      _result.noDivers = noDivers;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory ReservationRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReservationRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReservationRoom clone() => ReservationRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReservationRoom copyWith(void Function(ReservationRoom) updates) => super.copyWith((message) => updates(message as ReservationRoom)) as ReservationRoom; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReservationRoom create() => ReservationRoom._();
  ReservationRoom createEmptyInstance() => create();
  static $pb.PbList<ReservationRoom> createRepeated() => $pb.PbList<ReservationRoom>();
  @$core.pragma('dart2js:noInline')
  static ReservationRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReservationRoom>(create);
  static ReservationRoom? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get reservationId => $_getI64(0);
  @$pb.TagNumber(1)
  set reservationId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReservationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReservationId() => clearField(1);

  @$pb.TagNumber(10)
  $fixnum.Int64 get roomTypeId => $_getI64(1);
  @$pb.TagNumber(10)
  set roomTypeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasRoomTypeId() => $_has(1);
  @$pb.TagNumber(10)
  void clearRoomTypeId() => clearField(10);

  @$pb.TagNumber(15)
  $fixnum.Int64 get tripId => $_getI64(2);
  @$pb.TagNumber(15)
  set tripId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(15)
  $core.bool hasTripId() => $_has(2);
  @$pb.TagNumber(15)
  void clearTripId() => clearField(15);

  @$pb.TagNumber(20)
  $core.int get noDivers => $_getIZ(3);
  @$pb.TagNumber(20)
  set noDivers($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(20)
  $core.bool hasNoDivers() => $_has(3);
  @$pb.TagNumber(20)
  void clearNoDivers() => clearField(20);

  @$pb.TagNumber(40)
  $core.int get quantity => $_getIZ(4);
  @$pb.TagNumber(40)
  set quantity($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(40)
  $core.bool hasQuantity() => $_has(4);
  @$pb.TagNumber(40)
  void clearQuantity() => clearField(40);
}

class RoomTypeTripPrice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomTypeTripPrice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liveaboardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomTypeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  RoomTypeTripPrice._() : super();
  factory RoomTypeTripPrice({
    $fixnum.Int64? hotelId,
    $fixnum.Int64? liveaboardId,
    $fixnum.Int64? roomTypeId,
    $core.double? price,
  }) {
    final _result = create();
    if (hotelId != null) {
      _result.hotelId = hotelId;
    }
    if (liveaboardId != null) {
      _result.liveaboardId = liveaboardId;
    }
    if (roomTypeId != null) {
      _result.roomTypeId = roomTypeId;
    }
    if (price != null) {
      _result.price = price;
    }
    return _result;
  }
  factory RoomTypeTripPrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomTypeTripPrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomTypeTripPrice clone() => RoomTypeTripPrice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomTypeTripPrice copyWith(void Function(RoomTypeTripPrice) updates) => super.copyWith((message) => updates(message as RoomTypeTripPrice)) as RoomTypeTripPrice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomTypeTripPrice create() => RoomTypeTripPrice._();
  RoomTypeTripPrice createEmptyInstance() => create();
  static $pb.PbList<RoomTypeTripPrice> createRepeated() => $pb.PbList<RoomTypeTripPrice>();
  @$core.pragma('dart2js:noInline')
  static RoomTypeTripPrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomTypeTripPrice>(create);
  static RoomTypeTripPrice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get hotelId => $_getI64(0);
  @$pb.TagNumber(1)
  set hotelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotelId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get liveaboardId => $_getI64(1);
  @$pb.TagNumber(2)
  set liveaboardId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLiveaboardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveaboardId() => clearField(2);

  @$pb.TagNumber(10)
  $fixnum.Int64 get roomTypeId => $_getI64(2);
  @$pb.TagNumber(10)
  set roomTypeId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasRoomTypeId() => $_has(2);
  @$pb.TagNumber(10)
  void clearRoomTypeId() => clearField(10);

  @$pb.TagNumber(20)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(20)
  set price($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(20)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(20)
  void clearPrice() => clearField(20);
}

