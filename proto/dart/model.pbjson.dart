///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountTypeDescriptor instead')
const AccountType$json = const {
  '1': 'AccountType',
  '2': const [
    const {'1': 'ADMIN', '2': 0},
    const {'1': 'AGENCY', '2': 1},
    const {'1': 'DIVER', '2': 2},
  ],
};

/// Descriptor for `AccountType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountTypeDescriptor = $convert.base64Decode('CgtBY2NvdW50VHlwZRIJCgVBRE1JThAAEgoKBkFHRU5DWRABEgkKBURJVkVSEAI=');
@$core.Deprecated('Use genderTypeDescriptor instead')
const GenderType$json = const {
  '1': 'GenderType',
  '2': const [
    const {'1': 'FEMALE', '2': 0},
    const {'1': 'MALE', '2': 1},
  ],
};

/// Descriptor for `GenderType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderTypeDescriptor = $convert.base64Decode('CgpHZW5kZXJUeXBlEgoKBkZFTUFMRRAAEggKBE1BTEUQAQ==');
@$core.Deprecated('Use levelTypeDescriptor instead')
const LevelType$json = const {
  '1': 'LevelType',
  '2': const [
    const {'1': 'INSTRUCTOR', '2': 0},
    const {'1': 'MASTER', '2': 1},
    const {'1': 'RESCUE', '2': 2},
    const {'1': 'ADVANCED_OPEN_WATER', '2': 3},
    const {'1': 'OPEN_WATER', '2': 4},
  ],
};

/// Descriptor for `LevelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List levelTypeDescriptor = $convert.base64Decode('CglMZXZlbFR5cGUSDgoKSU5TVFJVQ1RPUhAAEgoKBk1BU1RFUhABEgoKBlJFU0NVRRACEhcKE0FEVkFOQ0VEX09QRU5fV0FURVIQAxIOCgpPUEVOX1dBVEVSEAQ=');
@$core.Deprecated('Use tripTypeDescriptor instead')
const TripType$json = const {
  '1': 'TripType',
  '2': const [
    const {'1': 'ONSHORE', '2': 0},
    const {'1': 'OFFSHORE', '2': 1},
  ],
};

/// Descriptor for `TripType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tripTypeDescriptor = $convert.base64Decode('CghUcmlwVHlwZRILCgdPTlNIT1JFEAASDAoIT0ZGU0hPUkUQAQ==');
@$core.Deprecated('Use fileDescriptor instead')
const File$json = const {
  '1': 'File',
  '2': const [
    const {'1': 'filename', '3': 1, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'link', '3': 2, '4': 1, '5': 9, '10': 'link'},
    const {'1': 'file', '3': 10, '4': 1, '5': 12, '10': 'file'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode('CgRGaWxlEhoKCGZpbGVuYW1lGAEgASgJUghmaWxlbmFtZRISCgRsaW5rGAIgASgJUgRsaW5rEhIKBGZpbGUYCiABKAxSBGZpbGU=');
@$core.Deprecated('Use accountDescriptor instead')
const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'username', '3': 10, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'email', '3': 20, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 30, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'old_password', '3': 35, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'type', '3': 40, '4': 1, '5': 14, '6': '.model.AccountType', '10': 'type'},
    const {'1': 'verified', '3': 50, '4': 1, '5': 8, '10': 'verified'},
    const {'1': 'active', '3': 60, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'created_at', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode('CgdBY2NvdW50Eg4KAmlkGAEgASgEUgJpZBIaCgh1c2VybmFtZRgKIAEoCVIIdXNlcm5hbWUSFAoFZW1haWwYFCABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGB4gASgJUghwYXNzd29yZBIhCgxvbGRfcGFzc3dvcmQYIyABKAlSC29sZFBhc3N3b3JkEiYKBHR5cGUYKCABKA4yEi5tb2RlbC5BY2NvdW50VHlwZVIEdHlwZRIaCgh2ZXJpZmllZBgyIAEoCFIIdmVyaWZpZWQSFgoGYWN0aXZlGDwgASgIUgZhY3RpdmUSPwoKY3JlYXRlZF9hdBhGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GFAgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use adminDescriptor instead')
const Admin$json = const {
  '1': 'Admin',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.model.Account', '10': 'account'},
  ],
};

/// Descriptor for `Admin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminDescriptor = $convert.base64Decode('CgVBZG1pbhIoCgdhY2NvdW50GAEgASgLMg4ubW9kZWwuQWNjb3VudFIHYWNjb3VudA==');
@$core.Deprecated('Use addressDescriptor instead')
const Address$json = const {
  '1': 'Address',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'address_line_1', '3': 10, '4': 1, '5': 9, '10': 'addressLine1'},
    const {'1': 'address_line_2', '3': 20, '4': 1, '5': 9, '10': 'addressLine2'},
    const {'1': 'city', '3': 30, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'postcode', '3': 40, '4': 1, '5': 9, '10': 'postcode'},
    const {'1': 'region', '3': 50, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'country', '3': 60, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'created_at', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Address`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressDescriptor = $convert.base64Decode('CgdBZGRyZXNzEg4KAmlkGAEgASgEUgJpZBIkCg5hZGRyZXNzX2xpbmVfMRgKIAEoCVIMYWRkcmVzc0xpbmUxEiQKDmFkZHJlc3NfbGluZV8yGBQgASgJUgxhZGRyZXNzTGluZTISEgoEY2l0eRgeIAEoCVIEY2l0eRIaCghwb3N0Y29kZRgoIAEoCVIIcG9zdGNvZGUSFgoGcmVnaW9uGDIgASgJUgZyZWdpb24SGAoHY291bnRyeRg8IAEoCVIHY291bnRyeRI/CgpjcmVhdGVkX2F0GEYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYXQYUCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use coordinateDescriptor instead')
const Coordinate$json = const {
  '1': 'Coordinate',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 2, '10': 'lat'},
    const {'1': 'long', '3': 2, '4': 1, '5': 2, '10': 'long'},
  ],
};

/// Descriptor for `Coordinate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coordinateDescriptor = $convert.base64Decode('CgpDb29yZGluYXRlEhAKA2xhdBgBIAEoAlIDbGF0EhIKBGxvbmcYAiABKAJSBGxvbmc=');
@$core.Deprecated('Use agencyDescriptor instead')
const Agency$json = const {
  '1': 'Agency',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'phone', '3': 20, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'account', '3': 30, '4': 1, '5': 11, '6': '.model.Account', '10': 'account'},
    const {'1': 'address', '3': 40, '4': 1, '5': 11, '6': '.model.Address', '8': const {}, '10': 'address'},
    const {'1': 'coordinate', '3': 45, '4': 1, '5': 11, '6': '.model.Coordinate', '10': 'coordinate'},
    const {'1': 'account_number', '3': 46, '4': 1, '5': 9, '10': 'accountNumber'},
    const {'1': 'documents', '3': 50, '4': 3, '5': 11, '6': '.model.File', '8': const {}, '10': 'documents'},
    const {'1': 'created_at', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Agency`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agencyDescriptor = $convert.base64Decode('CgZBZ2VuY3kSDgoCaWQYASABKARSAmlkEhIKBG5hbWUYCiABKAlSBG5hbWUSFAoFcGhvbmUYFCABKAlSBXBob25lEigKB2FjY291bnQYHiABKAsyDi5tb2RlbC5BY2NvdW50UgdhY2NvdW50Ei4KB2FkZHJlc3MYKCABKAsyDi5tb2RlbC5BZGRyZXNzQgTI3h8AUgdhZGRyZXNzEjEKCmNvb3JkaW5hdGUYLSABKAsyES5tb2RlbC5Db29yZGluYXRlUgpjb29yZGluYXRlEiUKDmFjY291bnRfbnVtYmVyGC4gASgJUg1hY2NvdW50TnVtYmVyEi8KCWRvY3VtZW50cxgyIAMoCzILLm1vZGVsLkZpbGVCBMjeHwBSCWRvY3VtZW50cxI/CgpjcmVhdGVkX2F0GDwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYXQYRiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use diverDescriptor instead')
const Diver$json = const {
  '1': 'Diver',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'first_name', '3': 10, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 20, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'phone', '3': 30, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'birth_date', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'birthDate'},
    const {'1': 'level', '3': 50, '4': 1, '5': 14, '6': '.model.LevelType', '10': 'level'},
    const {'1': 'account', '3': 60, '4': 1, '5': 11, '6': '.model.Account', '10': 'account'},
    const {'1': 'documents', '3': 70, '4': 3, '5': 11, '6': '.model.File', '8': const {}, '10': 'documents'},
    const {'1': 'created_at', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 90, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Diver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diverDescriptor = $convert.base64Decode('CgVEaXZlchIOCgJpZBgBIAEoBFICaWQSHQoKZmlyc3RfbmFtZRgKIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgUIAEoCVIIbGFzdE5hbWUSFAoFcGhvbmUYHiABKAlSBXBob25lEkMKCmJpcnRoX2RhdGUYKCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgiQ3x8ByN4fAFIJYmlydGhEYXRlEiYKBWxldmVsGDIgASgOMhAubW9kZWwuTGV2ZWxUeXBlUgVsZXZlbBIoCgdhY2NvdW50GDwgASgLMg4ubW9kZWwuQWNjb3VudFIHYWNjb3VudBIvCglkb2N1bWVudHMYRiADKAsyCy5tb2RlbC5GaWxlQgTI3h8AUglkb2N1bWVudHMSPwoKY3JlYXRlZF9hdBhQIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GFogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use tripCommentDescriptor instead')
const TripComment$json = const {
  '1': 'TripComment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'stars', '3': 20, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'reservation_id', '3': 30, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'created_at', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `TripComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripCommentDescriptor = $convert.base64Decode('CgtUcmlwQ29tbWVudBIOCgJpZBgBIAEoBFICaWQSGAoHY29tbWVudBgKIAEoCVIHY29tbWVudBIUCgVzdGFycxgUIAEoDVIFc3RhcnMSJQoOcmVzZXJ2YXRpb25faWQYHiABKARSDXJlc2VydmF0aW9uSWQSPwoKY3JlYXRlZF9hdBgoIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GDIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use hotelCommentDescriptor instead')
const HotelComment$json = const {
  '1': 'HotelComment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'stars', '3': 20, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'reservation_id', '3': 30, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'created_at', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `HotelComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotelCommentDescriptor = $convert.base64Decode('CgxIb3RlbENvbW1lbnQSDgoCaWQYASABKARSAmlkEhgKB2NvbW1lbnQYCiABKAlSB2NvbW1lbnQSFAoFc3RhcnMYFCABKA1SBXN0YXJzEiUKDnJlc2VydmF0aW9uX2lkGB4gASgEUg1yZXNlcnZhdGlvbklkEj8KCmNyZWF0ZWRfYXQYKCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkQXQSPwoKdXBkYXRlZF9hdBgyIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRBdA==');
@$core.Deprecated('Use liveaboardCommentDescriptor instead')
const LiveaboardComment$json = const {
  '1': 'LiveaboardComment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'stars', '3': 20, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'reservation_id', '3': 30, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'created_at', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `LiveaboardComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveaboardCommentDescriptor = $convert.base64Decode('ChFMaXZlYWJvYXJkQ29tbWVudBIOCgJpZBgBIAEoBFICaWQSGAoHY29tbWVudBgKIAEoCVIHY29tbWVudBIUCgVzdGFycxgUIAEoDVIFc3RhcnMSJQoOcmVzZXJ2YXRpb25faWQYHiABKARSDXJlc2VydmF0aW9uSWQSPwoKY3JlYXRlZF9hdBgoIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GDIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use boatDescriptor instead')
const Boat$json = const {
  '1': 'Boat',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 11, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'images', '3': 20, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'total_capacity', '3': 21, '4': 1, '5': 13, '10': 'totalCapacity'},
    const {'1': 'diver_capacity', '3': 22, '4': 1, '5': 13, '10': 'diverCapacity'},
    const {'1': 'staff_capacity', '3': 23, '4': 1, '5': 13, '10': 'staffCapacity'},
    const {'1': 'address', '3': 24, '4': 1, '5': 11, '6': '.model.Address', '10': 'address'},
    const {'1': 'created_at', '3': 30, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Boat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boatDescriptor = $convert.base64Decode('CgRCb2F0Eg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAogASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAsgASgJUgtkZXNjcmlwdGlvbhIjCgZpbWFnZXMYFCADKAsyCy5tb2RlbC5GaWxlUgZpbWFnZXMSJQoOdG90YWxfY2FwYWNpdHkYFSABKA1SDXRvdGFsQ2FwYWNpdHkSJQoOZGl2ZXJfY2FwYWNpdHkYFiABKA1SDWRpdmVyQ2FwYWNpdHkSJQoOc3RhZmZfY2FwYWNpdHkYFyABKA1SDXN0YWZmQ2FwYWNpdHkSKAoHYWRkcmVzcxgYIAEoCzIOLm1vZGVsLkFkZHJlc3NSB2FkZHJlc3MSPwoKY3JlYXRlZF9hdBgeIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GCggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use diveMasterDescriptor instead')
const DiveMaster$json = const {
  '1': 'DiveMaster',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'first_name', '3': 10, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 20, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'level', '3': 30, '4': 1, '5': 14, '6': '.model.LevelType', '10': 'level'},
    const {'1': 'documents', '3': 40, '4': 3, '5': 11, '6': '.model.File', '10': 'documents'},
    const {'1': 'created_at', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `DiveMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diveMasterDescriptor = $convert.base64Decode('CgpEaXZlTWFzdGVyEg4KAmlkGAEgASgEUgJpZBIdCgpmaXJzdF9uYW1lGAogASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGBQgASgJUghsYXN0TmFtZRImCgVsZXZlbBgeIAEoDjIQLm1vZGVsLkxldmVsVHlwZVIFbGV2ZWwSKQoJZG9jdW1lbnRzGCggAygLMgsubW9kZWwuRmlsZVIJZG9jdW1lbnRzEj8KCmNyZWF0ZWRfYXQYMiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkQXQSPwoKdXBkYXRlZF9hdBg8IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRBdA==');
@$core.Deprecated('Use hotelDescriptor instead')
const Hotel$json = const {
  '1': 'Hotel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 20, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'stars', '3': 30, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'phone', '3': 40, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'address', '3': 50, '4': 1, '5': 11, '6': '.model.Address', '10': 'address'},
    const {'1': 'images', '3': 60, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'room_types', '3': 65, '4': 3, '5': 11, '6': '.model.RoomType', '10': 'roomTypes'},
    const {'1': 'created_at', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Hotel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotelDescriptor = $convert.base64Decode('CgVIb3RlbBIOCgJpZBgBIAEoBFICaWQSEgoEbmFtZRgKIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgUIAEoCVILZGVzY3JpcHRpb24SFAoFc3RhcnMYHiABKA1SBXN0YXJzEhQKBXBob25lGCggASgJUgVwaG9uZRIoCgdhZGRyZXNzGDIgASgLMg4ubW9kZWwuQWRkcmVzc1IHYWRkcmVzcxIjCgZpbWFnZXMYPCADKAsyCy5tb2RlbC5GaWxlUgZpbWFnZXMSLgoKcm9vbV90eXBlcxhBIAMoCzIPLm1vZGVsLlJvb21UeXBlUglyb29tVHlwZXMSPwoKY3JlYXRlZF9hdBhGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GFAgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use liveaboardDescriptor instead')
const Liveaboard$json = const {
  '1': 'Liveaboard',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 20, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'length', '3': 30, '4': 1, '5': 2, '10': 'length'},
    const {'1': 'width', '3': 40, '4': 1, '5': 2, '10': 'width'},
    const {'1': 'images', '3': 50, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'total_capacity', '3': 51, '4': 1, '5': 13, '10': 'totalCapacity'},
    const {'1': 'diver_rooms', '3': 52, '4': 1, '5': 13, '10': 'diverRooms'},
    const {'1': 'staff_rooms', '3': 53, '4': 1, '5': 13, '10': 'staffRooms'},
    const {'1': 'address', '3': 54, '4': 1, '5': 11, '6': '.model.Address', '10': 'address'},
    const {'1': 'room_types', '3': 55, '4': 3, '5': 11, '6': '.model.RoomType', '10': 'roomTypes'},
    const {'1': 'created_at', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Liveaboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveaboardDescriptor = $convert.base64Decode('CgpMaXZlYWJvYXJkEg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAogASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGBQgASgJUgtkZXNjcmlwdGlvbhIWCgZsZW5ndGgYHiABKAJSBmxlbmd0aBIUCgV3aWR0aBgoIAEoAlIFd2lkdGgSIwoGaW1hZ2VzGDIgAygLMgsubW9kZWwuRmlsZVIGaW1hZ2VzEiUKDnRvdGFsX2NhcGFjaXR5GDMgASgNUg10b3RhbENhcGFjaXR5Eh8KC2RpdmVyX3Jvb21zGDQgASgNUgpkaXZlclJvb21zEh8KC3N0YWZmX3Jvb21zGDUgASgNUgpzdGFmZlJvb21zEigKB2FkZHJlc3MYNiABKAsyDi5tb2RlbC5BZGRyZXNzUgdhZGRyZXNzEi4KCnJvb21fdHlwZXMYNyADKAsyDy5tb2RlbC5Sb29tVHlwZVIJcm9vbVR5cGVzEj8KCmNyZWF0ZWRfYXQYPCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkQXQSPwoKdXBkYXRlZF9hdBhGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRBdA==');
@$core.Deprecated('Use staffDescriptor instead')
const Staff$json = const {
  '1': 'Staff',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'first_name', '3': 10, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 20, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'position', '3': 30, '4': 1, '5': 9, '10': 'position'},
    const {'1': 'gender', '3': 40, '4': 1, '5': 14, '6': '.model.GenderType', '10': 'gender'},
    const {'1': 'created_at', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Staff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staffDescriptor = $convert.base64Decode('CgVTdGFmZhIOCgJpZBgBIAEoBFICaWQSHQoKZmlyc3RfbmFtZRgKIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgUIAEoCVIIbGFzdE5hbWUSGgoIcG9zaXRpb24YHiABKAlSCHBvc2l0aW9uEikKBmdlbmRlchgoIAEoDjIRLm1vZGVsLkdlbmRlclR5cGVSBmdlbmRlchI/CgpjcmVhdGVkX2F0GDIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYXQYPCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use tripTemplateDescriptor instead')
const TripTemplate$json = const {
  '1': 'TripTemplate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 20, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'trip_type', '3': 30, '4': 1, '5': 14, '6': '.model.TripType', '10': 'tripType'},
    const {'1': 'hotel_id', '3': 40, '4': 1, '5': 4, '10': 'hotelId'},
    const {'1': 'boat_id', '3': 50, '4': 1, '5': 4, '10': 'boatId'},
    const {'1': 'liveaboard_id', '3': 60, '4': 1, '5': 4, '10': 'liveaboardId'},
    const {'1': 'images', '3': 70, '4': 3, '5': 11, '6': '.model.File', '10': 'images'},
    const {'1': 'address', '3': 80, '4': 1, '5': 11, '6': '.model.Address', '10': 'address'},
    const {'1': 'created_at', '3': 90, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 100, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `TripTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripTemplateDescriptor = $convert.base64Decode('CgxUcmlwVGVtcGxhdGUSDgoCaWQYASABKARSAmlkEhIKBG5hbWUYCiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YFCABKAlSC2Rlc2NyaXB0aW9uEiwKCXRyaXBfdHlwZRgeIAEoDjIPLm1vZGVsLlRyaXBUeXBlUgh0cmlwVHlwZRIZCghob3RlbF9pZBgoIAEoBFIHaG90ZWxJZBIXCgdib2F0X2lkGDIgASgEUgZib2F0SWQSIwoNbGl2ZWFib2FyZF9pZBg8IAEoBFIMbGl2ZWFib2FyZElkEiMKBmltYWdlcxhGIAMoCzILLm1vZGVsLkZpbGVSBmltYWdlcxIoCgdhZGRyZXNzGFAgASgLMg4ubW9kZWwuQWRkcmVzc1IHYWRkcmVzcxI/CgpjcmVhdGVkX2F0GFogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYXQYZCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use tripDescriptor instead')
const Trip$json = const {
  '1': 'Trip',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'trip_template_id', '3': 20, '4': 1, '5': 4, '10': 'tripTemplateId'},
    const {'1': 'max_guest', '3': 30, '4': 1, '5': 13, '10': 'maxGuest'},
    const {'1': 'curent_guest', '3': 35, '4': 1, '5': 13, '10': 'curentGuest'},
    const {'1': 'schedule', '3': 45, '4': 1, '5': 9, '10': 'schedule'},
    const {'1': 'dive_masters', '3': 50, '4': 3, '5': 11, '6': '.model.DiveMaster', '10': 'diveMasters'},
    const {'1': 'dive_master_ids', '3': 55, '4': 3, '5': 4, '10': 'diveMasterIds'},
    const {'1': 'dive_sites', '3': 56, '4': 3, '5': 11, '6': '.model.DiveSite', '10': 'diveSites'},
    const {'1': 'start_date', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'startDate'},
    const {'1': 'end_date', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'endDate'},
    const {'1': 'last_reservation_date', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'lastReservationDate'},
    const {'1': 'created_at', '3': 90, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 100, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Trip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripDescriptor = $convert.base64Decode('CgRUcmlwEg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAogASgJUgRuYW1lEigKEHRyaXBfdGVtcGxhdGVfaWQYFCABKARSDnRyaXBUZW1wbGF0ZUlkEhsKCW1heF9ndWVzdBgeIAEoDVIIbWF4R3Vlc3QSIQoMY3VyZW50X2d1ZXN0GCMgASgNUgtjdXJlbnRHdWVzdBIaCghzY2hlZHVsZRgtIAEoCVIIc2NoZWR1bGUSNAoMZGl2ZV9tYXN0ZXJzGDIgAygLMhEubW9kZWwuRGl2ZU1hc3RlclILZGl2ZU1hc3RlcnMSJgoPZGl2ZV9tYXN0ZXJfaWRzGDcgAygEUg1kaXZlTWFzdGVySWRzEi4KCmRpdmVfc2l0ZXMYOCADKAsyDy5tb2RlbC5EaXZlU2l0ZVIJZGl2ZVNpdGVzEj8KCnN0YXJ0X2RhdGUYPCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUglzdGFydERhdGUSOwoIZW5kX2RhdGUYRiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgdlbmREYXRlElQKFWxhc3RfcmVzZXJ2YXRpb25fZGF0ZRhQIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSE2xhc3RSZXNlcnZhdGlvbkRhdGUSPwoKY3JlYXRlZF9hdBhaIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GGQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use tripWithTemplateDescriptor instead')
const TripWithTemplate$json = const {
  '1': 'TripWithTemplate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'trip_template_id', '3': 20, '4': 1, '5': 4, '10': 'tripTemplateId'},
    const {'1': 'trip_template', '3': 25, '4': 1, '5': 11, '6': '.model.TripTemplate', '10': 'tripTemplate'},
    const {'1': 'max_guest', '3': 30, '4': 1, '5': 13, '10': 'maxGuest'},
    const {'1': 'curent_guest', '3': 35, '4': 1, '5': 13, '10': 'curentGuest'},
    const {'1': 'schedule', '3': 45, '4': 1, '5': 9, '10': 'schedule'},
    const {'1': 'dive_masters', '3': 50, '4': 3, '5': 11, '6': '.model.DiveMaster', '10': 'diveMasters'},
    const {'1': 'dive_sites', '3': 56, '4': 3, '5': 11, '6': '.model.DiveSite', '10': 'diveSites'},
    const {'1': 'trip_room_type_prices', '3': 57, '4': 3, '5': 11, '6': '.model.RoomTypeTripPrice', '10': 'tripRoomTypePrices'},
    const {'1': 'start_date', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'startDate'},
    const {'1': 'end_date', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'endDate'},
    const {'1': 'last_reservation_date', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'lastReservationDate'},
    const {'1': 'created_at', '3': 90, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 100, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `TripWithTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripWithTemplateDescriptor = $convert.base64Decode('ChBUcmlwV2l0aFRlbXBsYXRlEg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAogASgJUgRuYW1lEigKEHRyaXBfdGVtcGxhdGVfaWQYFCABKARSDnRyaXBUZW1wbGF0ZUlkEjgKDXRyaXBfdGVtcGxhdGUYGSABKAsyEy5tb2RlbC5UcmlwVGVtcGxhdGVSDHRyaXBUZW1wbGF0ZRIbCgltYXhfZ3Vlc3QYHiABKA1SCG1heEd1ZXN0EiEKDGN1cmVudF9ndWVzdBgjIAEoDVILY3VyZW50R3Vlc3QSGgoIc2NoZWR1bGUYLSABKAlSCHNjaGVkdWxlEjQKDGRpdmVfbWFzdGVycxgyIAMoCzIRLm1vZGVsLkRpdmVNYXN0ZXJSC2RpdmVNYXN0ZXJzEi4KCmRpdmVfc2l0ZXMYOCADKAsyDy5tb2RlbC5EaXZlU2l0ZVIJZGl2ZVNpdGVzEksKFXRyaXBfcm9vbV90eXBlX3ByaWNlcxg5IAMoCzIYLm1vZGVsLlJvb21UeXBlVHJpcFByaWNlUhJ0cmlwUm9vbVR5cGVQcmljZXMSPwoKc3RhcnRfZGF0ZRg8IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXN0YXJ0RGF0ZRI7CghlbmRfZGF0ZRhGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSB2VuZERhdGUSVAoVbGFzdF9yZXNlcnZhdGlvbl9kYXRlGFAgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVITbGFzdFJlc2VydmF0aW9uRGF0ZRI/CgpjcmVhdGVkX2F0GFogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYXQYZCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use amenityDescriptor instead')
const Amenity$json = const {
  '1': 'Amenity',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 20, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'created_at', '3': 30, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Amenity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List amenityDescriptor = $convert.base64Decode('CgdBbWVuaXR5Eg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAogASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGBQgASgJUgtkZXNjcmlwdGlvbhI/CgpjcmVhdGVkX2F0GB4gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYXQYKCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use roomTypeDescriptor instead')
const RoomType$json = const {
  '1': 'RoomType',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 20, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'max_guest', '3': 30, '4': 1, '5': 13, '10': 'maxGuest'},
    const {'1': 'price', '3': 40, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'quantity', '3': 50, '4': 1, '5': 13, '10': 'quantity'},
    const {'1': 'room_images', '3': 60, '4': 3, '5': 11, '6': '.model.File', '10': 'roomImages'},
    const {'1': 'amenities', '3': 70, '4': 3, '5': 11, '6': '.model.Amenity', '10': 'amenities'},
    const {'1': 'created_at', '3': 90, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 100, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `RoomType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomTypeDescriptor = $convert.base64Decode('CghSb29tVHlwZRIOCgJpZBgBIAEoBFICaWQSEgoEbmFtZRgKIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgUIAEoCVILZGVzY3JpcHRpb24SGwoJbWF4X2d1ZXN0GB4gASgNUghtYXhHdWVzdBIUCgVwcmljZRgoIAEoAlIFcHJpY2USGgoIcXVhbnRpdHkYMiABKA1SCHF1YW50aXR5EiwKC3Jvb21faW1hZ2VzGDwgAygLMgsubW9kZWwuRmlsZVIKcm9vbUltYWdlcxIsCglhbWVuaXRpZXMYRiADKAsyDi5tb2RlbC5BbWVuaXR5UglhbWVuaXRpZXMSPwoKY3JlYXRlZF9hdBhaIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GGQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use diveSiteDescriptor instead')
const DiveSite$json = const {
  '1': 'DiveSite',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 10, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'min_depth', '3': 20, '4': 1, '5': 13, '10': 'minDepth'},
    const {'1': 'max_depth', '3': 25, '4': 1, '5': 13, '10': 'maxDepth'},
    const {'1': 'trip_id', '3': 30, '4': 1, '5': 4, '10': 'tripId'},
    const {'1': 'created_at', '3': 90, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 100, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `DiveSite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diveSiteDescriptor = $convert.base64Decode('CghEaXZlU2l0ZRIOCgJpZBgBIAEoBFICaWQSEgoEbmFtZRgFIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgKIAEoCVILZGVzY3JpcHRpb24SGwoJbWluX2RlcHRoGBQgASgNUghtaW5EZXB0aBIbCgltYXhfZGVwdGgYGSABKA1SCG1heERlcHRoEhcKB3RyaXBfaWQYHiABKARSBnRyaXBJZBI/CgpjcmVhdGVkX2F0GFogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYXQYZCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkQXQ=');
@$core.Deprecated('Use reportTripDescriptor instead')
const ReportTrip$json = const {
  '1': 'ReportTrip',
  '2': const [
    const {'1': 'trip', '3': 10, '4': 1, '5': 11, '6': '.model.TripWithTemplate', '10': 'trip'},
    const {'1': 'places_left', '3': 20, '4': 1, '5': 13, '10': 'placesLeft'},
    const {'1': 'divers', '3': 45, '4': 3, '5': 11, '6': '.model.Diver', '10': 'divers'},
    const {'1': 'reservations', '3': 50, '4': 3, '5': 11, '6': '.model.Reservation', '10': 'reservations'},
  ],
};

/// Descriptor for `ReportTrip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportTripDescriptor = $convert.base64Decode('CgpSZXBvcnRUcmlwEisKBHRyaXAYCiABKAsyFy5tb2RlbC5UcmlwV2l0aFRlbXBsYXRlUgR0cmlwEh8KC3BsYWNlc19sZWZ0GBQgASgNUgpwbGFjZXNMZWZ0EiQKBmRpdmVycxgtIAMoCzIMLm1vZGVsLkRpdmVyUgZkaXZlcnMSNgoMcmVzZXJ2YXRpb25zGDIgAygLMhIubW9kZWwuUmVzZXJ2YXRpb25SDHJlc2VydmF0aW9ucw==');
@$core.Deprecated('Use paymentDescriptor instead')
const Payment$json = const {
  '1': 'Payment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'payment_slip', '3': 10, '4': 1, '5': 11, '6': '.model.File', '10': 'paymentSlip'},
    const {'1': 'verified', '3': 20, '4': 1, '5': 8, '10': 'verified'},
    const {'1': 'diver', '3': 30, '4': 1, '5': 11, '6': '.model.Diver', '10': 'diver'},
    const {'1': 'reservation_id', '3': 40, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'created_at', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Payment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentDescriptor = $convert.base64Decode('CgdQYXltZW50Eg4KAmlkGAEgASgEUgJpZBIuCgxwYXltZW50X3NsaXAYCiABKAsyCy5tb2RlbC5GaWxlUgtwYXltZW50U2xpcBIaCgh2ZXJpZmllZBgUIAEoCFIIdmVyaWZpZWQSIgoFZGl2ZXIYHiABKAsyDC5tb2RlbC5EaXZlclIFZGl2ZXISJQoOcmVzZXJ2YXRpb25faWQYKCABKARSDXJlc2VydmF0aW9uSWQSPwoKY3JlYXRlZF9hdBgyIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GDwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0');
@$core.Deprecated('Use reservationDescriptor instead')
const Reservation$json = const {
  '1': 'Reservation',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'trip_id', '3': 10, '4': 1, '5': 4, '10': 'tripId'},
    const {'1': 'diver_id', '3': 20, '4': 1, '5': 4, '10': 'diverId'},
    const {'1': 'price', '3': 30, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'total_divers', '3': 35, '4': 1, '5': 4, '10': 'totalDivers'},
    const {'1': 'rooms', '3': 40, '4': 3, '5': 11, '6': '.model.Reservation.Room', '10': 'rooms'},
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
final $typed_data.Uint8List reservationDescriptor = $convert.base64Decode('CgtSZXNlcnZhdGlvbhIOCgJpZBgBIAEoBFICaWQSFwoHdHJpcF9pZBgKIAEoBFIGdHJpcElkEhkKCGRpdmVyX2lkGBQgASgEUgdkaXZlcklkEhQKBXByaWNlGB4gASgCUgVwcmljZRIhCgx0b3RhbF9kaXZlcnMYIyABKARSC3RvdGFsRGl2ZXJzEi0KBXJvb21zGCggAygLMhcubW9kZWwuUmVzZXJ2YXRpb24uUm9vbVIFcm9vbXMSPwoKY3JlYXRlZF9hdBgyIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVkX2F0GDwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZEF0GnEKBFJvb20SDgoCaWQYASABKARSAmlkEiAKDHJvb21fdHlwZV9pZBgKIAEoBFIKcm9vbVR5cGVJZBIbCglub19kaXZlcnMYFCABKA1SCG5vRGl2ZXJzEhoKCHF1YW50aXR5GCggASgNUghxdWFudGl0eQ==');
@$core.Deprecated('Use reservationRoomDescriptor instead')
const ReservationRoom$json = const {
  '1': 'ReservationRoom',
  '2': const [
    const {'1': 'reservation_id', '3': 1, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'room_type_id', '3': 10, '4': 1, '5': 4, '10': 'roomTypeId'},
    const {'1': 'trip_id', '3': 15, '4': 1, '5': 4, '10': 'tripId'},
    const {'1': 'no_divers', '3': 20, '4': 1, '5': 13, '10': 'noDivers'},
    const {'1': 'quantity', '3': 40, '4': 1, '5': 13, '10': 'quantity'},
  ],
};

/// Descriptor for `ReservationRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reservationRoomDescriptor = $convert.base64Decode('Cg9SZXNlcnZhdGlvblJvb20SJQoOcmVzZXJ2YXRpb25faWQYASABKARSDXJlc2VydmF0aW9uSWQSIAoMcm9vbV90eXBlX2lkGAogASgEUgpyb29tVHlwZUlkEhcKB3RyaXBfaWQYDyABKARSBnRyaXBJZBIbCglub19kaXZlcnMYFCABKA1SCG5vRGl2ZXJzEhoKCHF1YW50aXR5GCggASgNUghxdWFudGl0eQ==');
@$core.Deprecated('Use roomTypeTripPriceDescriptor instead')
const RoomTypeTripPrice$json = const {
  '1': 'RoomTypeTripPrice',
  '2': const [
    const {'1': 'hotel_id', '3': 1, '4': 1, '5': 4, '10': 'hotelId'},
    const {'1': 'liveaboard_id', '3': 2, '4': 1, '5': 4, '10': 'liveaboardId'},
    const {'1': 'room_type_id', '3': 10, '4': 1, '5': 4, '10': 'roomTypeId'},
    const {'1': 'price', '3': 20, '4': 1, '5': 2, '10': 'price'},
  ],
};

/// Descriptor for `RoomTypeTripPrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomTypeTripPriceDescriptor = $convert.base64Decode('ChFSb29tVHlwZVRyaXBQcmljZRIZCghob3RlbF9pZBgBIAEoBFIHaG90ZWxJZBIjCg1saXZlYWJvYXJkX2lkGAIgASgEUgxsaXZlYWJvYXJkSWQSIAoMcm9vbV90eXBlX2lkGAogASgEUgpyb29tVHlwZUlkEhQKBXByaWNlGBQgASgCUgVwcmljZQ==');
