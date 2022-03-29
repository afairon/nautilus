///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use reservationDescriptor instead')
const Reservation$json = const {
  '1': 'Reservation',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'trip_id', '3': 10, '4': 1, '5': 4, '10': 'tripId'},
    const {'1': 'diver_id', '3': 20, '4': 1, '5': 4, '10': 'diverId'},
    const {'1': 'price', '3': 30, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'total_divers', '3': 35, '4': 1, '5': 4, '10': 'totalDivers'},
    const {'1': 'rooms', '3': 40, '4': 3, '5': 11, '6': '.reservation.Reservation.Room', '10': 'rooms'},
    const {'1': 'created_at', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
  '3': const [Reservation_Room$json],
};

@$core.Deprecated('Use reservationDescriptor instead')
const Reservation_Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'room_type_id', '3': 10, '4': 1, '5': 4, '10': 'roomTypeId'},
    const {'1': 'no_divers', '3': 20, '4': 1, '5': 13, '10': 'noDivers'},
    const {'1': 'quantity', '3': 40, '4': 1, '5': 13, '10': 'quantity'},
  ],
};

/// Descriptor for `Reservation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reservationDescriptor = $convert.base64Decode('CgtSZXNlcnZhdGlvbhIOCgJpZBgBIAEoBFICaWQSFwoHdHJpcF9pZBgKIAEoBFIGdHJpcElkEhkKCGRpdmVyX2lkGBQgASgEUgdkaXZlcklkEhQKBXByaWNlGB4gASgCUgVwcmljZRIhCgx0b3RhbF9kaXZlcnMYIyABKARSC3RvdGFsRGl2ZXJzEjMKBXJvb21zGCggAygLMh0ucmVzZXJ2YXRpb24uUmVzZXJ2YXRpb24uUm9vbVIFcm9vbXMSPwoKY3JlYXRlZF9hdBgyIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GDwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0GnEKBFJvb20SDgoCaWQYASABKARSAmlkEiAKDHJvb21fdHlwZV9pZBgKIAEoBFIKcm9vbVR5cGVJZBIbCglub19kaXZlcnMYFCABKA1SCG5vRGl2ZXJzEhoKCHF1YW50aXR5GCggASgNUghxdWFudGl0eQ==');
@$core.Deprecated('Use createReservationRequestDescriptor instead')
const CreateReservationRequest$json = const {
  '1': 'CreateReservationRequest',
  '2': const [
    const {'1': 'reservation', '3': 1, '4': 1, '5': 11, '6': '.reservation.Reservation', '10': 'reservation'},
  ],
};

/// Descriptor for `CreateReservationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReservationRequestDescriptor = $convert.base64Decode('ChhDcmVhdGVSZXNlcnZhdGlvblJlcXVlc3QSOgoLcmVzZXJ2YXRpb24YASABKAsyGC5yZXNlcnZhdGlvbi5SZXNlcnZhdGlvblILcmVzZXJ2YXRpb24=');
@$core.Deprecated('Use createReservationResponseDescriptor instead')
const CreateReservationResponse$json = const {
  '1': 'CreateReservationResponse',
  '2': const [
    const {'1': 'reservation', '3': 1, '4': 1, '5': 11, '6': '.reservation.Reservation', '10': 'reservation'},
  ],
};

/// Descriptor for `CreateReservationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReservationResponseDescriptor = $convert.base64Decode('ChlDcmVhdGVSZXNlcnZhdGlvblJlc3BvbnNlEjoKC3Jlc2VydmF0aW9uGAEgASgLMhgucmVzZXJ2YXRpb24uUmVzZXJ2YXRpb25SC3Jlc2VydmF0aW9u');
@$core.Deprecated('Use getReservationRequestDescriptor instead')
const GetReservationRequest$json = const {
  '1': 'GetReservationRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `GetReservationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReservationRequestDescriptor = $convert.base64Decode('ChVHZXRSZXNlcnZhdGlvblJlcXVlc3QSDgoCaWQYASABKARSAmlk');
