///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Room_RoomType extends $pb.ProtobufEnum {
  static const Room_RoomType SINGLE = Room_RoomType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SINGLE');
  static const Room_RoomType DOUBLE = Room_RoomType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOUBLE');
  static const Room_RoomType TRIPLE = Room_RoomType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRIPLE');
  static const Room_RoomType QUAD = Room_RoomType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QUAD');
  static const Room_RoomType QUEEN = Room_RoomType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QUEEN');
  static const Room_RoomType KING = Room_RoomType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KING');
  static const Room_RoomType TWIN = Room_RoomType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TWIN');
  static const Room_RoomType HOLLYWOOD_TWIN_ROOM = Room_RoomType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HOLLYWOOD_TWIN_ROOM');
  static const Room_RoomType DOUBLE_DOUBLE = Room_RoomType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOUBLE_DOUBLE');
  static const Room_RoomType STUDIO = Room_RoomType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STUDIO');
  static const Room_RoomType EXECUTEIVE_SUITE = Room_RoomType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXECUTEIVE_SUITE');
  static const Room_RoomType MINI_SUITE = Room_RoomType._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MINI_SUITE');
  static const Room_RoomType PRESIDENTAL_SUITE = Room_RoomType._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESIDENTAL_SUITE');
  static const Room_RoomType APARTMENT = Room_RoomType._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APARTMENT');
  static const Room_RoomType CONNECTING_ROOMS = Room_RoomType._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECTING_ROOMS');
  static const Room_RoomType MURPHY_ROOM = Room_RoomType._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MURPHY_ROOM');
  static const Room_RoomType DISABLED_ROOM = Room_RoomType._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISABLED_ROOM');
  static const Room_RoomType CABANA = Room_RoomType._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CABANA');
  static const Room_RoomType ADJOINING_ROOMS = Room_RoomType._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADJOINING_ROOMS');
  static const Room_RoomType ADJACENT_ROOMS = Room_RoomType._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADJACENT_ROOMS');
  static const Room_RoomType VILLA = Room_RoomType._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VILLA');
  static const Room_RoomType FLOORED_ROOM = Room_RoomType._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLOORED_ROOM');
  static const Room_RoomType SMOKING_NON_SMOKING = Room_RoomType._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SMOKING_NON_SMOKING');

  static const $core.List<Room_RoomType> values = <Room_RoomType> [
    SINGLE,
    DOUBLE,
    TRIPLE,
    QUAD,
    QUEEN,
    KING,
    TWIN,
    HOLLYWOOD_TWIN_ROOM,
    DOUBLE_DOUBLE,
    STUDIO,
    EXECUTEIVE_SUITE,
    MINI_SUITE,
    PRESIDENTAL_SUITE,
    APARTMENT,
    CONNECTING_ROOMS,
    MURPHY_ROOM,
    DISABLED_ROOM,
    CABANA,
    ADJOINING_ROOMS,
    ADJACENT_ROOMS,
    VILLA,
    FLOORED_ROOM,
    SMOKING_NON_SMOKING,
  ];

  static final $core.Map<$core.int, Room_RoomType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Room_RoomType? valueOf($core.int value) => _byValue[value];

  const Room_RoomType._($core.int v, $core.String n) : super(v, n);
}

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

