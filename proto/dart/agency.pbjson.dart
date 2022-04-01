///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use addDiveMasterRequestDescriptor instead')
const AddDiveMasterRequest$json = const {
  '1': 'AddDiveMasterRequest',
  '2': const [
    const {'1': 'dive_master', '3': 1, '4': 1, '5': 11, '6': '.model.DiveMaster', '10': 'diveMaster'},
  ],
};

/// Descriptor for `AddDiveMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDiveMasterRequestDescriptor = $convert.base64Decode('ChRBZGREaXZlTWFzdGVyUmVxdWVzdBIyCgtkaXZlX21hc3RlchgBIAEoCzIRLm1vZGVsLkRpdmVNYXN0ZXJSCmRpdmVNYXN0ZXI=');
@$core.Deprecated('Use addStaffRequestDescriptor instead')
const AddStaffRequest$json = const {
  '1': 'AddStaffRequest',
  '2': const [
    const {'1': 'staff', '3': 1, '4': 1, '5': 11, '6': '.model.Staff', '10': 'staff'},
  ],
};

/// Descriptor for `AddStaffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addStaffRequestDescriptor = $convert.base64Decode('Cg9BZGRTdGFmZlJlcXVlc3QSIgoFc3RhZmYYASABKAsyDC5tb2RlbC5TdGFmZlIFc3RhZmY=');
@$core.Deprecated('Use addTripTemplateRequestDescriptor instead')
const AddTripTemplateRequest$json = const {
  '1': 'AddTripTemplateRequest',
  '2': const [
    const {'1': 'trip_template', '3': 1, '4': 1, '5': 11, '6': '.model.TripTemplate', '10': 'tripTemplate'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 4, '10': 'agencyId'},
  ],
};

/// Descriptor for `AddTripTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTripTemplateRequestDescriptor = $convert.base64Decode('ChZBZGRUcmlwVGVtcGxhdGVSZXF1ZXN0EjgKDXRyaXBfdGVtcGxhdGUYASABKAsyEy5tb2RlbC5UcmlwVGVtcGxhdGVSDHRyaXBUZW1wbGF0ZRIbCglhZ2VuY3lfaWQYAiABKARSCGFnZW5jeUlk');
@$core.Deprecated('Use addTripRequestDescriptor instead')
const AddTripRequest$json = const {
  '1': 'AddTripRequest',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.Trip', '10': 'trip'},
    const {'1': 'trip_template', '3': 2, '4': 1, '5': 11, '6': '.model.TripTemplate', '10': 'tripTemplate'},
  ],
};

/// Descriptor for `AddTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTripRequestDescriptor = $convert.base64Decode('Cg5BZGRUcmlwUmVxdWVzdBIfCgR0cmlwGAEgASgLMgsubW9kZWwuVHJpcFIEdHJpcBI4Cg10cmlwX3RlbXBsYXRlGAIgASgLMhMubW9kZWwuVHJpcFRlbXBsYXRlUgx0cmlwVGVtcGxhdGU=');
@$core.Deprecated('Use addDivingBoatRequestDescriptor instead')
const AddDivingBoatRequest$json = const {
  '1': 'AddDivingBoatRequest',
  '2': const [
    const {'1': 'diving_boat', '3': 1, '4': 1, '5': 11, '6': '.model.Boat', '10': 'divingBoat'},
  ],
};

/// Descriptor for `AddDivingBoatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDivingBoatRequestDescriptor = $convert.base64Decode('ChRBZGREaXZpbmdCb2F0UmVxdWVzdBIsCgtkaXZpbmdfYm9hdBgBIAEoCzILLm1vZGVsLkJvYXRSCmRpdmluZ0JvYXQ=');
@$core.Deprecated('Use addHotelRequestDescriptor instead')
const AddHotelRequest$json = const {
  '1': 'AddHotelRequest',
  '2': const [
    const {'1': 'hotel', '3': 1, '4': 1, '5': 11, '6': '.model.Hotel', '10': 'hotel'},
  ],
};

/// Descriptor for `AddHotelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addHotelRequestDescriptor = $convert.base64Decode('Cg9BZGRIb3RlbFJlcXVlc3QSIgoFaG90ZWwYASABKAsyDC5tb2RlbC5Ib3RlbFIFaG90ZWw=');
@$core.Deprecated('Use addLiveaboardRequestDescriptor instead')
const AddLiveaboardRequest$json = const {
  '1': 'AddLiveaboardRequest',
  '2': const [
    const {'1': 'liveaboard', '3': 1, '4': 1, '5': 11, '6': '.model.Liveaboard', '10': 'liveaboard'},
  ],
};

/// Descriptor for `AddLiveaboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addLiveaboardRequestDescriptor = $convert.base64Decode('ChRBZGRMaXZlYWJvYXJkUmVxdWVzdBIxCgpsaXZlYWJvYXJkGAEgASgLMhEubW9kZWwuTGl2ZWFib2FyZFIKbGl2ZWFib2FyZA==');
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
    const {'1': 'boat', '3': 1, '4': 1, '5': 11, '6': '.model.Boat', '10': 'boat'},
  ],
};

/// Descriptor for `ListBoatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBoatsResponseDescriptor = $convert.base64Decode('ChFMaXN0Qm9hdHNSZXNwb25zZRIfCgRib2F0GAEgASgLMgsubW9kZWwuQm9hdFIEYm9hdA==');
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
    const {'1': 'dive_master', '3': 1, '4': 1, '5': 11, '6': '.model.DiveMaster', '10': 'diveMaster'},
  ],
};

/// Descriptor for `ListDiveMastersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDiveMastersResponseDescriptor = $convert.base64Decode('ChdMaXN0RGl2ZU1hc3RlcnNSZXNwb25zZRIyCgtkaXZlX21hc3RlchgBIAEoCzIRLm1vZGVsLkRpdmVNYXN0ZXJSCmRpdmVNYXN0ZXI=');
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
    const {'1': 'hotel', '3': 1, '4': 1, '5': 11, '6': '.model.Hotel', '10': 'hotel'},
  ],
};

/// Descriptor for `ListHotelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHotelsResponseDescriptor = $convert.base64Decode('ChJMaXN0SG90ZWxzUmVzcG9uc2USIgoFaG90ZWwYASABKAsyDC5tb2RlbC5Ib3RlbFIFaG90ZWw=');
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
    const {'1': 'liveaboard', '3': 1, '4': 1, '5': 11, '6': '.model.Liveaboard', '10': 'liveaboard'},
  ],
};

/// Descriptor for `ListLiveaboardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLiveaboardsResponseDescriptor = $convert.base64Decode('ChdMaXN0TGl2ZWFib2FyZHNSZXNwb25zZRIxCgpsaXZlYWJvYXJkGAEgASgLMhEubW9kZWwuTGl2ZWFib2FyZFIKbGl2ZWFib2FyZA==');
@$core.Deprecated('Use listStaffsRequestDescriptor instead')
const ListStaffsRequest$json = const {
  '1': 'ListStaffsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListStaffsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStaffsRequestDescriptor = $convert.base64Decode('ChFMaXN0U3RhZmZzUmVxdWVzdBIUCgVsaW1pdBgBIAEoBFIFbGltaXQSFgoGb2Zmc2V0GAIgASgEUgZvZmZzZXQ=');
@$core.Deprecated('Use listStaffsResponseDescriptor instead')
const ListStaffsResponse$json = const {
  '1': 'ListStaffsResponse',
  '2': const [
    const {'1': 'staff', '3': 1, '4': 1, '5': 11, '6': '.model.Staff', '10': 'staff'},
  ],
};

/// Descriptor for `ListStaffsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStaffsResponseDescriptor = $convert.base64Decode('ChJMaXN0U3RhZmZzUmVzcG9uc2USIgoFc3RhZmYYASABKAsyDC5tb2RlbC5TdGFmZlIFc3RhZmY=');
@$core.Deprecated('Use listTripTemplatesRequestDescriptor instead')
const ListTripTemplatesRequest$json = const {
  '1': 'ListTripTemplatesRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListTripTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTripTemplatesRequestDescriptor = $convert.base64Decode('ChhMaXN0VHJpcFRlbXBsYXRlc1JlcXVlc3QSFAoFbGltaXQYASABKARSBWxpbWl0EhYKBm9mZnNldBgCIAEoBFIGb2Zmc2V0');
@$core.Deprecated('Use listTripTemplatesResponseDescriptor instead')
const ListTripTemplatesResponse$json = const {
  '1': 'ListTripTemplatesResponse',
  '2': const [
    const {'1': 'template', '3': 1, '4': 1, '5': 11, '6': '.model.TripTemplate', '10': 'template'},
  ],
};

/// Descriptor for `ListTripTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTripTemplatesResponseDescriptor = $convert.base64Decode('ChlMaXN0VHJpcFRlbXBsYXRlc1Jlc3BvbnNlEi8KCHRlbXBsYXRlGAEgASgLMhMubW9kZWwuVHJpcFRlbXBsYXRlUgh0ZW1wbGF0ZQ==');
@$core.Deprecated('Use listTripsRequestDescriptor instead')
const ListTripsRequest$json = const {
  '1': 'ListTripsRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListTripsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTripsRequestDescriptor = $convert.base64Decode('ChBMaXN0VHJpcHNSZXF1ZXN0EhQKBWxpbWl0GAEgASgEUgVsaW1pdBIWCgZvZmZzZXQYAiABKARSBm9mZnNldA==');
@$core.Deprecated('Use listTripsResponseDescriptor instead')
const ListTripsResponse$json = const {
  '1': 'ListTripsResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.Trip', '10': 'trip'},
  ],
};

/// Descriptor for `ListTripsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTripsResponseDescriptor = $convert.base64Decode('ChFMaXN0VHJpcHNSZXNwb25zZRIfCgR0cmlwGAEgASgLMgsubW9kZWwuVHJpcFIEdHJpcA==');
@$core.Deprecated('Use listTripsWithTemplatesRequestDescriptor instead')
const ListTripsWithTemplatesRequest$json = const {
  '1': 'ListTripsWithTemplatesRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListTripsWithTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTripsWithTemplatesRequestDescriptor = $convert.base64Decode('Ch1MaXN0VHJpcHNXaXRoVGVtcGxhdGVzUmVxdWVzdBIUCgVsaW1pdBgBIAEoBFIFbGltaXQSFgoGb2Zmc2V0GAIgASgEUgZvZmZzZXQ=');
@$core.Deprecated('Use listTripsWithTemplatesResponseDescriptor instead')
const ListTripsWithTemplatesResponse$json = const {
  '1': 'ListTripsWithTemplatesResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripWithTemplate', '10': 'trip'},
  ],
};

/// Descriptor for `ListTripsWithTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTripsWithTemplatesResponseDescriptor = $convert.base64Decode('Ch5MaXN0VHJpcHNXaXRoVGVtcGxhdGVzUmVzcG9uc2USKwoEdHJpcBgBIAEoCzIXLm1vZGVsLlRyaXBXaXRoVGVtcGxhdGVSBHRyaXA=');
@$core.Deprecated('Use listRoomTypesRequestDescriptor instead')
const ListRoomTypesRequest$json = const {
  '1': 'ListRoomTypesRequest',
  '2': const [
    const {'1': 'hotel_id', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'hotelId'},
    const {'1': 'liveaboard_id', '3': 10, '4': 1, '5': 4, '9': 0, '10': 'liveaboardId'},
    const {'1': 'limit', '3': 20, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 25, '4': 1, '5': 4, '10': 'offset'},
  ],
  '8': const [
    const {'1': 'id'},
  ],
};

/// Descriptor for `ListRoomTypesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomTypesRequestDescriptor = $convert.base64Decode('ChRMaXN0Um9vbVR5cGVzUmVxdWVzdBIbCghob3RlbF9pZBgBIAEoBEgAUgdob3RlbElkEiUKDWxpdmVhYm9hcmRfaWQYCiABKARIAFIMbGl2ZWFib2FyZElkEhQKBWxpbWl0GBQgASgEUgVsaW1pdBIWCgZvZmZzZXQYGSABKARSBm9mZnNldEIECgJpZA==');
@$core.Deprecated('Use listRoomTypesResponseDescriptor instead')
const ListRoomTypesResponse$json = const {
  '1': 'ListRoomTypesResponse',
  '2': const [
    const {'1': 'room_type', '3': 1, '4': 1, '5': 11, '6': '.model.RoomType', '10': 'roomType'},
  ],
};

/// Descriptor for `ListRoomTypesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomTypesResponseDescriptor = $convert.base64Decode('ChVMaXN0Um9vbVR5cGVzUmVzcG9uc2USLAoJcm9vbV90eXBlGAEgASgLMg8ubW9kZWwuUm9vbVR5cGVSCHJvb21UeXBl');
@$core.Deprecated('Use searchTripsOptionsDescriptor instead')
const SearchTripsOptions$json = const {
  '1': 'SearchTripsOptions',
  '2': const [
    const {'1': 'country', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'country'},
    const {'1': 'city', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'city'},
    const {'1': 'region', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'region'},
    const {'1': 'divers', '3': 10, '4': 1, '5': 13, '10': 'divers'},
    const {'1': 'trip_type', '3': 15, '4': 1, '5': 14, '6': '.model.TripType', '10': 'tripType'},
    const {'1': 'start_date', '3': 20, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'startDate'},
    const {'1': 'end_date', '3': 30, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'endDate'},
  ],
  '8': const [
    const {'1': 'location_filter'},
  ],
};

/// Descriptor for `SearchTripsOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchTripsOptionsDescriptor = $convert.base64Decode('ChJTZWFyY2hUcmlwc09wdGlvbnMSGgoHY291bnRyeRgBIAEoCUgAUgdjb3VudHJ5EhQKBGNpdHkYAiABKAlIAFIEY2l0eRIYCgZyZWdpb24YAyABKAlIAFIGcmVnaW9uEhYKBmRpdmVycxgKIAEoDVIGZGl2ZXJzEiwKCXRyaXBfdHlwZRgPIAEoDjIPLm1vZGVsLlRyaXBUeXBlUgh0cmlwVHlwZRI/CgpzdGFydF9kYXRlGBQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJc3RhcnREYXRlEjsKCGVuZF9kYXRlGB4gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIHZW5kRGF0ZUIRCg9sb2NhdGlvbl9maWx0ZXI=');
@$core.Deprecated('Use searchTripsRequestDescriptor instead')
const SearchTripsRequest$json = const {
  '1': 'SearchTripsRequest',
  '2': const [
    const {'1': 'search_trips_options', '3': 1, '4': 1, '5': 11, '6': '.agency.SearchTripsOptions', '10': 'searchTripsOptions'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 3, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `SearchTripsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchTripsRequestDescriptor = $convert.base64Decode('ChJTZWFyY2hUcmlwc1JlcXVlc3QSTAoUc2VhcmNoX3RyaXBzX29wdGlvbnMYASABKAsyGi5hZ2VuY3kuU2VhcmNoVHJpcHNPcHRpb25zUhJzZWFyY2hUcmlwc09wdGlvbnMSFAoFbGltaXQYAiABKARSBWxpbWl0EhYKBm9mZnNldBgDIAEoBFIGb2Zmc2V0');
@$core.Deprecated('Use searchTripsResponseDescriptor instead')
const SearchTripsResponse$json = const {
  '1': 'SearchTripsResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripWithTemplate', '10': 'trip'},
  ],
};

/// Descriptor for `SearchTripsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchTripsResponseDescriptor = $convert.base64Decode('ChNTZWFyY2hUcmlwc1Jlc3BvbnNlEisKBHRyaXAYASABKAsyFy5tb2RlbC5UcmlwV2l0aFRlbXBsYXRlUgR0cmlw');
@$core.Deprecated('Use updateTripRequestDescriptor instead')
const UpdateTripRequest$json = const {
  '1': 'UpdateTripRequest',
  '2': const [
    const {'1': 'trip', '3': 10, '4': 1, '5': 11, '6': '.model.Trip', '10': 'trip'},
  ],
};

/// Descriptor for `UpdateTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTripRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVUcmlwUmVxdWVzdBIfCgR0cmlwGAogASgLMgsubW9kZWwuVHJpcFIEdHJpcA==');
@$core.Deprecated('Use updateHotelRequestDescriptor instead')
const UpdateHotelRequest$json = const {
  '1': 'UpdateHotelRequest',
  '2': const [
    const {'1': 'hotel', '3': 10, '4': 1, '5': 11, '6': '.model.Hotel', '10': 'hotel'},
  ],
};

/// Descriptor for `UpdateHotelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateHotelRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVIb3RlbFJlcXVlc3QSIgoFaG90ZWwYCiABKAsyDC5tb2RlbC5Ib3RlbFIFaG90ZWw=');
@$core.Deprecated('Use updateLiveaboardRequestDescriptor instead')
const UpdateLiveaboardRequest$json = const {
  '1': 'UpdateLiveaboardRequest',
  '2': const [
    const {'1': 'liveaboard', '3': 10, '4': 1, '5': 11, '6': '.model.Liveaboard', '10': 'liveaboard'},
  ],
};

/// Descriptor for `UpdateLiveaboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateLiveaboardRequestDescriptor = $convert.base64Decode('ChdVcGRhdGVMaXZlYWJvYXJkUmVxdWVzdBIxCgpsaXZlYWJvYXJkGAogASgLMhEubW9kZWwuTGl2ZWFib2FyZFIKbGl2ZWFib2FyZA==');
@$core.Deprecated('Use updateBoatRequestDescriptor instead')
const UpdateBoatRequest$json = const {
  '1': 'UpdateBoatRequest',
  '2': const [
    const {'1': 'boat', '3': 10, '4': 1, '5': 11, '6': '.model.Boat', '10': 'boat'},
  ],
};

/// Descriptor for `UpdateBoatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBoatRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVCb2F0UmVxdWVzdBIfCgRib2F0GAogASgLMgsubW9kZWwuQm9hdFIEYm9hdA==');
@$core.Deprecated('Use updateDiveMasterRequestDescriptor instead')
const UpdateDiveMasterRequest$json = const {
  '1': 'UpdateDiveMasterRequest',
  '2': const [
    const {'1': 'dive_master', '3': 10, '4': 1, '5': 11, '6': '.model.DiveMaster', '10': 'diveMaster'},
  ],
};

/// Descriptor for `UpdateDiveMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDiveMasterRequestDescriptor = $convert.base64Decode('ChdVcGRhdGVEaXZlTWFzdGVyUmVxdWVzdBIyCgtkaXZlX21hc3RlchgKIAEoCzIRLm1vZGVsLkRpdmVNYXN0ZXJSCmRpdmVNYXN0ZXI=');
@$core.Deprecated('Use updateStaffRequestDescriptor instead')
const UpdateStaffRequest$json = const {
  '1': 'UpdateStaffRequest',
  '2': const [
    const {'1': 'staff', '3': 10, '4': 1, '5': 11, '6': '.model.Staff', '10': 'staff'},
  ],
};

/// Descriptor for `UpdateStaffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStaffRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVTdGFmZlJlcXVlc3QSIgoFc3RhZmYYCiABKAsyDC5tb2RlbC5TdGFmZlIFc3RhZmY=');
@$core.Deprecated('Use generateCurrentTripsReportRequestDescriptor instead')
const GenerateCurrentTripsReportRequest$json = const {
  '1': 'GenerateCurrentTripsReportRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `GenerateCurrentTripsReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateCurrentTripsReportRequestDescriptor = $convert.base64Decode('CiFHZW5lcmF0ZUN1cnJlbnRUcmlwc1JlcG9ydFJlcXVlc3QSFAoFbGltaXQYASABKARSBWxpbWl0EhYKBm9mZnNldBgCIAEoBFIGb2Zmc2V0');
@$core.Deprecated('Use generateCurrentTripsReportResponseDescriptor instead')
const GenerateCurrentTripsReportResponse$json = const {
  '1': 'GenerateCurrentTripsReportResponse',
  '2': const [
    const {'1': 'report', '3': 1, '4': 1, '5': 11, '6': '.model.ReportTrip', '10': 'report'},
  ],
};

/// Descriptor for `GenerateCurrentTripsReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateCurrentTripsReportResponseDescriptor = $convert.base64Decode('CiJHZW5lcmF0ZUN1cnJlbnRUcmlwc1JlcG9ydFJlc3BvbnNlEikKBnJlcG9ydBgBIAEoCzIRLm1vZGVsLlJlcG9ydFRyaXBSBnJlcG9ydA==');
@$core.Deprecated('Use generateYearlyEndedTripsReportRequestDescriptor instead')
const GenerateYearlyEndedTripsReportRequest$json = const {
  '1': 'GenerateYearlyEndedTripsReportRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
    const {'1': 'years', '3': 10, '4': 1, '5': 13, '10': 'years'},
  ],
};

/// Descriptor for `GenerateYearlyEndedTripsReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateYearlyEndedTripsReportRequestDescriptor = $convert.base64Decode('CiVHZW5lcmF0ZVllYXJseUVuZGVkVHJpcHNSZXBvcnRSZXF1ZXN0EhQKBWxpbWl0GAEgASgEUgVsaW1pdBIWCgZvZmZzZXQYAiABKARSBm9mZnNldBIUCgV5ZWFycxgKIAEoDVIFeWVhcnM=');
@$core.Deprecated('Use generateYearlyEndedTripsReportResponseDescriptor instead')
const GenerateYearlyEndedTripsReportResponse$json = const {
  '1': 'GenerateYearlyEndedTripsReportResponse',
  '2': const [
    const {'1': 'reports', '3': 1, '4': 3, '5': 11, '6': '.model.ReportTrip', '10': 'reports'},
  ],
};

/// Descriptor for `GenerateYearlyEndedTripsReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateYearlyEndedTripsReportResponseDescriptor = $convert.base64Decode('CiZHZW5lcmF0ZVllYXJseUVuZGVkVHJpcHNSZXBvcnRSZXNwb25zZRIrCgdyZXBvcnRzGAEgAygLMhEubW9kZWwuUmVwb3J0VHJpcFIHcmVwb3J0cw==');
@$core.Deprecated('Use generateIncomingTripsReportRequestDescriptor instead')
const GenerateIncomingTripsReportRequest$json = const {
  '1': 'GenerateIncomingTripsReportRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
    const {'1': 'weeks', '3': 10, '4': 1, '5': 13, '10': 'weeks'},
  ],
};

/// Descriptor for `GenerateIncomingTripsReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateIncomingTripsReportRequestDescriptor = $convert.base64Decode('CiJHZW5lcmF0ZUluY29taW5nVHJpcHNSZXBvcnRSZXF1ZXN0EhQKBWxpbWl0GAEgASgEUgVsaW1pdBIWCgZvZmZzZXQYAiABKARSBm9mZnNldBIUCgV3ZWVrcxgKIAEoDVIFd2Vla3M=');
@$core.Deprecated('Use generateIncomingTripsReportResponseDescriptor instead')
const GenerateIncomingTripsReportResponse$json = const {
  '1': 'GenerateIncomingTripsReportResponse',
  '2': const [
    const {'1': 'report', '3': 1, '4': 1, '5': 11, '6': '.model.ReportTrip', '10': 'report'},
  ],
};

/// Descriptor for `GenerateIncomingTripsReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateIncomingTripsReportResponseDescriptor = $convert.base64Decode('CiNHZW5lcmF0ZUluY29taW5nVHJpcHNSZXBvcnRSZXNwb25zZRIpCgZyZXBvcnQYASABKAsyES5tb2RlbC5SZXBvcnRUcmlwUgZyZXBvcnQ=');
