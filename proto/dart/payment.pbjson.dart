///
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use makePaymentRequestDescriptor instead')
const MakePaymentRequest$json = const {
  '1': 'MakePaymentRequest',
  '2': const [
    const {'1': 'payment', '3': 1, '4': 1, '5': 11, '6': '.model.Payment', '10': 'payment'},
  ],
};

/// Descriptor for `MakePaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List makePaymentRequestDescriptor = $convert.base64Decode('ChJNYWtlUGF5bWVudFJlcXVlc3QSKAoHcGF5bWVudBgBIAEoCzIOLm1vZGVsLlBheW1lbnRSB3BheW1lbnQ=');
@$core.Deprecated('Use updatePaymentRequestDescriptor instead')
const UpdatePaymentRequest$json = const {
  '1': 'UpdatePaymentRequest',
  '2': const [
    const {'1': 'payment', '3': 10, '4': 1, '5': 11, '6': '.model.Payment', '10': 'payment'},
  ],
};

/// Descriptor for `UpdatePaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePaymentRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVQYXltZW50UmVxdWVzdBIoCgdwYXltZW50GAogASgLMg4ubW9kZWwuUGF5bWVudFIHcGF5bWVudA==');
@$core.Deprecated('Use updatePaymentStatusRequestDescriptor instead')
const UpdatePaymentStatusRequest$json = const {
  '1': 'UpdatePaymentStatusRequest',
  '2': const [
    const {'1': 'payment', '3': 10, '4': 1, '5': 11, '6': '.model.Payment', '10': 'payment'},
  ],
};

/// Descriptor for `UpdatePaymentStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePaymentStatusRequestDescriptor = $convert.base64Decode('ChpVcGRhdGVQYXltZW50U3RhdHVzUmVxdWVzdBIoCgdwYXltZW50GAogASgLMg4ubW9kZWwuUGF5bWVudFIHcGF5bWVudA==');
@$core.Deprecated('Use getPaymentByReservationRequestDescriptor instead')
const GetPaymentByReservationRequest$json = const {
  '1': 'GetPaymentByReservationRequest',
  '2': const [
    const {'1': 'reservation_id', '3': 20, '4': 1, '5': 4, '10': 'reservationId'},
  ],
};

/// Descriptor for `GetPaymentByReservationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPaymentByReservationRequestDescriptor = $convert.base64Decode('Ch5HZXRQYXltZW50QnlSZXNlcnZhdGlvblJlcXVlc3QSJQoOcmVzZXJ2YXRpb25faWQYFCABKARSDXJlc2VydmF0aW9uSWQ=');
@$core.Deprecated('Use getPaymentByReservationResponseDescriptor instead')
const GetPaymentByReservationResponse$json = const {
  '1': 'GetPaymentByReservationResponse',
  '2': const [
    const {'1': 'payment', '3': 10, '4': 1, '5': 11, '6': '.model.Payment', '10': 'payment'},
  ],
};

/// Descriptor for `GetPaymentByReservationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPaymentByReservationResponseDescriptor = $convert.base64Decode('Ch9HZXRQYXltZW50QnlSZXNlcnZhdGlvblJlc3BvbnNlEigKB3BheW1lbnQYCiABKAsyDi5tb2RlbC5QYXltZW50UgdwYXltZW50');
