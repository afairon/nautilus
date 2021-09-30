///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountRequestDescriptor instead')
const AccountRequest$json = const {
  '1': 'AccountRequest',
  '2': const [
    const {'1': 'diver', '3': 1, '4': 1, '5': 11, '6': '.diver.DiverRequest', '9': 0, '10': 'diver'},
    const {'1': 'agency', '3': 5, '4': 1, '5': 11, '6': '.agency.AgencyRequest', '9': 0, '10': 'agency'},
    const {'1': 'email', '3': 10, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'username', '3': 11, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 12, '4': 1, '5': 9, '10': 'password'},
  ],
  '8': const [
    const {'1': 'kind'},
  ],
};

/// Descriptor for `AccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountRequestDescriptor = $convert.base64Decode('Cg5BY2NvdW50UmVxdWVzdBIrCgVkaXZlchgBIAEoCzITLmRpdmVyLkRpdmVyUmVxdWVzdEgAUgVkaXZlchIvCgZhZ2VuY3kYBSABKAsyFS5hZ2VuY3kuQWdlbmN5UmVxdWVzdEgAUgZhZ2VuY3kSFAoFZW1haWwYCiABKAlSBWVtYWlsEhoKCHVzZXJuYW1lGAsgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgMIAEoCVIIcGFzc3dvcmRCBgoEa2luZA==');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
