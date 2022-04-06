///
//  Generated code. Do not modify.
//  source: roomtype.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listRoomTypesByTripRequestDescriptor instead')
const ListRoomTypesByTripRequest$json = const {
  '1': 'ListRoomTypesByTripRequest',
  '2': const [
    const {'1': 'hotel_id', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'hotelId'},
    const {'1': 'liveaboard_id', '3': 10, '4': 1, '5': 4, '9': 0, '10': 'liveaboardId'},
    const {'1': 'trip_id', '3': 15, '4': 1, '5': 4, '10': 'tripId'},
    const {'1': 'limit', '3': 20, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 25, '4': 1, '5': 4, '10': 'offset'},
  ],
  '8': const [
    const {'1': 'id'},
  ],
};

/// Descriptor for `ListRoomTypesByTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomTypesByTripRequestDescriptor = $convert.base64Decode('ChpMaXN0Um9vbVR5cGVzQnlUcmlwUmVxdWVzdBIbCghob3RlbF9pZBgBIAEoBEgAUgdob3RlbElkEiUKDWxpdmVhYm9hcmRfaWQYCiABKARIAFIMbGl2ZWFib2FyZElkEhcKB3RyaXBfaWQYDyABKARSBnRyaXBJZBIUCgVsaW1pdBgUIAEoBFIFbGltaXQSFgoGb2Zmc2V0GBkgASgEUgZvZmZzZXRCBAoCaWQ=');
@$core.Deprecated('Use listRoomTypesByTripResponseDescriptor instead')
const ListRoomTypesByTripResponse$json = const {
  '1': 'ListRoomTypesByTripResponse',
  '2': const [
    const {'1': 'room_type', '3': 1, '4': 1, '5': 11, '6': '.model.RoomType', '10': 'roomType'},
  ],
};

/// Descriptor for `ListRoomTypesByTripResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomTypesByTripResponseDescriptor = $convert.base64Decode('ChtMaXN0Um9vbVR5cGVzQnlUcmlwUmVzcG9uc2USLAoJcm9vbV90eXBlGAEgASgLMg8ubW9kZWwuUm9vbVR5cGVSCHJvb21UeXBl');
@$core.Deprecated('Use listRoomsOfReservationRequestDescriptor instead')
const ListRoomsOfReservationRequest$json = const {
  '1': 'ListRoomsOfReservationRequest',
  '2': const [
    const {'1': 'reservation_id', '3': 1, '4': 1, '5': 4, '10': 'reservationId'},
  ],
};

/// Descriptor for `ListRoomsOfReservationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomsOfReservationRequestDescriptor = $convert.base64Decode('Ch1MaXN0Um9vbXNPZlJlc2VydmF0aW9uUmVxdWVzdBIlCg5yZXNlcnZhdGlvbl9pZBgBIAEoBFINcmVzZXJ2YXRpb25JZA==');
@$core.Deprecated('Use listRoomsOfReservationResponseDescriptor instead')
const ListRoomsOfReservationResponse$json = const {
  '1': 'ListRoomsOfReservationResponse',
  '2': const [
    const {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.model.ReservationRoom', '10': 'room'},
  ],
};

/// Descriptor for `ListRoomsOfReservationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomsOfReservationResponseDescriptor = $convert.base64Decode('Ch5MaXN0Um9vbXNPZlJlc2VydmF0aW9uUmVzcG9uc2USKgoEcm9vbRgBIAEoCzIWLm1vZGVsLlJlc2VydmF0aW9uUm9vbVIEcm9vbQ==');
