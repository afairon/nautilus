///
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $12;

class MakePaymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MakePaymentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'payment'), createEmptyInstance: create)
    ..aOM<$12.Payment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payment', subBuilder: $12.Payment.create)
    ..hasRequiredFields = false
  ;

  MakePaymentRequest._() : super();
  factory MakePaymentRequest({
    $12.Payment? payment,
  }) {
    final _result = create();
    if (payment != null) {
      _result.payment = payment;
    }
    return _result;
  }
  factory MakePaymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MakePaymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MakePaymentRequest clone() => MakePaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MakePaymentRequest copyWith(void Function(MakePaymentRequest) updates) => super.copyWith((message) => updates(message as MakePaymentRequest)) as MakePaymentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MakePaymentRequest create() => MakePaymentRequest._();
  MakePaymentRequest createEmptyInstance() => create();
  static $pb.PbList<MakePaymentRequest> createRepeated() => $pb.PbList<MakePaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static MakePaymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MakePaymentRequest>(create);
  static MakePaymentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Payment get payment => $_getN(0);
  @$pb.TagNumber(1)
  set payment($12.Payment v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayment() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayment() => clearField(1);
  @$pb.TagNumber(1)
  $12.Payment ensurePayment() => $_ensure(0);
}

