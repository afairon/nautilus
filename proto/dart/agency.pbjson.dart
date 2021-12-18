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
    const {'1': 'gender', '3': 4, '4': 1, '5': 14, '6': '.model.GenderType', '10': 'gender'},
  ],
};

/// Descriptor for `Staff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staffDescriptor = $convert.base64Decode('CgVTdGFmZhIdCgpmaXJzdF9uYW1lGAEgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAIgASgJUghsYXN0TmFtZRIaCghwb3NpdGlvbhgDIAEoCVIIcG9zaXRpb24SKQoGZ2VuZGVyGAQgASgOMhEubW9kZWwuR2VuZGVyVHlwZVIGZ2VuZGVy');
@$core.Deprecated('Use divingBoatDescriptor instead')
const DivingBoat$json = const {
  '1': 'DivingBoat',
  '2': const [
    const {'1': 'boat_model', '3': 1, '4': 1, '5': 9, '10': 'boatModel'},
    const {'1': 'boat_images', '3': 2, '4': 3, '5': 11, '6': '.model.File', '10': 'boatImages'},
  ],
};

/// Descriptor for `DivingBoat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List divingBoatDescriptor = $convert.base64Decode('CgpEaXZpbmdCb2F0Eh0KCmJvYXRfbW9kZWwYASABKAlSCWJvYXRNb2RlbBIsCgtib2F0X2ltYWdlcxgCIAMoCzILLm1vZGVsLkZpbGVSCmJvYXRJbWFnZXM=');
@$core.Deprecated('Use amenityDescriptor instead')
const Amenity$json = const {
  '1': 'Amenity',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Amenity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List amenityDescriptor = $convert.base64Decode('CgdBbWVuaXR5EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use roomTypeDescriptor instead')
const RoomType$json = const {
  '1': 'RoomType',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'max_guest', '3': 3, '4': 1, '5': 13, '10': 'maxGuest'},
    const {'1': 'price', '3': 4, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'room_images', '3': 5, '4': 3, '5': 11, '6': '.model.File', '10': 'roomImages'},
    const {'1': 'amenities', '3': 6, '4': 3, '5': 11, '6': '.agency.Amenity', '10': 'amenities'},
    const {'1': 'quantity', '3': 7, '4': 1, '5': 13, '10': 'quantity'},
  ],
};

/// Descriptor for `RoomType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomTypeDescriptor = $convert.base64Decode('CghSb29tVHlwZRISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIbCgltYXhfZ3Vlc3QYAyABKA1SCG1heEd1ZXN0EhQKBXByaWNlGAQgASgCUgVwcmljZRIsCgtyb29tX2ltYWdlcxgFIAMoCzILLm1vZGVsLkZpbGVSCnJvb21JbWFnZXMSLQoJYW1lbml0aWVzGAYgAygLMg8uYWdlbmN5LkFtZW5pdHlSCWFtZW5pdGllcxIaCghxdWFudGl0eRgHIAEoDVIIcXVhbnRpdHk=');
@$core.Deprecated('Use tripTemplateDescriptor instead')
const TripTemplate$json = const {
  '1': 'TripTemplate',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'diving_boat_id', '3': 3, '4': 1, '5': 4, '10': 'divingBoatId'},
    const {'1': 'images', '3': 5, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'trip_type', '3': 6, '4': 1, '5': 14, '6': '.model.TripType', '10': 'tripType'},
    const {'1': 'hotel_id', '3': 8, '4': 1, '5': 4, '9': 0, '10': 'hotelId'},
    const {'1': 'liveaboard_id', '3': 9, '4': 1, '5': 4, '9': 0, '10': 'liveaboardId'},
  ],
  '8': const [
    const {'1': 'residence_id'},
  ],
};

/// Descriptor for `TripTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripTemplateDescriptor = $convert.base64Decode('CgxUcmlwVGVtcGxhdGUSEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SJAoOZGl2aW5nX2JvYXRfaWQYAyABKARSDGRpdmluZ0JvYXRJZBIjCgZpbWFnZXMYBSADKAsyCy5tb2RlbC5GaWxlUgZpbWFnZXMSLAoJdHJpcF90eXBlGAYgASgOMg8ubW9kZWwuVHJpcFR5cGVSCHRyaXBUeXBlEhsKCGhvdGVsX2lkGAggASgESABSB2hvdGVsSWQSJQoNbGl2ZWFib2FyZF9pZBgJIAEoBEgAUgxsaXZlYWJvYXJkSWRCDgoMcmVzaWRlbmNlX2lk');
@$core.Deprecated('Use tripDescriptor instead')
const Trip$json = const {
  '1': 'Trip',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'to'},
    const {'1': 'max_capacity', '3': 3, '4': 1, '5': 13, '10': 'maxCapacity'},
    const {'1': 'price', '3': 4, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'dive_master_ids', '3': 5, '4': 3, '5': 4, '10': 'diveMasterIds'},
    const {'1': 'last_reservation_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'lastReservationDate'},
  ],
};

/// Descriptor for `Trip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripDescriptor = $convert.base64Decode('CgRUcmlwEjQKBGZyb20YASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgRmcm9tEjAKAnRvGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVICdG8SIQoMbWF4X2NhcGFjaXR5GAMgASgNUgttYXhDYXBhY2l0eRIUCgVwcmljZRgEIAEoAlIFcHJpY2USJgoPZGl2ZV9tYXN0ZXJfaWRzGAUgAygEUg1kaXZlTWFzdGVySWRzElQKFWxhc3RfcmVzZXJ2YXRpb25fZGF0ZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSE2xhc3RSZXNlcnZhdGlvbkRhdGU=');
@$core.Deprecated('Use hotelDescriptor instead')
const Hotel$json = const {
  '1': 'Hotel',
  '2': const [
    const {'1': 'hotel_name', '3': 1, '4': 1, '5': 9, '10': 'hotelName'},
    const {'1': 'star', '3': 2, '4': 1, '5': 13, '10': 'star'},
    const {'1': 'images', '3': 4, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'room_types', '3': 5, '4': 3, '5': 11, '6': '.agency.RoomType', '10': 'roomTypes'},
    const {'1': 'hotel_description', '3': 6, '4': 1, '5': 9, '10': 'hotelDescription'},
    const {'1': 'phone', '3': 7, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'address', '3': 8, '4': 1, '5': 11, '6': '.model.Address', '10': 'address'},
  ],
};

/// Descriptor for `Hotel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotelDescriptor = $convert.base64Decode('CgVIb3RlbBIdCgpob3RlbF9uYW1lGAEgASgJUglob3RlbE5hbWUSEgoEc3RhchgCIAEoDVIEc3RhchIjCgZpbWFnZXMYBCADKAsyCy5tb2RlbC5GaWxlUgZpbWFnZXMSLwoKcm9vbV90eXBlcxgFIAMoCzIQLmFnZW5jeS5Sb29tVHlwZVIJcm9vbVR5cGVzEisKEWhvdGVsX2Rlc2NyaXB0aW9uGAYgASgJUhBob3RlbERlc2NyaXB0aW9uEhQKBXBob25lGAcgASgJUgVwaG9uZRIoCgdhZGRyZXNzGAggASgLMg4ubW9kZWwuQWRkcmVzc1IHYWRkcmVzcw==');
@$core.Deprecated('Use liveaboardDescriptor instead')
const Liveaboard$json = const {
  '1': 'Liveaboard',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'length', '3': 3, '4': 1, '5': 13, '10': 'length'},
    const {'1': 'width', '3': 4, '4': 1, '5': 13, '10': 'width'},
    const {'1': 'images', '3': 6, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'room_types', '3': 7, '4': 3, '5': 11, '6': '.agency.RoomType', '10': 'roomTypes'},
  ],
};

/// Descriptor for `Liveaboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveaboardDescriptor = $convert.base64Decode('CgpMaXZlYWJvYXJkEhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhYKBmxlbmd0aBgDIAEoDVIGbGVuZ3RoEhQKBXdpZHRoGAQgASgNUgV3aWR0aBIjCgZpbWFnZXMYBiADKAsyCy5tb2RlbC5GaWxlUgZpbWFnZXMSLwoKcm9vbV90eXBlcxgHIAMoCzIQLmFnZW5jeS5Sb29tVHlwZVIJcm9vbVR5cGVz');
@$core.Deprecated('Use addDiveMasterRequestDescriptor instead')
const AddDiveMasterRequest$json = const {
  '1': 'AddDiveMasterRequest',
  '2': const [
    const {'1': 'dive_master', '3': 1, '4': 1, '5': 11, '6': '.agency.DiveMaster', '10': 'diveMaster'},
  ],
};

/// Descriptor for `AddDiveMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDiveMasterRequestDescriptor = $convert.base64Decode('ChRBZGREaXZlTWFzdGVyUmVxdWVzdBIzCgtkaXZlX21hc3RlchgBIAEoCzISLmFnZW5jeS5EaXZlTWFzdGVyUgpkaXZlTWFzdGVy');
@$core.Deprecated('Use addStaffRequestDescriptor instead')
const AddStaffRequest$json = const {
  '1': 'AddStaffRequest',
  '2': const [
    const {'1': 'staff', '3': 1, '4': 1, '5': 11, '6': '.agency.Staff', '10': 'staff'},
  ],
};

/// Descriptor for `AddStaffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addStaffRequestDescriptor = $convert.base64Decode('Cg9BZGRTdGFmZlJlcXVlc3QSIwoFc3RhZmYYASABKAsyDS5hZ2VuY3kuU3RhZmZSBXN0YWZm');
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
  ],
};

/// Descriptor for `AddTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTripRequestDescriptor = $convert.base64Decode('Cg5BZGRUcmlwUmVxdWVzdBIgCgR0cmlwGAEgASgLMgwuYWdlbmN5LlRyaXBSBHRyaXASOQoNdHJpcF90ZW1wbGF0ZRgCIAEoCzIULmFnZW5jeS5UcmlwVGVtcGxhdGVSDHRyaXBUZW1wbGF0ZQ==');
@$core.Deprecated('Use addDivingBoatRequestDescriptor instead')
const AddDivingBoatRequest$json = const {
  '1': 'AddDivingBoatRequest',
  '2': const [
    const {'1': 'diving_boat', '3': 1, '4': 1, '5': 11, '6': '.agency.DivingBoat', '10': 'divingBoat'},
  ],
};

/// Descriptor for `AddDivingBoatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDivingBoatRequestDescriptor = $convert.base64Decode('ChRBZGREaXZpbmdCb2F0UmVxdWVzdBIzCgtkaXZpbmdfYm9hdBgBIAEoCzISLmFnZW5jeS5EaXZpbmdCb2F0UgpkaXZpbmdCb2F0');
@$core.Deprecated('Use addHotelRequestDescriptor instead')
const AddHotelRequest$json = const {
  '1': 'AddHotelRequest',
  '2': const [
    const {'1': 'hotel', '3': 1, '4': 1, '5': 11, '6': '.agency.Hotel', '10': 'hotel'},
  ],
};

/// Descriptor for `AddHotelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addHotelRequestDescriptor = $convert.base64Decode('Cg9BZGRIb3RlbFJlcXVlc3QSIwoFaG90ZWwYASABKAsyDS5hZ2VuY3kuSG90ZWxSBWhvdGVs');
@$core.Deprecated('Use addLiveaboardRequestDescriptor instead')
const AddLiveaboardRequest$json = const {
  '1': 'AddLiveaboardRequest',
  '2': const [
    const {'1': 'liveaboard', '3': 1, '4': 1, '5': 11, '6': '.agency.Liveaboard', '10': 'liveaboard'},
  ],
};

/// Descriptor for `AddLiveaboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addLiveaboardRequestDescriptor = $convert.base64Decode('ChRBZGRMaXZlYWJvYXJkUmVxdWVzdBIyCgpsaXZlYWJvYXJkGAEgASgLMhIuYWdlbmN5LkxpdmVhYm9hcmRSCmxpdmVhYm9hcmQ=');
@$core.Deprecated('Use listBoatsRequestDescriptor instead')
const ListBoatsRequest$json = const {
  '1': 'ListBoatsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListBoatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBoatsRequestDescriptor = $convert.base64Decode('ChBMaXN0Qm9hdHNSZXF1ZXN0EhQKBWxpbWl0GAEgASgEUgVsaW1pdBIWCgZvZmZzZXQYAiABKARSBm9mZnNldA==');
@$core.Deprecated('Use listBoatsResponseDescriptor instead')
const ListBoatsResponse$json = const {
  '1': 'ListBoatsResponse',
  '2': const [
    const {'1': 'boat', '3': 1, '4': 1, '5': 11, '6': '.agency.ListBoatsResponse.Boat', '10': 'boat'},
  ],
  '3': const [ListBoatsResponse_Boat$json],
};

@$core.Deprecated('Use listBoatsResponseDescriptor instead')
const ListBoatsResponse_Boat$json = const {
  '1': 'Boat',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'images', '3': 20, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'created_on', '3': 30, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `ListBoatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBoatsResponseDescriptor = $convert.base64Decode('ChFMaXN0Qm9hdHNSZXNwb25zZRIyCgRib2F0GAEgASgLMh4uYWdlbmN5Lkxpc3RCb2F0c1Jlc3BvbnNlLkJvYXRSBGJvYXQa0QEKBEJvYXQSDgoCaWQYASABKARSAmlkEhIKBG5hbWUYCiABKAlSBG5hbWUSIwoGaW1hZ2VzGBQgAygLMgsubW9kZWwuRmlsZVIGaW1hZ2VzEj8KCmNyZWF0ZWRfb24YHiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkT24SPwoKdXBkYXRlZF9vbhgoIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRPbg==');
@$core.Deprecated('Use listDiveMastersRequestDescriptor instead')
const ListDiveMastersRequest$json = const {
  '1': 'ListDiveMastersRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListDiveMastersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDiveMastersRequestDescriptor = $convert.base64Decode('ChZMaXN0RGl2ZU1hc3RlcnNSZXF1ZXN0EhQKBWxpbWl0GAEgASgEUgVsaW1pdBIWCgZvZmZzZXQYAiABKARSBm9mZnNldA==');
@$core.Deprecated('Use listDiveMastersResponseDescriptor instead')
const ListDiveMastersResponse$json = const {
  '1': 'ListDiveMastersResponse',
  '2': const [
    const {'1': 'dive_master', '3': 1, '4': 1, '5': 11, '6': '.agency.ListDiveMastersResponse.DiveMaster', '10': 'diveMaster'},
  ],
  '3': const [ListDiveMastersResponse_DiveMaster$json],
};

@$core.Deprecated('Use listDiveMastersResponseDescriptor instead')
const ListDiveMastersResponse_DiveMaster$json = const {
  '1': 'DiveMaster',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'first_name', '3': 10, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 20, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'level', '3': 30, '4': 1, '5': 14, '6': '.model.LevelType', '10': 'level'},
    const {'1': 'documents', '3': 40, '4': 3, '5': 11, '6': '.model.File', '10': 'documents'},
    const {'1': 'created_on', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `ListDiveMastersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDiveMastersResponseDescriptor = $convert.base64Decode('ChdMaXN0RGl2ZU1hc3RlcnNSZXNwb25zZRJLCgtkaXZlX21hc3RlchgBIAEoCzIqLmFnZW5jeS5MaXN0RGl2ZU1hc3RlcnNSZXNwb25zZS5EaXZlTWFzdGVyUgpkaXZlTWFzdGVyGq0CCgpEaXZlTWFzdGVyEg4KAmlkGAEgASgEUgJpZBIdCgpmaXJzdF9uYW1lGAogASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGBQgASgJUghsYXN0TmFtZRImCgVsZXZlbBgeIAEoDjIQLm1vZGVsLkxldmVsVHlwZVIFbGV2ZWwSKQoJZG9jdW1lbnRzGCggAygLMgsubW9kZWwuRmlsZVIJZG9jdW1lbnRzEj8KCmNyZWF0ZWRfb24YMiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkT24SPwoKdXBkYXRlZF9vbhg8IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRPbg==');
@$core.Deprecated('Use listHotelsRequestDescriptor instead')
const ListHotelsRequest$json = const {
  '1': 'ListHotelsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListHotelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHotelsRequestDescriptor = $convert.base64Decode('ChFMaXN0SG90ZWxzUmVxdWVzdBIUCgVsaW1pdBgBIAEoBFIFbGltaXQSFgoGb2Zmc2V0GAIgASgEUgZvZmZzZXQ=');
@$core.Deprecated('Use listHotelsResponseDescriptor instead')
const ListHotelsResponse$json = const {
  '1': 'ListHotelsResponse',
  '2': const [
    const {'1': 'hotel', '3': 1, '4': 1, '5': 11, '6': '.agency.ListHotelsResponse.Hotel', '10': 'hotel'},
  ],
  '3': const [ListHotelsResponse_Hotel$json],
};

@$core.Deprecated('Use listHotelsResponseDescriptor instead')
const ListHotelsResponse_Hotel$json = const {
  '1': 'Hotel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 20, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'stars', '3': 30, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'phone', '3': 40, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'address', '3': 50, '4': 1, '5': 11, '6': '.model.Address', '10': 'address'},
    const {'1': 'images', '3': 60, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'created_on', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `ListHotelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHotelsResponseDescriptor = $convert.base64Decode('ChJMaXN0SG90ZWxzUmVzcG9uc2USNgoFaG90ZWwYASABKAsyIC5hZ2VuY3kuTGlzdEhvdGVsc1Jlc3BvbnNlLkhvdGVsUgVob3RlbBrKAgoFSG90ZWwSDgoCaWQYASABKARSAmlkEhIKBG5hbWUYCiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YFCABKAlSC2Rlc2NyaXB0aW9uEhQKBXN0YXJzGB4gASgNUgVzdGFycxIUCgVwaG9uZRgoIAEoCVIFcGhvbmUSKAoHYWRkcmVzcxgyIAEoCzIOLm1vZGVsLkFkZHJlc3NSB2FkZHJlc3MSIwoGaW1hZ2VzGDwgAygLMgsubW9kZWwuRmlsZVIGaW1hZ2VzEj8KCmNyZWF0ZWRfb24YRiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkT24SPwoKdXBkYXRlZF9vbhhQIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRPbg==');
@$core.Deprecated('Use listLiveaboardsRequestDescriptor instead')
const ListLiveaboardsRequest$json = const {
  '1': 'ListLiveaboardsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListLiveaboardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLiveaboardsRequestDescriptor = $convert.base64Decode('ChZMaXN0TGl2ZWFib2FyZHNSZXF1ZXN0EhQKBWxpbWl0GAEgASgEUgVsaW1pdBIWCgZvZmZzZXQYAiABKARSBm9mZnNldA==');
@$core.Deprecated('Use listLiveaboardsResponseDescriptor instead')
const ListLiveaboardsResponse$json = const {
  '1': 'ListLiveaboardsResponse',
  '2': const [
    const {'1': 'liveaboard', '3': 1, '4': 1, '5': 11, '6': '.agency.ListLiveaboardsResponse.Liveaboard', '10': 'liveaboard'},
  ],
  '3': const [ListLiveaboardsResponse_Liveaboard$json],
};

@$core.Deprecated('Use listLiveaboardsResponseDescriptor instead')
const ListLiveaboardsResponse_Liveaboard$json = const {
  '1': 'Liveaboard',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 20, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'length', '3': 30, '4': 1, '5': 2, '10': 'length'},
    const {'1': 'width', '3': 40, '4': 1, '5': 2, '10': 'width'},
    const {'1': 'images', '3': 50, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'created_on', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `ListLiveaboardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLiveaboardsResponseDescriptor = $convert.base64Decode('ChdMaXN0TGl2ZWFib2FyZHNSZXNwb25zZRJKCgpsaXZlYWJvYXJkGAEgASgLMiouYWdlbmN5Lkxpc3RMaXZlYWJvYXJkc1Jlc3BvbnNlLkxpdmVhYm9hcmRSCmxpdmVhYm9hcmQapwIKCkxpdmVhYm9hcmQSDgoCaWQYASABKARSAmlkEhIKBG5hbWUYCiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YFCABKAlSC2Rlc2NyaXB0aW9uEhYKBmxlbmd0aBgeIAEoAlIGbGVuZ3RoEhQKBXdpZHRoGCggASgCUgV3aWR0aBIjCgZpbWFnZXMYMiADKAsyCy5tb2RlbC5GaWxlUgZpbWFnZXMSPwoKY3JlYXRlZF9vbhg8IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRPbhI/Cgp1cGRhdGVkX29uGEYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZE9u');
