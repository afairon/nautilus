///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createCommentRequestDescriptor instead')
const CreateCommentRequest$json = const {
  '1': 'CreateCommentRequest',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripComment', '9': 0, '10': 'trip'},
    const {'1': 'hotel', '3': 5, '4': 1, '5': 11, '6': '.model.HotelComment', '9': 0, '10': 'hotel'},
    const {'1': 'liveaboard', '3': 10, '4': 1, '5': 11, '6': '.model.LiveaboardComment', '9': 0, '10': 'liveaboard'},
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

/// Descriptor for `CreateCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCommentRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVDb21tZW50UmVxdWVzdBIoCgR0cmlwGAEgASgLMhIubW9kZWwuVHJpcENvbW1lbnRIAFIEdHJpcBIrCgVob3RlbBgFIAEoCzITLm1vZGVsLkhvdGVsQ29tbWVudEgAUgVob3RlbBI6CgpsaXZlYWJvYXJkGAogASgLMhgubW9kZWwuTGl2ZWFib2FyZENvbW1lbnRIAFIKbGl2ZWFib2FyZEIGCgR0eXBl');
@$core.Deprecated('Use createCommentResponseDescriptor instead')
const CreateCommentResponse$json = const {
  '1': 'CreateCommentResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripComment', '9': 0, '10': 'trip'},
    const {'1': 'hotel', '3': 5, '4': 1, '5': 11, '6': '.model.HotelComment', '9': 0, '10': 'hotel'},
    const {'1': 'liveaboard', '3': 10, '4': 1, '5': 11, '6': '.model.LiveaboardComment', '9': 0, '10': 'liveaboard'},
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

/// Descriptor for `CreateCommentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCommentResponseDescriptor = $convert.base64Decode('ChVDcmVhdGVDb21tZW50UmVzcG9uc2USKAoEdHJpcBgBIAEoCzISLm1vZGVsLlRyaXBDb21tZW50SABSBHRyaXASKwoFaG90ZWwYBSABKAsyEy5tb2RlbC5Ib3RlbENvbW1lbnRIAFIFaG90ZWwSOgoKbGl2ZWFib2FyZBgKIAEoCzIYLm1vZGVsLkxpdmVhYm9hcmRDb21tZW50SABSCmxpdmVhYm9hcmRCBgoEdHlwZQ==');
@$core.Deprecated('Use getCommentRequestDescriptor instead')
const GetCommentRequest$json = const {
  '1': 'GetCommentRequest',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.comment.GetCommentRequest.Trip', '9': 0, '10': 'trip'},
    const {'1': 'hotel', '3': 5, '4': 1, '5': 11, '6': '.comment.GetCommentRequest.Hotel', '9': 0, '10': 'hotel'},
    const {'1': 'liveaboard', '3': 10, '4': 1, '5': 11, '6': '.comment.GetCommentRequest.Liveaboard', '9': 0, '10': 'liveaboard'},
  ],
  '3': const [GetCommentRequest_Trip$json, GetCommentRequest_Hotel$json, GetCommentRequest_Liveaboard$json],
  '8': const [
    const {'1': 'type'},
  ],
};

@$core.Deprecated('Use getCommentRequestDescriptor instead')
const GetCommentRequest_Trip$json = const {
  '1': 'Trip',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

@$core.Deprecated('Use getCommentRequestDescriptor instead')
const GetCommentRequest_Hotel$json = const {
  '1': 'Hotel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

@$core.Deprecated('Use getCommentRequestDescriptor instead')
const GetCommentRequest_Liveaboard$json = const {
  '1': 'Liveaboard',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `GetCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCommentRequestDescriptor = $convert.base64Decode('ChFHZXRDb21tZW50UmVxdWVzdBI1CgR0cmlwGAEgASgLMh8uY29tbWVudC5HZXRDb21tZW50UmVxdWVzdC5UcmlwSABSBHRyaXASOAoFaG90ZWwYBSABKAsyIC5jb21tZW50LkdldENvbW1lbnRSZXF1ZXN0LkhvdGVsSABSBWhvdGVsEkcKCmxpdmVhYm9hcmQYCiABKAsyJS5jb21tZW50LkdldENvbW1lbnRSZXF1ZXN0LkxpdmVhYm9hcmRIAFIKbGl2ZWFib2FyZBoWCgRUcmlwEg4KAmlkGAEgASgEUgJpZBoXCgVIb3RlbBIOCgJpZBgBIAEoBFICaWQaHAoKTGl2ZWFib2FyZBIOCgJpZBgBIAEoBFICaWRCBgoEdHlwZQ==');
@$core.Deprecated('Use getCommentResponseDescriptor instead')
const GetCommentResponse$json = const {
  '1': 'GetCommentResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.model.TripComment', '9': 0, '10': 'trip'},
    const {'1': 'hotel', '3': 5, '4': 1, '5': 11, '6': '.model.HotelComment', '9': 0, '10': 'hotel'},
    const {'1': 'liveaboard', '3': 10, '4': 1, '5': 11, '6': '.model.LiveaboardComment', '9': 0, '10': 'liveaboard'},
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

/// Descriptor for `GetCommentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCommentResponseDescriptor = $convert.base64Decode('ChJHZXRDb21tZW50UmVzcG9uc2USKAoEdHJpcBgBIAEoCzISLm1vZGVsLlRyaXBDb21tZW50SABSBHRyaXASKwoFaG90ZWwYBSABKAsyEy5tb2RlbC5Ib3RlbENvbW1lbnRIAFIFaG90ZWwSOgoKbGl2ZWFib2FyZBgKIAEoCzIYLm1vZGVsLkxpdmVhYm9hcmRDb21tZW50SABSCmxpdmVhYm9hcmRCBgoEdHlwZQ==');
