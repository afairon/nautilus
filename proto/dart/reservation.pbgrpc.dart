///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reservation.pb.dart' as $9;
export 'reservation.pb.dart';

class ReservationServiceClient extends $grpc.Client {
  static final _$createReservation = $grpc.ClientMethod<
          $9.CreateReservationRequest, $9.CreateReservationResponse>(
      '/reservation.ReservationService/CreateReservation',
      ($9.CreateReservationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.CreateReservationResponse.fromBuffer(value));
  static final _$getReservation =
      $grpc.ClientMethod<$9.GetReservationRequest, $9.Reservation>(
          '/reservation.ReservationService/GetReservation',
          ($9.GetReservationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $9.Reservation.fromBuffer(value));

  ReservationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateReservationResponse> createReservation(
      $9.CreateReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReservation, request, options: options);
  }

  $grpc.ResponseFuture<$9.Reservation> getReservation(
      $9.GetReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReservation, request, options: options);
  }
}

abstract class ReservationServiceBase extends $grpc.Service {
  $core.String get $name => 'reservation.ReservationService';

  ReservationServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateReservationRequest,
            $9.CreateReservationResponse>(
        'CreateReservation',
        createReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.CreateReservationRequest.fromBuffer(value),
        ($9.CreateReservationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetReservationRequest, $9.Reservation>(
        'GetReservation',
        getReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.GetReservationRequest.fromBuffer(value),
        ($9.Reservation value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateReservationResponse> createReservation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.CreateReservationRequest> request) async {
    return createReservation(call, await request);
  }

  $async.Future<$9.Reservation> getReservation_Pre($grpc.ServiceCall call,
      $async.Future<$9.GetReservationRequest> request) async {
    return getReservation(call, await request);
  }

  $async.Future<$9.CreateReservationResponse> createReservation(
      $grpc.ServiceCall call, $9.CreateReservationRequest request);
  $async.Future<$9.Reservation> getReservation(
      $grpc.ServiceCall call, $9.GetReservationRequest request);
}
