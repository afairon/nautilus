///
//  Generated code. Do not modify.
//  source: common.proto
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
@$core.Deprecated('Use addressDescriptor instead')
const Address$json = const {
  '1': 'Address',
  '2': const [
    const {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'region', '3': 2, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'addres_line_1', '3': 4, '4': 1, '5': 9, '10': 'addresLine1'},
    const {'1': 'addres_line_2', '3': 5, '4': 1, '5': 9, '10': 'addresLine2'},
    const {'1': 'postal_code', '3': 6, '4': 1, '5': 9, '10': 'postalCode'},
  ],
};

/// Descriptor for `Address`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressDescriptor = $convert.base64Decode('CgdBZGRyZXNzEhgKB2NvdW50cnkYASABKAlSB2NvdW50cnkSFgoGcmVnaW9uGAIgASgJUgZyZWdpb24SEgoEY2l0eRgDIAEoCVIEY2l0eRIiCg1hZGRyZXNfbGluZV8xGAQgASgJUgthZGRyZXNMaW5lMRIiCg1hZGRyZXNfbGluZV8yGAUgASgJUgthZGRyZXNMaW5lMhIfCgtwb3N0YWxfY29kZRgGIAEoCVIKcG9zdGFsQ29kZQ==');
@$core.Deprecated('Use fileTransferDescriptor instead')
const FileTransfer$json = const {
  '1': 'FileTransfer',
  '2': const [
    const {'1': 'filename', '3': 1, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'file', '3': 10, '4': 1, '5': 12, '10': 'file'},
  ],
};

/// Descriptor for `FileTransfer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileTransferDescriptor = $convert.base64Decode('CgxGaWxlVHJhbnNmZXISGgoIZmlsZW5hbWUYASABKAlSCGZpbGVuYW1lEhIKBGZpbGUYCiABKAxSBGZpbGU=');
