///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pbenum.dart' as $2;

class Diver extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Diver', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'diver'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frontLink')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backLink')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frontImage', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backImage', $pb.PbFieldType.OY)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthDate', $pb.PbFieldType.OU3)
    ..e<$2.Level>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: $2.Level.INSTRUCTOR, valueOf: $2.Level.valueOf, enumValues: $2.Level.values)
    ..hasRequiredFields = false
  ;

  Diver._() : super();
  factory Diver({
    $core.String? firstName,
    $core.String? lastName,
    $core.String? phoneNumber,
    $core.String? frontLink,
    $core.String? backLink,
    $core.List<$core.int>? frontImage,
    $core.List<$core.int>? backImage,
    $core.int? birthDate,
    $2.Level? level,
  }) {
    final _result = create();
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (frontLink != null) {
      _result.frontLink = frontLink;
    }
    if (backLink != null) {
      _result.backLink = backLink;
    }
    if (frontImage != null) {
      _result.frontImage = frontImage;
    }
    if (backImage != null) {
      _result.backImage = backImage;
    }
    if (birthDate != null) {
      _result.birthDate = birthDate;
    }
    if (level != null) {
      _result.level = level;
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
  $core.String get phoneNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get frontLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set frontLink($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrontLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrontLink() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get backLink => $_getSZ(4);
  @$pb.TagNumber(5)
  set backLink($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBackLink() => $_has(4);
  @$pb.TagNumber(5)
  void clearBackLink() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get frontImage => $_getN(5);
  @$pb.TagNumber(6)
  set frontImage($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFrontImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearFrontImage() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get backImage => $_getN(6);
  @$pb.TagNumber(7)
  set backImage($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBackImage() => $_has(6);
  @$pb.TagNumber(7)
  void clearBackImage() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get birthDate => $_getIZ(7);
  @$pb.TagNumber(8)
  set birthDate($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBirthDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearBirthDate() => clearField(8);

  @$pb.TagNumber(9)
  $2.Level get level => $_getN(8);
  @$pb.TagNumber(9)
  set level($2.Level v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLevel() => $_has(8);
  @$pb.TagNumber(9)
  void clearLevel() => clearField(9);
}

