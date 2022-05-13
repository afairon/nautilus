///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reservation.pb.dart' as $10;
export 'reservation.pb.dart';

class ReservationServiceClient extends $grpc.Client {
  static final _$createReservation = $grpc.ClientMethod<
          $10.CreateReservationRequest, $10.CreateReservationResponse>(
      '/reservation.ReservationService/CreateReservation',
      ($10.CreateReservationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $10.CreateReservationResponse.fromBuffer(value));
  static final _$getReservation =
      $grpc.ClientMethod<$10.GetReservationRequest, $10.GetReservationResponse>(
          '/reservation.ReservationService/GetReservation',
          ($10.GetReservationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.GetReservationResponse.fromBuffer(value));

  ReservationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateReservationResponse> createReservation(
      $10.CreateReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReservation, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetReservationResponse> getReservation(
      $10.GetReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReservation, request, options: options);
  }
}

abstract class ReservationServiceBase extends $grpc.Service {
  $core.String get $name => 'reservation.ReservationService';

  ReservationServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateReservationRequest,
            $10.CreateReservationResponse>(
        'CreateReservation',
        createReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.CreateReservationRequest.fromBuffer(value),
        ($10.CreateReservationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetReservationRequest,
            $10.GetReservationResponse>(
        'GetReservation',
        getReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.GetReservationRequest.fromBuffer(value),
        ($10.GetReservationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateReservationResponse> createReservation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.CreateReservationRequest> request) async {
    return createReservation(call, await request);
  }

  $async.Future<$10.GetReservationResponse> getReservation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.GetReservationRequest> request) async {
    return getReservation(call, await request);
  }

  $async.Future<$10.CreateReservationResponse> createReservation(
      $grpc.ServiceCall call, $10.CreateReservationRequest request);
  $async.Future<$10.GetReservationResponse> getReservation(
      $grpc.ServiceCall call, $10.GetReservationRequest request);
}
