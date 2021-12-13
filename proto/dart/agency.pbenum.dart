///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TripTemplate_TripType extends $pb.ProtobufEnum {
  static const TripTemplate_TripType LIVEABOARD = TripTemplate_TripType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIVEABOARD');
  static const TripTemplate_TripType DIVE_RESORTS = TripTemplate_TripType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIVE_RESORTS');

  static const $core.List<TripTemplate_TripType> values = <TripTemplate_TripType> [
    LIVEABOARD,
    DIVE_RESORTS,
  ];

  static final $core.Map<$core.int, TripTemplate_TripType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TripTemplate_TripType? valueOf($core.int value) => _byValue[value];

  const TripTemplate_TripType._($core.int v, $core.String n) : super(v, n);
}

