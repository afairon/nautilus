///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reservation.pb.dart' as $8;
export 'reservation.pb.dart';

class ReservationServiceClient extends $grpc.Client {
  static final _$createReservation = $grpc.ClientMethod<
          $8.CreateReservationRequest, $8.CreateReservationResponse>(
      '/reservation.ReservationService/CreateReservation',
      ($8.CreateReservationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.CreateReservationResponse.fromBuffer(value));
  static final _$getReservation =
      $grpc.ClientMethod<$8.GetReservationRequest, $8.Reservation>(
          '/reservation.ReservationService/GetReservation',
          ($8.GetReservationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $8.Reservation.fromBuffer(value));

  ReservationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateReservationResponse> createReservation(
      $8.CreateReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReservation, request, options: options);
  }

  $grpc.ResponseFuture<$8.Reservation> getReservation(
      $8.GetReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReservation, request, options: options);
  }
}

abstract class ReservationServiceBase extends $grpc.Service {
  $core.String get $name => 'reservation.ReservationService';

  ReservationServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateReservationRequest,
            $8.CreateReservationResponse>(
        'CreateReservation',
        createReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.CreateReservationRequest.fromBuffer(value),
        ($8.CreateReservationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetReservationRequest, $8.Reservation>(
        'GetReservation',
        getReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.GetReservationRequest.fromBuffer(value),
        ($8.Reservation value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateReservationResponse> createReservation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.CreateReservationRequest> request) async {
    return createReservation(call, await request);
  }

  $async.Future<$8.Reservation> getReservation_Pre($grpc.ServiceCall call,
      $async.Future<$8.GetReservationRequest> request) async {
    return getReservation(call, await request);
  }

  $async.Future<$8.CreateReservationResponse> createReservation(
      $grpc.ServiceCall call, $8.CreateReservationRequest request);
  $async.Future<$8.Reservation> getReservation(
      $grpc.ServiceCall call, $8.GetReservationRequest request);
}
