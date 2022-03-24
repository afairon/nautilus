///
//  Generated code. Do not modify.
//  source: trip.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listValidTripsRequestDescriptor instead')
const ListValidTripsRequest$json = const {
  '1': 'ListValidTripsRequest',
  '2': const [
    const {'1': 'limit', '3': 2, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 3, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListValidTripsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listValidTripsRequestDescriptor = $convert.base64Decode('ChVMaXN0VmFsaWRUcmlwc1JlcXVlc3QSFAoFbGltaXQYAiABKARSBWxpbWl0EhYKBm9mZnNldBgDIAEoBFIGb2Zmc2V0');
@$core.Deprecated('Use listValidTripsResponseDescriptor instead')
const ListValidTripsResponse$json = const {
  '1': 'ListValidTripsResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripWithTemplate', '10': 'trip'},
  ],
};

/// Descriptor for `ListValidTripsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listValidTripsResponseDescriptor = $convert.base64Decode('ChZMaXN0VmFsaWRUcmlwc1Jlc3BvbnNlEisKBHRyaXAYASABKAsyFy5tb2RlbC5UcmlwV2l0aFRlbXBsYXRlUgR0cmlw');
