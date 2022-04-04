///
//  Generated code. Do not modify.
//  source: amenity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listAmenitiesRequestDescriptor instead')
const ListAmenitiesRequest$json = const {
  '1': 'ListAmenitiesRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 4, '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 4, '10': 'offset'},
  ],
};

/// Descriptor for `ListAmenitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAmenitiesRequestDescriptor = $convert.base64Decode('ChRMaXN0QW1lbml0aWVzUmVxdWVzdBIUCgVsaW1pdBgBIAEoBFIFbGltaXQSFgoGb2Zmc2V0GAIgASgEUgZvZmZzZXQ=');
@$core.Deprecated('Use listAmenitiesResponseDescriptor instead')
const ListAmenitiesResponse$json = const {
  '1': 'ListAmenitiesResponse',
  '2': const [
    const {'1': 'amenities', '3': 1, '4': 1, '5': 11, '6': '.model.Amenity', '10': 'amenities'},
  ],
};

/// Descriptor for `ListAmenitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAmenitiesResponseDescriptor = $convert.base64Decode('ChVMaXN0QW1lbml0aWVzUmVzcG9uc2USLAoJYW1lbml0aWVzGAEgASgLMg4ubW9kZWwuQW1lbml0eVIJYW1lbml0aWVz');
