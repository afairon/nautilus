///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listBookedTripsRequestDescriptor instead')
const ListBookedTripsRequest$json = const {
  '1': 'ListBookedTripsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListBookedTripsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBookedTripsRequestDescriptor = $convert.base64Decode('ChZMaXN0Qm9va2VkVHJpcHNSZXF1ZXN0EhQKBWxpbWl0GAEgASgEUgVsaW1pdBIWCgZvZmZzZXQYAiABKARSBm9mZnNldA==');
@$core.Deprecated('Use listBookedTripsResponseDescriptor instead')
const ListBookedTripsResponse$json = const {
  '1': 'ListBookedTripsResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripWithTemplate', '10': 'trip'},
  ],
};

/// Descriptor for `ListBookedTripsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBookedTripsResponseDescriptor = $convert.base64Decode('ChdMaXN0Qm9va2VkVHJpcHNSZXNwb25zZRIrCgR0cmlwGAEgASgLMhcubW9kZWwuVHJpcFdpdGhUZW1wbGF0ZVIEdHJpcA==');
