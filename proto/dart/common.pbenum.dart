///
//  Generated code. Do not modify.
//  source: common.proto
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

class Level extends $pb.ProtobufEnum {
  static const Level INSTRUCTOR = Level._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INSTRUCTOR');
  static const Level MASTER = Level._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MASTER');
  static const Level RESCUE = Level._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESCUE');
  static const Level ADVANCED = Level._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADVANCED');
  static const Level OPEN = Level._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN');

  static const $core.List<Level> values = <Level> [
    INSTRUCTOR,
    MASTER,
    RESCUE,
    ADVANCED,
    OPEN,
  ];

  static final $core.Map<$core.int, Level> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Level? valueOf($core.int value) => _byValue[value];

  const Level._($core.int v, $core.String n) : super(v, n);
}

