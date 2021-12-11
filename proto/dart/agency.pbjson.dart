///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use diveMasterDescriptor instead')
const DiveMaster$json = const {
  '1': 'DiveMaster',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'level', '3': 3, '4': 1, '5': 14, '6': '.model.LevelType', '10': 'level'},
    const {'1': 'front_image', '3': 4, '4': 1, '5': 11, '6': '.model.File', '10': 'frontImage'},
    const {'1': 'back_image', '3': 5, '4': 1, '5': 11, '6': '.model.File', '10': 'backImage'},
  ],
};

/// Descriptor for `DiveMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diveMasterDescriptor = $convert.base64Decode('CgpEaXZlTWFzdGVyEh0KCmZpcnN0X25hbWUYASABKAlSCWZpcnN0TmFtZRIbCglsYXN0X25hbWUYAiABKAlSCGxhc3ROYW1lEiYKBWxldmVsGAMgASgOMhAubW9kZWwuTGV2ZWxUeXBlUgVsZXZlbBIsCgtmcm9udF9pbWFnZRgEIAEoCzILLm1vZGVsLkZpbGVSCmZyb250SW1hZ2USKgoKYmFja19pbWFnZRgFIAEoCzILLm1vZGVsLkZpbGVSCWJhY2tJbWFnZQ==');
@$core.Deprecated('Use diveMasterFirstAndLastNameDescriptor instead')
const DiveMasterFirstAndLastName$json = const {
  '1': 'DiveMasterFirstAndLastName',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
  ],
};

/// Descriptor for `DiveMasterFirstAndLastName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diveMasterFirstAndLastNameDescriptor = $convert.base64Decode('ChpEaXZlTWFzdGVyRmlyc3RBbmRMYXN0TmFtZRIdCgpmaXJzdF9uYW1lGAEgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAIgASgJUghsYXN0TmFtZQ==');
@$core.Deprecated('Use staffDescriptor instead')
const Staff$json = const {
  '1': 'Staff',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'position', '3': 3, '4': 1, '5': 9, '10': 'position'},
  ],
};

/// Descriptor for `Staff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staffDescriptor = $convert.base64Decode('CgVTdGFmZhIdCgpmaXJzdF9uYW1lGAEgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAIgASgJUghsYXN0TmFtZRIaCghwb3NpdGlvbhgDIAEoCVIIcG9zaXRpb24=');
@$core.Deprecated('Use divingBoatDescriptor instead')
const DivingBoat$json = const {
  '1': 'DivingBoat',
  '2': const [
    const {'1': 'boat_model', '3': 1, '4': 1, '5': 9, '10': 'boatModel'},
    const {'1': 'boat_image', '3': 2, '4': 1, '5': 11, '6': '.model.File', '10': 'boatImage'},
  ],
};

/// Descriptor for `DivingBoat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List divingBoatDescriptor = $convert.base64Decode('CgpEaXZpbmdCb2F0Eh0KCmJvYXRfbW9kZWwYASABKAlSCWJvYXRNb2RlbBIqCgpib2F0X2ltYWdlGAIgASgLMgsubW9kZWwuRmlsZVIJYm9hdEltYWdl');
@$core.Deprecated('Use placeDescriptor instead')
const Place$json = const {
  '1': 'Place',
  '2': const [
    const {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'city', '3': 2, '4': 1, '5': 9, '10': 'city'},
  ],
};

/// Descriptor for `Place`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List placeDescriptor = $convert.base64Decode('CgVQbGFjZRIYCgdjb3VudHJ5GAEgASgJUgdjb3VudHJ5EhIKBGNpdHkYAiABKAlSBGNpdHk=');
@$core.Deprecated('Use roomDescriptor instead')
const Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'room_type', '3': 1, '4': 1, '5': 14, '6': '.agency.Room.RoomType', '10': 'roomType'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'max_capacity', '3': 3, '4': 1, '5': 5, '10': 'maxCapacity'},
    const {'1': 'price', '3': 4, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'room_images', '3': 5, '4': 3, '5': 11, '6': '.model.File', '10': 'roomImages'},
    const {'1': 'amenity_names', '3': 6, '4': 3, '5': 9, '10': 'amenityNames'},
  ],
  '4': const [Room_RoomType$json],
};

@$core.Deprecated('Use roomDescriptor instead')
const Room_RoomType$json = const {
  '1': 'RoomType',
  '2': const [
    const {'1': 'SINGLE', '2': 0},
    const {'1': 'DOUBLE', '2': 1},
    const {'1': 'TRIPLE', '2': 2},
    const {'1': 'QUAD', '2': 3},
    const {'1': 'QUEEN', '2': 4},
    const {'1': 'KING', '2': 5},
    const {'1': 'TWIN', '2': 6},
    const {'1': 'HOLLYWOOD_TWIN_ROOM', '2': 7},
    const {'1': 'DOUBLE_DOUBLE', '2': 8},
    const {'1': 'STUDIO', '2': 9},
    const {'1': 'EXECUTEIVE_SUITE', '2': 10},
    const {'1': 'MINI_SUITE', '2': 11},
    const {'1': 'PRESIDENTAL_SUITE', '2': 12},
    const {'1': 'APARTMENT', '2': 13},
    const {'1': 'CONNECTING_ROOMS', '2': 14},
    const {'1': 'MURPHY_ROOM', '2': 15},
    const {'1': 'DISABLED_ROOM', '2': 16},
    const {'1': 'CABANA', '2': 17},
    const {'1': 'ADJOINING_ROOMS', '2': 18},
    const {'1': 'ADJACENT_ROOMS', '2': 19},
    const {'1': 'VILLA', '2': 20},
    const {'1': 'FLOORED_ROOM', '2': 21},
    const {'1': 'SMOKING_NON_SMOKING', '2': 22},
  ],
};

/// Descriptor for `Room`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomDescriptor = $convert.base64Decode('CgRSb29tEjIKCXJvb21fdHlwZRgBIAEoDjIVLmFnZW5jeS5Sb29tLlJvb21UeXBlUghyb29tVHlwZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SIQoMbWF4X2NhcGFjaXR5GAMgASgFUgttYXhDYXBhY2l0eRIUCgVwcmljZRgEIAEoAlIFcHJpY2USLAoLcm9vbV9pbWFnZXMYBSADKAsyCy5tb2RlbC5GaWxlUgpyb29tSW1hZ2VzEiMKDWFtZW5pdHlfbmFtZXMYBiADKAlSDGFtZW5pdHlOYW1lcyKAAwoIUm9vbVR5cGUSCgoGU0lOR0xFEAASCgoGRE9VQkxFEAESCgoGVFJJUExFEAISCAoEUVVBRBADEgkKBVFVRUVOEAQSCAoES0lORxAFEggKBFRXSU4QBhIXChNIT0xMWVdPT0RfVFdJTl9ST09NEAcSEQoNRE9VQkxFX0RPVUJMRRAIEgoKBlNUVURJTxAJEhQKEEVYRUNVVEVJVkVfU1VJVEUQChIOCgpNSU5JX1NVSVRFEAsSFQoRUFJFU0lERU5UQUxfU1VJVEUQDBINCglBUEFSVE1FTlQQDRIUChBDT05ORUNUSU5HX1JPT01TEA4SDwoLTVVSUEhZX1JPT00QDxIRCg1ESVNBQkxFRF9ST09NEBASCgoGQ0FCQU5BEBESEwoPQURKT0lOSU5HX1JPT01TEBISEgoOQURKQUNFTlRfUk9PTVMQExIJCgVWSUxMQRAUEhAKDEZMT09SRURfUk9PTRAVEhcKE1NNT0tJTkdfTk9OX1NNT0tJTkcQFg==');
@$core.Deprecated('Use tripTemplateDescriptor instead')
const TripTemplate$json = const {
  '1': 'TripTemplate',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'diving_boat', '3': 3, '4': 1, '5': 11, '6': '.agency.DivingBoat', '10': 'divingBoat'},
    const {'1': 'place', '3': 4, '4': 1, '5': 11, '6': '.agency.Place', '10': 'place'},
    const {'1': 'images', '3': 5, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'trip_type', '3': 6, '4': 1, '5': 14, '6': '.agency.TripTemplate.TripType', '10': 'tripType'},
    const {'1': 'schedule_image', '3': 7, '4': 1, '5': 11, '6': '.model.File', '10': 'scheduleImage'},
  ],
  '4': const [TripTemplate_TripType$json],
};

@$core.Deprecated('Use tripTemplateDescriptor instead')
const TripTemplate_TripType$json = const {
  '1': 'TripType',
  '2': const [
    const {'1': 'LIVEABOARD', '2': 0},
    const {'1': 'DIVE_RESORTS', '2': 1},
  ],
};

/// Descriptor for `TripTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripTemplateDescriptor = $convert.base64Decode('CgxUcmlwVGVtcGxhdGUSEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SMwoLZGl2aW5nX2JvYXQYAyABKAsyEi5hZ2VuY3kuRGl2aW5nQm9hdFIKZGl2aW5nQm9hdBIjCgVwbGFjZRgEIAEoCzINLmFnZW5jeS5QbGFjZVIFcGxhY2USIwoGaW1hZ2VzGAUgAygLMgsubW9kZWwuRmlsZVIGaW1hZ2VzEjoKCXRyaXBfdHlwZRgGIAEoDjIdLmFnZW5jeS5UcmlwVGVtcGxhdGUuVHJpcFR5cGVSCHRyaXBUeXBlEjIKDnNjaGVkdWxlX2ltYWdlGAcgASgLMgsubW9kZWwuRmlsZVINc2NoZWR1bGVJbWFnZSIsCghUcmlwVHlwZRIOCgpMSVZFQUJPQVJEEAASEAoMRElWRV9SRVNPUlRTEAE=');
@$core.Deprecated('Use tripDescriptor instead')
const Trip$json = const {
  '1': 'Trip',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'to'},
    const {'1': 'max_capacity', '3': 3, '4': 1, '5': 5, '10': 'maxCapacity'},
    const {'1': 'price_per_pserson', '3': 4, '4': 1, '5': 5, '10': 'pricePerPserson'},
    const {'1': 'dive_masters', '3': 5, '4': 3, '5': 11, '6': '.agency.DiveMasterFirstAndLastName', '10': 'diveMasters'},
  ],
};

/// Descriptor for `Trip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripDescriptor = $convert.base64Decode('CgRUcmlwEjQKBGZyb20YASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgRmcm9tEjAKAnRvGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVICdG8SIQoMbWF4X2NhcGFjaXR5GAMgASgFUgttYXhDYXBhY2l0eRIqChFwcmljZV9wZXJfcHNlcnNvbhgEIAEoBVIPcHJpY2VQZXJQc2Vyc29uEkUKDGRpdmVfbWFzdGVycxgFIAMoCzIiLmFnZW5jeS5EaXZlTWFzdGVyRmlyc3RBbmRMYXN0TmFtZVILZGl2ZU1hc3RlcnM=');
@$core.Deprecated('Use hotelDescriptor instead')
const Hotel$json = const {
  '1': 'Hotel',
  '2': const [
    const {'1': 'hotel_name', '3': 1, '4': 1, '5': 9, '10': 'hotelName'},
    const {'1': 'star', '3': 2, '4': 1, '5': 5, '10': 'star'},
    const {'1': 'highlights', '3': 3, '4': 3, '5': 9, '10': 'highlights'},
    const {'1': 'images', '3': 4, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'rooms', '3': 5, '4': 3, '5': 11, '6': '.agency.Room', '10': 'rooms'},
    const {'1': 'hotel_description', '3': 6, '4': 1, '5': 9, '10': 'hotelDescription'},
    const {'1': 'phone', '3': 7, '4': 1, '5': 9, '10': 'phone'},
  ],
};

/// Descriptor for `Hotel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotelDescriptor = $convert.base64Decode('CgVIb3RlbBIdCgpob3RlbF9uYW1lGAEgASgJUglob3RlbE5hbWUSEgoEc3RhchgCIAEoBVIEc3RhchIeCgpoaWdobGlnaHRzGAMgAygJUgpoaWdobGlnaHRzEiMKBmltYWdlcxgEIAMoCzILLm1vZGVsLkZpbGVSBmltYWdlcxIiCgVyb29tcxgFIAMoCzIMLmFnZW5jeS5Sb29tUgVyb29tcxIrChFob3RlbF9kZXNjcmlwdGlvbhgGIAEoCVIQaG90ZWxEZXNjcmlwdGlvbhIUCgVwaG9uZRgHIAEoCVIFcGhvbmU=');
@$core.Deprecated('Use liveaboardDescriptor instead')
const Liveaboard$json = const {
  '1': 'Liveaboard',
  '2': const [
    const {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'length', '3': 3, '4': 1, '5': 2, '10': 'length'},
    const {'1': 'width', '3': 4, '4': 1, '5': 2, '10': 'width'},
    const {'1': 'highlights', '3': 5, '4': 3, '5': 9, '10': 'highlights'},
    const {'1': 'images', '3': 6, '4': 3, '5': 9, '10': 'images'},
    const {'1': 'rooms', '3': 7, '4': 3, '5': 11, '6': '.agency.Room', '10': 'rooms'},
  ],
};

/// Descriptor for `Liveaboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveaboardDescriptor = $convert.base64Decode('CgpMaXZlYWJvYXJkEhQKBW1vZGVsGAEgASgJUgVtb2RlbBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SFgoGbGVuZ3RoGAMgASgCUgZsZW5ndGgSFAoFd2lkdGgYBCABKAJSBXdpZHRoEh4KCmhpZ2hsaWdodHMYBSADKAlSCmhpZ2hsaWdodHMSFgoGaW1hZ2VzGAYgAygJUgZpbWFnZXMSIgoFcm9vbXMYByADKAsyDC5hZ2VuY3kuUm9vbVIFcm9vbXM=');
@$core.Deprecated('Use addDiveMasterRequestDescriptor instead')
const AddDiveMasterRequest$json = const {
  '1': 'AddDiveMasterRequest',
  '2': const [
    const {'1': 'dive_master', '3': 1, '4': 1, '5': 11, '6': '.agency.DiveMaster', '10': 'diveMaster'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 4, '10': 'agencyId'},
  ],
};

/// Descriptor for `AddDiveMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDiveMasterRequestDescriptor = $convert.base64Decode('ChRBZGREaXZlTWFzdGVyUmVxdWVzdBIzCgtkaXZlX21hc3RlchgBIAEoCzISLmFnZW5jeS5EaXZlTWFzdGVyUgpkaXZlTWFzdGVyEhsKCWFnZW5jeV9pZBgCIAEoBFIIYWdlbmN5SWQ=');
@$core.Deprecated('Use addStaffRequestDescriptor instead')
const AddStaffRequest$json = const {
  '1': 'AddStaffRequest',
  '2': const [
    const {'1': 'staff', '3': 1, '4': 1, '5': 11, '6': '.agency.Staff', '10': 'staff'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 4, '10': 'agencyId'},
  ],
};

/// Descriptor for `AddStaffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addStaffRequestDescriptor = $convert.base64Decode('Cg9BZGRTdGFmZlJlcXVlc3QSIwoFc3RhZmYYASABKAsyDS5hZ2VuY3kuU3RhZmZSBXN0YWZmEhsKCWFnZW5jeV9pZBgCIAEoBFIIYWdlbmN5SWQ=');
@$core.Deprecated('Use addTripTemplateRequestDescriptor instead')
const AddTripTemplateRequest$json = const {
  '1': 'AddTripTemplateRequest',
  '2': const [
    const {'1': 'trip_template', '3': 1, '4': 1, '5': 11, '6': '.agency.TripTemplate', '10': 'tripTemplate'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 4, '10': 'agencyId'},
  ],
};

/// Descriptor for `AddTripTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTripTemplateRequestDescriptor = $convert.base64Decode('ChZBZGRUcmlwVGVtcGxhdGVSZXF1ZXN0EjkKDXRyaXBfdGVtcGxhdGUYASABKAsyFC5hZ2VuY3kuVHJpcFRlbXBsYXRlUgx0cmlwVGVtcGxhdGUSGwoJYWdlbmN5X2lkGAIgASgEUghhZ2VuY3lJZA==');
@$core.Deprecated('Use addTripRequestDescriptor instead')
const AddTripRequest$json = const {
  '1': 'AddTripRequest',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.agency.Trip', '10': 'trip'},
    const {'1': 'trip_template', '3': 2, '4': 1, '5': 11, '6': '.agency.TripTemplate', '10': 'tripTemplate'},
    const {'1': 'agency_id', '3': 3, '4': 1, '5': 4, '10': 'agencyId'},
  ],
};

/// Descriptor for `AddTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTripRequestDescriptor = $convert.base64Decode('Cg5BZGRUcmlwUmVxdWVzdBIgCgR0cmlwGAEgASgLMgwuYWdlbmN5LlRyaXBSBHRyaXASOQoNdHJpcF90ZW1wbGF0ZRgCIAEoCzIULmFnZW5jeS5UcmlwVGVtcGxhdGVSDHRyaXBUZW1wbGF0ZRIbCglhZ2VuY3lfaWQYAyABKARSCGFnZW5jeUlk');
@$core.Deprecated('Use addDivingBoatRequestDescriptor instead')
const AddDivingBoatRequest$json = const {
  '1': 'AddDivingBoatRequest',
  '2': const [
    const {'1': 'diving_boat', '3': 1, '4': 1, '5': 11, '6': '.agency.DivingBoat', '10': 'divingBoat'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 4, '10': 'agencyId'},
  ],
};

/// Descriptor for `AddDivingBoatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDivingBoatRequestDescriptor = $convert.base64Decode('ChRBZGREaXZpbmdCb2F0UmVxdWVzdBIzCgtkaXZpbmdfYm9hdBgBIAEoCzISLmFnZW5jeS5EaXZpbmdCb2F0UgpkaXZpbmdCb2F0EhsKCWFnZW5jeV9pZBgCIAEoBFIIYWdlbmN5SWQ=');
@$core.Deprecated('Use addHotelRequestDescriptor instead')
const AddHotelRequest$json = const {
  '1': 'AddHotelRequest',
  '2': const [
    const {'1': 'hotel', '3': 1, '4': 1, '5': 11, '6': '.agency.Hotel', '10': 'hotel'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 4, '10': 'agencyId'},
    const {'1': 'addressId', '3': 3, '4': 1, '5': 4, '10': 'addressId'},
  ],
};

/// Descriptor for `AddHotelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addHotelRequestDescriptor = $convert.base64Decode('Cg9BZGRIb3RlbFJlcXVlc3QSIwoFaG90ZWwYASABKAsyDS5hZ2VuY3kuSG90ZWxSBWhvdGVsEhsKCWFnZW5jeV9pZBgCIAEoBFIIYWdlbmN5SWQSHAoJYWRkcmVzc0lkGAMgASgEUglhZGRyZXNzSWQ=');
@$core.Deprecated('Use addLiveaboardRequestDescriptor instead')
const AddLiveaboardRequest$json = const {
  '1': 'AddLiveaboardRequest',
  '2': const [
    const {'1': 'liveaboard', '3': 1, '4': 1, '5': 11, '6': '.agency.Liveaboard', '10': 'liveaboard'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 4, '10': 'agencyId'},
  ],
};

/// Descriptor for `AddLiveaboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addLiveaboardRequestDescriptor = $convert.base64Decode('ChRBZGRMaXZlYWJvYXJkUmVxdWVzdBIyCgpsaXZlYWJvYXJkGAEgASgLMhIuYWdlbmN5LkxpdmVhYm9hcmRSCmxpdmVhYm9hcmQSGwoJYWdlbmN5X2lkGAIgASgEUghhZ2VuY3lJZA==');
