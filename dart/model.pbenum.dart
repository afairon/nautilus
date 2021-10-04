///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccountType extends $pb.ProtobufEnum {
  static const AccountType ADMIN = AccountType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADMIN');
  static const AccountType AGENCY = AccountType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AGENCY');
  static const AccountType DIVER = AccountType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIVER');

  static const $core.List<AccountType> values = <AccountType> [
    ADMIN,
    AGENCY,
    DIVER,
  ];

  static final $core.Map<$core.int, AccountType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountType? valueOf($core.int value) => _byValue[value];

  const AccountType._($core.int v, $core.String n) : super(v, n);
}

class GenderType extends $pb.ProtobufEnum {
  static const GenderType FEMALE = GenderType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FEMALE');
  static const GenderType MALE = GenderType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MALE');

  static const $core.List<GenderType> values = <GenderType> [
    FEMALE,
    MALE,
  ];

  static final $core.Map<$core.int, GenderType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GenderType? valueOf($core.int value) => _byValue[value];

  const GenderType._($core.int v, $core.String n) : super(v, n);
}

class LevelType extends $pb.ProtobufEnum {
  static const LevelType INSTRUCTOR = LevelType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INSTRUCTOR');
  static const LevelType MASTER = LevelType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MASTER');
  static const LevelType RESCUE = LevelType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESCUE');
  static const LevelType ADVANCED_OPEN_WATER = LevelType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADVANCED_OPEN_WATER');
  static const LevelType OPEN_WATER = LevelType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN_WATER');

  static const $core.List<LevelType> values = <LevelType> [
    INSTRUCTOR,
    MASTER,
    RESCUE,
    ADVANCED_OPEN_WATER,
    OPEN_WATER,
  ];

  static final $core.Map<$core.int, LevelType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LevelType? valueOf($core.int value) => _byValue[value];

  const LevelType._($core.int v, $core.String n) : super(v, n);
}

class TripType extends $pb.ProtobufEnum {
  static const TripType ONSHORE = TripType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ONSHORE');
  static const TripType OFFSHORE = TripType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OFFSHORE');

  static const $core.List<TripType> values = <TripType> [
    ONSHORE,
    OFFSHORE,
  ];

  static final $core.Map<$core.int, TripType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TripType? valueOf($core.int value) => _byValue[value];

  const TripType._($core.int v, $core.String n) : super(v, n);
}

