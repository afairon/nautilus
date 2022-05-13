///
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'payment.pb.dart' as $9;
import 'google/protobuf/empty.pb.dart' as $1;
export 'payment.pb.dart';

class PaymentServiceClient extends $grpc.Client {
  static final _$makePayment =
      $grpc.ClientMethod<$9.MakePaymentRequest, $1.Empty>(
          '/payment.PaymentService/MakePayment',
          ($9.MakePaymentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getPaymentByReservation = $grpc.ClientMethod<
          $9.GetPaymentByReservationRequest,
          $9.GetPaymentByReservationResponse>(
      '/payment.PaymentService/GetPaymentByReservation',
      ($9.GetPaymentByReservationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.GetPaymentByReservationResponse.fromBuffer(value));
  static final _$updatePaymentSlip =
      $grpc.ClientMethod<$9.UpdatePaymentRequest, $1.Empty>(
          '/payment.PaymentService/UpdatePaymentSlip',
          ($9.UpdatePaymentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$updatePaymentStatus =
      $grpc.ClientMethod<$9.UpdatePaymentStatusRequest, $1.Empty>(
          '/payment.PaymentService/UpdatePaymentStatus',
          ($9.UpdatePaymentStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  PaymentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> makePayment($9.MakePaymentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$makePayment, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetPaymentByReservationResponse>
      getPaymentByReservation($9.GetPaymentByReservationRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPaymentByReservation, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updatePaymentSlip(
      $9.UpdatePaymentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePaymentSlip, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updatePaymentStatus(
      $9.UpdatePaymentStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePaymentStatus, request, options: options);
  }
}

abstract class PaymentServiceBase extends $grpc.Service {
  $core.String get $name => 'payment.PaymentService';

  PaymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.MakePaymentRequest, $1.Empty>(
        'MakePayment',
        makePayment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.MakePaymentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetPaymentByReservationRequest,
            $9.GetPaymentByReservationResponse>(
        'GetPaymentByReservation',
        getPaymentByReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.GetPaymentByReservationRequest.fromBuffer(value),
        ($9.GetPaymentByReservationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdatePaymentRequest, $1.Empty>(
        'UpdatePaymentSlip',
        updatePaymentSlip_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UpdatePaymentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdatePaymentStatusRequest, $1.Empty>(
        'UpdatePaymentStatus',
        updatePaymentStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UpdatePaymentStatusRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> makePayment_Pre($grpc.ServiceCall call,
      $async.Future<$9.MakePaymentRequest> request) async {
    return makePayment(call, await request);
  }

  $async.Future<$9.GetPaymentByReservationResponse> getPaymentByReservation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.GetPaymentByReservationRequest> request) async {
    return getPaymentByReservation(call, await request);
  }

  $async.Future<$1.Empty> updatePaymentSlip_Pre($grpc.ServiceCall call,
      $async.Future<$9.UpdatePaymentRequest> request) async {
    return updatePaymentSlip(call, await request);
  }

  $async.Future<$1.Empty> updatePaymentStatus_Pre($grpc.ServiceCall call,
      $async.Future<$9.UpdatePaymentStatusRequest> request) async {
    return updatePaymentStatus(call, await request);
  }

  $async.Future<$1.Empty> makePayment(
      $grpc.ServiceCall call, $9.MakePaymentRequest request);
  $async.Future<$9.GetPaymentByReservationResponse> getPaymentByReservation(
      $grpc.ServiceCall call, $9.GetPaymentByReservationRequest request);
  $async.Future<$1.Empty> updatePaymentSlip(
      $grpc.ServiceCall call, $9.UpdatePaymentRequest request);
  $async.Future<$1.Empty> updatePaymentStatus(
      $grpc.ServiceCall call, $9.UpdatePaymentStatusRequest request);
}
