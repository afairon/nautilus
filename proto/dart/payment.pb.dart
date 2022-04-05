///
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
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

class UpdatePaymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePaymentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'payment'), createEmptyInstance: create)
    ..aOM<$12.Payment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payment', subBuilder: $12.Payment.create)
    ..hasRequiredFields = false
  ;

  UpdatePaymentRequest._() : super();
  factory UpdatePaymentRequest({
    $12.Payment? payment,
  }) {
    final _result = create();
    if (payment != null) {
      _result.payment = payment;
    }
    return _result;
  }
  factory UpdatePaymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePaymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePaymentRequest clone() => UpdatePaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePaymentRequest copyWith(void Function(UpdatePaymentRequest) updates) => super.copyWith((message) => updates(message as UpdatePaymentRequest)) as UpdatePaymentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePaymentRequest create() => UpdatePaymentRequest._();
  UpdatePaymentRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePaymentRequest> createRepeated() => $pb.PbList<UpdatePaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePaymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePaymentRequest>(create);
  static UpdatePaymentRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $12.Payment get payment => $_getN(0);
  @$pb.TagNumber(10)
  set payment($12.Payment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPayment() => $_has(0);
  @$pb.TagNumber(10)
  void clearPayment() => clearField(10);
  @$pb.TagNumber(10)
  $12.Payment ensurePayment() => $_ensure(0);
}

class UpdatePaymentStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePaymentStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'payment'), createEmptyInstance: create)
    ..aOM<$12.Payment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payment', subBuilder: $12.Payment.create)
    ..hasRequiredFields = false
  ;

  UpdatePaymentStatusRequest._() : super();
  factory UpdatePaymentStatusRequest({
    $12.Payment? payment,
  }) {
    final _result = create();
    if (payment != null) {
      _result.payment = payment;
    }
    return _result;
  }
  factory UpdatePaymentStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePaymentStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePaymentStatusRequest clone() => UpdatePaymentStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePaymentStatusRequest copyWith(void Function(UpdatePaymentStatusRequest) updates) => super.copyWith((message) => updates(message as UpdatePaymentStatusRequest)) as UpdatePaymentStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePaymentStatusRequest create() => UpdatePaymentStatusRequest._();
  UpdatePaymentStatusRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePaymentStatusRequest> createRepeated() => $pb.PbList<UpdatePaymentStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePaymentStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePaymentStatusRequest>(create);
  static UpdatePaymentStatusRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $12.Payment get payment => $_getN(0);
  @$pb.TagNumber(10)
  set payment($12.Payment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPayment() => $_has(0);
  @$pb.TagNumber(10)
  void clearPayment() => clearField(10);
  @$pb.TagNumber(10)
  $12.Payment ensurePayment() => $_ensure(0);
}

class GetPaymentByReservationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPaymentByReservationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'payment'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservationId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetPaymentByReservationRequest._() : super();
  factory GetPaymentByReservationRequest({
    $fixnum.Int64? reservationId,
  }) {
    final _result = create();
    if (reservationId != null) {
      _result.reservationId = reservationId;
    }
    return _result;
  }
  factory GetPaymentByReservationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPaymentByReservationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPaymentByReservationRequest clone() => GetPaymentByReservationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPaymentByReservationRequest copyWith(void Function(GetPaymentByReservationRequest) updates) => super.copyWith((message) => updates(message as GetPaymentByReservationRequest)) as GetPaymentByReservationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPaymentByReservationRequest create() => GetPaymentByReservationRequest._();
  GetPaymentByReservationRequest createEmptyInstance() => create();
  static $pb.PbList<GetPaymentByReservationRequest> createRepeated() => $pb.PbList<GetPaymentByReservationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPaymentByReservationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPaymentByReservationRequest>(create);
  static GetPaymentByReservationRequest? _defaultInstance;

  @$pb.TagNumber(20)
  $fixnum.Int64 get reservationId => $_getI64(0);
  @$pb.TagNumber(20)
  set reservationId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(20)
  $core.bool hasReservationId() => $_has(0);
  @$pb.TagNumber(20)
  void clearReservationId() => clearField(20);
}

class GetPaymentByReservationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPaymentByReservationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'payment'), createEmptyInstance: create)
    ..aOM<$12.Payment>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payment', subBuilder: $12.Payment.create)
    ..hasRequiredFields = false
  ;

  GetPaymentByReservationResponse._() : super();
  factory GetPaymentByReservationResponse({
    $12.Payment? payment,
  }) {
    final _result = create();
    if (payment != null) {
      _result.payment = payment;
    }
    return _result;
  }
  factory GetPaymentByReservationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPaymentByReservationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPaymentByReservationResponse clone() => GetPaymentByReservationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPaymentByReservationResponse copyWith(void Function(GetPaymentByReservationResponse) updates) => super.copyWith((message) => updates(message as GetPaymentByReservationResponse)) as GetPaymentByReservationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPaymentByReservationResponse create() => GetPaymentByReservationResponse._();
  GetPaymentByReservationResponse createEmptyInstance() => create();
  static $pb.PbList<GetPaymentByReservationResponse> createRepeated() => $pb.PbList<GetPaymentByReservationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPaymentByReservationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPaymentByReservationResponse>(create);
  static GetPaymentByReservationResponse? _defaultInstance;

  @$pb.TagNumber(10)
  $12.Payment get payment => $_getN(0);
  @$pb.TagNumber(10)
  set payment($12.Payment v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPayment() => $_has(0);
  @$pb.TagNumber(10)
  void clearPayment() => clearField(10);
  @$pb.TagNumber(10)
  $12.Payment ensurePayment() => $_ensure(0);
}

