///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listReservationsWithTripsRequestDescriptor instead')
const ListReservationsWithTripsRequest$json = const {
  '1': 'ListReservationsWithTripsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListReservationsWithTripsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReservationsWithTripsRequestDescriptor = $convert.base64Decode('CiBMaXN0UmVzZXJ2YXRpb25zV2l0aFRyaXBzUmVxdWVzdBIUCgVsaW1pdBgBIAEoBFIFbGltaXQSFgoGb2Zmc2V0GAIgASgEUgZvZmZzZXQ=');
@$core.Deprecated('Use listReservationsWithTripsResponseDescriptor instead')
const ListReservationsWithTripsResponse$json = const {
  '1': 'ListReservationsWithTripsResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripWithTemplate', '10': 'trip'},
    const {'1': 'reservation', '3': 10, '4': 1, '5': 11, '6': '.model.Reservation', '10': 'reservation'},
  ],
};

/// Descriptor for `ListReservationsWithTripsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReservationsWithTripsResponseDescriptor = $convert.base64Decode('CiFMaXN0UmVzZXJ2YXRpb25zV2l0aFRyaXBzUmVzcG9uc2USKwoEdHJpcBgBIAEoCzIXLm1vZGVsLlRyaXBXaXRoVGVtcGxhdGVSBHRyaXASNAoLcmVzZXJ2YXRpb24YCiABKAsyEi5tb2RlbC5SZXNlcnZhdGlvblILcmVzZXJ2YXRpb24=');
