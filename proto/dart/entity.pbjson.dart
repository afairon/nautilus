///
//  Generated code. Do not modify.
//  source: entity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountDescriptor instead')
const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'email'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'password'},
    const {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'updatedAt'},
    const {'1': 'type', '3': 6, '4': 1, '5': 14, '6': '.common.AccountType', '8': const {}, '10': 'type'},
    const {'1': 'activated', '3': 7, '4': 1, '5': 8, '8': const {}, '10': 'activated'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode('CgdBY2NvdW50EiQKBWVtYWlsGAEgASgJQg7y3h8KZGI6ImVtYWlsIlIFZW1haWwSLQoIdXNlcm5hbWUYAiABKAlCEfLeHw1kYjoidXNlcm5hbWUiUgh1c2VybmFtZRItCghwYXNzd29yZBgDIAEoCUIR8t4fDWRiOiJwYXNzd29yZCJSCHBhc3N3b3JkElIKCmNyZWF0ZWRfYXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQheQ3x8B8t4fD2RiOiJjcmVhdGVkX2F0IlIJY3JlYXRlZEF0ElIKCnVwZGF0ZWRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQheQ3x8B8t4fD2RiOiJ1cGRhdGVkX2F0IlIJdXBkYXRlZEF0EjYKBHR5cGUYBiABKA4yEy5jb21tb24uQWNjb3VudFR5cGVCDfLeHwlkYjoidHlwZSJSBHR5cGUSMAoJYWN0aXZhdGVkGAcgASgIQhLy3h8OZGI6ImFjdGl2YXRlZCJSCWFjdGl2YXRlZA==');
