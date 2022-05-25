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
@$core.Deprecated('Use getAgencyAccountNumberByTripRequestDescriptor instead')
const GetAgencyAccountNumberByTripRequest$json = const {
  '1': 'GetAgencyAccountNumberByTripRequest',
  '2': const [
    const {'1': 'trip_id', '3': 1, '4': 1, '5': 4, '10': 'tripId'},
  ],
};

/// Descriptor for `GetAgencyAccountNumberByTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgencyAccountNumberByTripRequestDescriptor = $convert.base64Decode('CiNHZXRBZ2VuY3lBY2NvdW50TnVtYmVyQnlUcmlwUmVxdWVzdBIXCgd0cmlwX2lkGAEgASgEUgZ0cmlwSWQ=');
@$core.Deprecated('Use getAgencyAccountNumberByTripResponseDescriptor instead')
const GetAgencyAccountNumberByTripResponse$json = const {
  '1': 'GetAgencyAccountNumberByTripResponse',
  '2': const [
    const {'1': 'account_number', '3': 1, '4': 1, '5': 9, '10': 'accountNumber'},
  ],
};

/// Descriptor for `GetAgencyAccountNumberByTripResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgencyAccountNumberByTripResponseDescriptor = $convert.base64Decode('CiRHZXRBZ2VuY3lBY2NvdW50TnVtYmVyQnlUcmlwUmVzcG9uc2USJQoOYWNjb3VudF9udW1iZXIYASABKAlSDWFjY291bnROdW1iZXI=');
