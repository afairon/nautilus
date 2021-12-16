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
    const {'1': 'type', '3': 40, '4': 1, '5': 14, '6': '.model.AccountType', '10': 'type'},
    const {'1': 'verified', '3': 50, '4': 1, '5': 8, '10': 'verified'},
    const {'1': 'active', '3': 60, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'created_on', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode('CgdBY2NvdW50Eg4KAmlkGAEgASgEUgJpZBIaCgh1c2VybmFtZRgKIAEoCVIIdXNlcm5hbWUSFAoFZW1haWwYFCABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGB4gASgJUghwYXNzd29yZBImCgR0eXBlGCggASgOMhIubW9kZWwuQWNjb3VudFR5cGVSBHR5cGUSGgoIdmVyaWZpZWQYMiABKAhSCHZlcmlmaWVkEhYKBmFjdGl2ZRg8IAEoCFIGYWN0aXZlEj8KCmNyZWF0ZWRfb24YRiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkT24SPwoKdXBkYXRlZF9vbhhQIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRPbg==');
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
    const {'1': 'created_on', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `Address`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressDescriptor = $convert.base64Decode('CgdBZGRyZXNzEg4KAmlkGAEgASgEUgJpZBIkCg5hZGRyZXNzX2xpbmVfMRgKIAEoCVIMYWRkcmVzc0xpbmUxEiQKDmFkZHJlc3NfbGluZV8yGBQgASgJUgxhZGRyZXNzTGluZTISEgoEY2l0eRgeIAEoCVIEY2l0eRIaCghwb3N0Y29kZRgoIAEoCVIIcG9zdGNvZGUSFgoGcmVnaW9uGDIgASgJUgZyZWdpb24SGAoHY291bnRyeRg8IAEoCVIHY291bnRyeRI/CgpjcmVhdGVkX29uGEYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZE9uEj8KCnVwZGF0ZWRfb24YUCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkT24=');
@$core.Deprecated('Use agencyDescriptor instead')
const Agency$json = const {
  '1': 'Agency',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 10, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'phone', '3': 20, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'account', '3': 30, '4': 1, '5': 11, '6': '.model.Account', '10': 'account'},
    const {'1': 'address', '3': 40, '4': 1, '5': 11, '6': '.model.Address', '8': const {}, '10': 'address'},
    const {'1': 'documents', '3': 50, '4': 3, '5': 11, '6': '.model.File', '8': const {}, '10': 'documents'},
    const {'1': 'created_on', '3': 60, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 70, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `Agency`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agencyDescriptor = $convert.base64Decode('CgZBZ2VuY3kSDgoCaWQYASABKARSAmlkEhIKBG5hbWUYCiABKAlSBG5hbWUSFAoFcGhvbmUYFCABKAlSBXBob25lEigKB2FjY291bnQYHiABKAsyDi5tb2RlbC5BY2NvdW50UgdhY2NvdW50Ei4KB2FkZHJlc3MYKCABKAsyDi5tb2RlbC5BZGRyZXNzQgTI3h8AUgdhZGRyZXNzEi8KCWRvY3VtZW50cxgyIAMoCzILLm1vZGVsLkZpbGVCBMjeHwBSCWRvY3VtZW50cxI/CgpjcmVhdGVkX29uGDwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJY3JlYXRlZE9uEj8KCnVwZGF0ZWRfb24YRiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgl1cGRhdGVkT24=');
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
    const {'1': 'created_on', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 90, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `Diver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diverDescriptor = $convert.base64Decode('CgVEaXZlchIOCgJpZBgBIAEoBFICaWQSHQoKZmlyc3RfbmFtZRgKIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgUIAEoCVIIbGFzdE5hbWUSFAoFcGhvbmUYHiABKAlSBXBob25lEkMKCmJpcnRoX2RhdGUYKCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgiQ3x8ByN4fAFIJYmlydGhEYXRlEiYKBWxldmVsGDIgASgOMhAubW9kZWwuTGV2ZWxUeXBlUgVsZXZlbBIoCgdhY2NvdW50GDwgASgLMg4ubW9kZWwuQWNjb3VudFIHYWNjb3VudBIvCglkb2N1bWVudHMYRiADKAsyCy5tb2RlbC5GaWxlQgTI3h8AUglkb2N1bWVudHMSPwoKY3JlYXRlZF9vbhhQIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRPbhI/Cgp1cGRhdGVkX29uGFogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZE9u');
@$core.Deprecated('Use tripCommentDescriptor instead')
const TripComment$json = const {
  '1': 'TripComment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'stars', '3': 20, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'reservation_id', '3': 30, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'created_on', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `TripComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripCommentDescriptor = $convert.base64Decode('CgtUcmlwQ29tbWVudBIOCgJpZBgBIAEoBFICaWQSGAoHY29tbWVudBgKIAEoCVIHY29tbWVudBIUCgVzdGFycxgUIAEoDVIFc3RhcnMSJQoOcmVzZXJ2YXRpb25faWQYHiABKARSDXJlc2VydmF0aW9uSWQSPwoKY3JlYXRlZF9vbhgoIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRPbhI/Cgp1cGRhdGVkX29uGDIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZE9u');
@$core.Deprecated('Use hotelCommentDescriptor instead')
const HotelComment$json = const {
  '1': 'HotelComment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'stars', '3': 20, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'reservation_id', '3': 30, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'created_on', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `HotelComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotelCommentDescriptor = $convert.base64Decode('CgxIb3RlbENvbW1lbnQSDgoCaWQYASABKARSAmlkEhgKB2NvbW1lbnQYCiABKAlSB2NvbW1lbnQSFAoFc3RhcnMYFCABKA1SBXN0YXJzEiUKDnJlc2VydmF0aW9uX2lkGB4gASgEUg1yZXNlcnZhdGlvbklkEj8KCmNyZWF0ZWRfb24YKCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgljcmVhdGVkT24SPwoKdXBkYXRlZF9vbhgyIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCXVwZGF0ZWRPbg==');
@$core.Deprecated('Use liveaboardCommentDescriptor instead')
const LiveaboardComment$json = const {
  '1': 'LiveaboardComment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'stars', '3': 20, '4': 1, '5': 13, '10': 'stars'},
    const {'1': 'reservation_id', '3': 30, '4': 1, '5': 4, '10': 'reservationId'},
    const {'1': 'created_on', '3': 40, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdOn'},
    const {'1': 'updated_on', '3': 50, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedOn'},
  ],
};

/// Descriptor for `LiveaboardComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveaboardCommentDescriptor = $convert.base64Decode('ChFMaXZlYWJvYXJkQ29tbWVudBIOCgJpZBgBIAEoBFICaWQSGAoHY29tbWVudBgKIAEoCVIHY29tbWVudBIUCgVzdGFycxgUIAEoDVIFc3RhcnMSJQoOcmVzZXJ2YXRpb25faWQYHiABKARSDXJlc2VydmF0aW9uSWQSPwoKY3JlYXRlZF9vbhgoIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWNyZWF0ZWRPbhI/Cgp1cGRhdGVkX29uGDIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIJdXBkYXRlZE9u');
