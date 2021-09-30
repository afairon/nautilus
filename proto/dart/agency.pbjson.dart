///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use agencyRequestDescriptor instead')
const AgencyRequest$json = const {
  '1': 'AgencyRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'phone_number', '3': 20, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'address', '3': 30, '4': 1, '5': 11, '6': '.common.Address', '10': 'address'},
    const {'1': 'documents', '3': 40, '4': 3, '5': 11, '6': '.common.FileTransfer', '10': 'documents'},
  ],
};

/// Descriptor for `AgencyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agencyRequestDescriptor = $convert.base64Decode('Cg1BZ2VuY3lSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIQoMcGhvbmVfbnVtYmVyGBQgASgJUgtwaG9uZU51bWJlchIpCgdhZGRyZXNzGB4gASgLMg8uY29tbW9uLkFkZHJlc3NSB2FkZHJlc3MSMgoJZG9jdW1lbnRzGCggAygLMhQuY29tbW9uLkZpbGVUcmFuc2ZlclIJZG9jdW1lbnRz');
