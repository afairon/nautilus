///
//  Generated code. Do not modify.
//  source: boat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getBoatRequestDescriptor instead')
const GetBoatRequest$json = const {
  '1': 'GetBoatRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `GetBoatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBoatRequestDescriptor = $convert.base64Decode('Cg5HZXRCb2F0UmVxdWVzdBIOCgJpZBgBIAEoBFICaWQ=');
@$core.Deprecated('Use getBoatResponseDescriptor instead')
const GetBoatResponse$json = const {
  '1': 'GetBoatResponse',
  '2': const [
    const {'1': 'boat', '3': 1, '4': 1, '5': 11, '6': '.model.Boat', '10': 'boat'},
  ],
};

/// Descriptor for `GetBoatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBoatResponseDescriptor = $convert.base64Decode('Cg9HZXRCb2F0UmVzcG9uc2USHwoEYm9hdBgBIAEoCzILLm1vZGVsLkJvYXRSBGJvYXQ=');
