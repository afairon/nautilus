///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'common.pbenum.dart';

class Address extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Address', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'common'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresLine1', protoName: 'addres_line_1')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresLine2', protoName: 'addres_line_2')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postalCode')
    ..hasRequiredFields = false
  ;

  Address._() : super();
  factory Address({
    $core.String? country,
    $core.String? region,
    $core.String? city,
    $core.String? addresLine1,
    $core.String? addresLine2,
    $core.String? postalCode,
  }) {
    final _result = create();
    if (country != null) {
      _result.country = country;
    }
    if (region != null) {
      _result.region = region;
    }
    if (city != null) {
      _result.city = city;
    }
    if (addresLine1 != null) {
      _result.addresLine1 = addresLine1;
    }
    if (addresLine2 != null) {
      _result.addresLine2 = addresLine2;
    }
    if (postalCode != null) {
      _result.postalCode = postalCode;
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
  $core.String get country => $_getSZ(0);
  @$pb.TagNumber(1)
  set country($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get region => $_getSZ(1);
  @$pb.TagNumber(2)
  set region($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegion() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get city => $_getSZ(2);
  @$pb.TagNumber(3)
  set city($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCity() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get addresLine1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set addresLine1($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddresLine1() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddresLine1() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get addresLine2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set addresLine2($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddresLine2() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddresLine2() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get postalCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set postalCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPostalCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearPostalCode() => clearField(6);
}

class FileTransfer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileTransfer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'common'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filename')
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  FileTransfer._() : super();
  factory FileTransfer({
    $core.String? filename,
    $core.List<$core.int>? file,
  }) {
    final _result = create();
    if (filename != null) {
      _result.filename = filename;
    }
    if (file != null) {
      _result.file = file;
    }
    return _result;
  }
  factory FileTransfer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileTransfer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileTransfer clone() => FileTransfer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileTransfer copyWith(void Function(FileTransfer) updates) => super.copyWith((message) => updates(message as FileTransfer)) as FileTransfer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileTransfer create() => FileTransfer._();
  FileTransfer createEmptyInstance() => create();
  static $pb.PbList<FileTransfer> createRepeated() => $pb.PbList<FileTransfer>();
  @$core.pragma('dart2js:noInline')
  static FileTransfer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileTransfer>(create);
  static FileTransfer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filename => $_getSZ(0);
  @$pb.TagNumber(1)
  set filename($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilename() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilename() => clearField(1);

  @$pb.TagNumber(10)
  $core.List<$core.int> get file => $_getN(1);
  @$pb.TagNumber(10)
  set file($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(10)
  void clearFile() => clearField(10);
}

