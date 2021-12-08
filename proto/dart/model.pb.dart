///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $5;

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
    ..e<AccountType>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: AccountType.ADMIN, valueOf: AccountType.valueOf, enumValues: AccountType.values)
    ..aOB(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verified')
    ..aOB(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account({
    $fixnum.Int64? id,
    $core.String? username,
    $core.String? email,
    $core.String? password,
    AccountType? type,
    $core.bool? verified,
    $core.bool? active,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
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
    if (type != null) {
      _result.type = type;
    }
    if (verified != null) {
      _result.verified = verified;
    }
    if (active != null) {
      _result.active = active;
    }
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
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

  @$pb.TagNumber(40)
  AccountType get type => $_getN(4);
  @$pb.TagNumber(40)
  set type(AccountType v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(40)
  void clearType() => clearField(40);

  @$pb.TagNumber(50)
  $core.bool get verified => $_getBF(5);
  @$pb.TagNumber(50)
  set verified($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(50)
  $core.bool hasVerified() => $_has(5);
  @$pb.TagNumber(50)
  void clearVerified() => clearField(50);

  @$pb.TagNumber(60)
  $core.bool get active => $_getBF(6);
  @$pb.TagNumber(60)
  set active($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(60)
  $core.bool hasActive() => $_has(6);
  @$pb.TagNumber(60)
  void clearActive() => clearField(60);

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

class Address extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Address', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressLine1', protoName: 'address_line_1')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressLine2', protoName: 'address_line_2')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postcode')
    ..aOS(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region')
    ..aOS(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
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
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
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
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
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

class Agency extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Agency', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<Account>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: Account.create)
    ..aOM<Address>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Address.create)
    ..pc<File>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: File.create)
    ..aOM<$5.Timestamp>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Agency._() : super();
  factory Agency({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? phone,
    Account? account,
    Address? address,
    $core.Iterable<File>? documents,
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
    if (phone != null) {
      _result.phone = phone;
    }
    if (account != null) {
      _result.account = account;
    }
    if (address != null) {
      _result.address = address;
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

  @$pb.TagNumber(50)
  $core.List<File> get documents => $_getList(5);

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

class Diver extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Diver', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<$5.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthDate', subBuilder: $5.Timestamp.create)
    ..e<LevelType>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: LevelType.INSTRUCTOR, valueOf: LevelType.valueOf, enumValues: LevelType.values)
    ..aOM<Account>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: Account.create)
    ..pc<File>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'documents', $pb.PbFieldType.PM, subBuilder: File.create)
    ..aOM<$5.Timestamp>(80, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(90, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Diver._() : super();
  factory Diver({
    $fixnum.Int64? id,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? phone,
    $5.Timestamp? birthDate,
    LevelType? level,
    Account? account,
    $core.Iterable<File>? documents,
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
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
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
  $5.Timestamp get birthDate => $_getN(4);
  @$pb.TagNumber(40)
  set birthDate($5.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasBirthDate() => $_has(4);
  @$pb.TagNumber(40)
  void clearBirthDate() => clearField(40);
  @$pb.TagNumber(40)
  $5.Timestamp ensureBirthDate() => $_ensure(4);

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
  $5.Timestamp get createdOn => $_getN(8);
  @$pb.TagNumber(80)
  set createdOn($5.Timestamp v) { setField(80, v); }
  @$pb.TagNumber(80)
  $core.bool hasCreatedOn() => $_has(8);
  @$pb.TagNumber(80)
  void clearCreatedOn() => clearField(80);
  @$pb.TagNumber(80)
  $5.Timestamp ensureCreatedOn() => $_ensure(8);

  @$pb.TagNumber(90)
  $5.Timestamp get updatedOn => $_getN(9);
  @$pb.TagNumber(90)
  set updatedOn($5.Timestamp v) { setField(90, v); }
  @$pb.TagNumber(90)
  $core.bool hasUpdatedOn() => $_has(9);
  @$pb.TagNumber(90)
  void clearUpdatedOn() => clearField(90);
  @$pb.TagNumber(90)
  $5.Timestamp ensureUpdatedOn() => $_ensure(9);
}

class TripComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TripComment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$5.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TripComment._() : super();
  factory TripComment({
    $fixnum.Int64? id,
    $core.String? comment,
    $core.int? stars,
    $fixnum.Int64? reservationId,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
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
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
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
  $5.Timestamp get createdOn => $_getN(4);
  @$pb.TagNumber(40)
  set createdOn($5.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasCreatedOn() => $_has(4);
  @$pb.TagNumber(40)
  void clearCreatedOn() => clearField(40);
  @$pb.TagNumber(40)
  $5.Timestamp ensureCreatedOn() => $_ensure(4);

  @$pb.TagNumber(50)
  $5.Timestamp get updatedOn => $_getN(5);
  @$pb.TagNumber(50)
  set updatedOn($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasUpdatedOn() => $_has(5);
  @$pb.TagNumber(50)
  void clearUpdatedOn() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureUpdatedOn() => $_ensure(5);
}

class HotelComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HotelComment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$5.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  HotelComment._() : super();
  factory HotelComment({
    $fixnum.Int64? id,
    $core.String? comment,
    $core.int? stars,
    $fixnum.Int64? reservationId,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
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
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
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
  $5.Timestamp get createdOn => $_getN(4);
  @$pb.TagNumber(40)
  set createdOn($5.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasCreatedOn() => $_has(4);
  @$pb.TagNumber(40)
  void clearCreatedOn() => clearField(40);
  @$pb.TagNumber(40)
  $5.Timestamp ensureCreatedOn() => $_ensure(4);

  @$pb.TagNumber(50)
  $5.Timestamp get updatedOn => $_getN(5);
  @$pb.TagNumber(50)
  set updatedOn($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasUpdatedOn() => $_has(5);
  @$pb.TagNumber(50)
  void clearUpdatedOn() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureUpdatedOn() => $_ensure(5);
}

class LiveaboardComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LiveaboardComment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'model'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$5.Timestamp>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedOn', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  LiveaboardComment._() : super();
  factory LiveaboardComment({
    $fixnum.Int64? id,
    $core.String? comment,
    $core.int? stars,
    $fixnum.Int64? reservationId,
    $5.Timestamp? createdOn,
    $5.Timestamp? updatedOn,
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
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (updatedOn != null) {
      _result.updatedOn = updatedOn;
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
  $5.Timestamp get createdOn => $_getN(4);
  @$pb.TagNumber(40)
  set createdOn($5.Timestamp v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasCreatedOn() => $_has(4);
  @$pb.TagNumber(40)
  void clearCreatedOn() => clearField(40);
  @$pb.TagNumber(40)
  $5.Timestamp ensureCreatedOn() => $_ensure(4);

  @$pb.TagNumber(50)
  $5.Timestamp get updatedOn => $_getN(5);
  @$pb.TagNumber(50)
  set updatedOn($5.Timestamp v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasUpdatedOn() => $_has(5);
  @$pb.TagNumber(50)
  void clearUpdatedOn() => clearField(50);
  @$pb.TagNumber(50)
  $5.Timestamp ensureUpdatedOn() => $_ensure(5);
}

