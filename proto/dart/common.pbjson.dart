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
@$core.Deprecated('Use levelDescriptor instead')
const Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'INSTRUCTOR', '2': 0},
    const {'1': 'MASTER', '2': 1},
    const {'1': 'RESCUE', '2': 2},
    const {'1': 'ADVANCED', '2': 3},
    const {'1': 'OPEN', '2': 4},
  ],
};

/// Descriptor for `Level`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List levelDescriptor = $convert.base64Decode('CgVMZXZlbBIOCgpJTlNUUlVDVE9SEAASCgoGTUFTVEVSEAESCgoGUkVTQ1VFEAISDAoIQURWQU5DRUQQAxIICgRPUEVOEAQ=');
