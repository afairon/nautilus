///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use diverDescriptor instead')
const Diver$json = const {
  '1': 'Diver',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'phone_number', '3': 3, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'front_link', '3': 4, '4': 1, '5': 9, '10': 'frontLink'},
    const {'1': 'back_link', '3': 5, '4': 1, '5': 9, '10': 'backLink'},
    const {'1': 'front_image', '3': 6, '4': 1, '5': 12, '10': 'frontImage'},
    const {'1': 'back_image', '3': 7, '4': 1, '5': 12, '10': 'backImage'},
    const {'1': 'birth_date', '3': 8, '4': 1, '5': 13, '10': 'birthDate'},
    const {'1': 'level', '3': 9, '4': 1, '5': 14, '6': '.common.LevelType', '10': 'level'},
  ],
};

/// Descriptor for `Diver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diverDescriptor = $convert.base64Decode('CgVEaXZlchIdCgpmaXJzdF9uYW1lGAEgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAIgASgJUghsYXN0TmFtZRIhCgxwaG9uZV9udW1iZXIYAyABKAlSC3Bob25lTnVtYmVyEh0KCmZyb250X2xpbmsYBCABKAlSCWZyb250TGluaxIbCgliYWNrX2xpbmsYBSABKAlSCGJhY2tMaW5rEh8KC2Zyb250X2ltYWdlGAYgASgMUgpmcm9udEltYWdlEh0KCmJhY2tfaW1hZ2UYByABKAxSCWJhY2tJbWFnZRIdCgpiaXJ0aF9kYXRlGAggASgNUgliaXJ0aERhdGUSJwoFbGV2ZWwYCSABKA4yES5jb21tb24uTGV2ZWxUeXBlUgVsZXZlbA==');
@$core.Deprecated('Use diverRequestDescriptor instead')
const DiverRequest$json = const {
  '1': 'DiverRequest',
  '2': const [
    const {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 20, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'phone_number', '3': 30, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'documents', '3': 40, '4': 3, '5': 11, '6': '.common.FileTransfer', '10': 'documents'},
    const {'1': 'birth_date', '3': 80, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'birthDate'},
    const {'1': 'level', '3': 90, '4': 1, '5': 14, '6': '.common.LevelType', '10': 'level'},
  ],
};

/// Descriptor for `DiverRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diverRequestDescriptor = $convert.base64Decode('CgxEaXZlclJlcXVlc3QSHQoKZmlyc3RfbmFtZRgBIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgUIAEoCVIIbGFzdE5hbWUSIQoMcGhvbmVfbnVtYmVyGB4gASgJUgtwaG9uZU51bWJlchIyCglkb2N1bWVudHMYKCADKAsyFC5jb21tb24uRmlsZVRyYW5zZmVyUglkb2N1bWVudHMSPwoKYmlydGhfZGF0ZRhQIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCBJDfHwFSCWJpcnRoRGF0ZRInCgVsZXZlbBhaIAEoDjIRLmNvbW1vbi5MZXZlbFR5cGVSBWxldmVs');
