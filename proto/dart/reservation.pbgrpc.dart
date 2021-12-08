///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reservation.pb.dart' as $4;
export 'reservation.pb.dart';

class ReservationServiceClient extends $grpc.Client {
  static final _$createReservation =
      $grpc.ClientMethod<$4.CreateReservationRequest, $4.Reservation>(
          '/reservation.ReservationService/CreateReservation',
          ($4.CreateReservationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.Reservation.fromBuffer(value));
  static final _$getReservation =
      $grpc.ClientMethod<$4.GetReservationRequest, $4.Reservation>(
          '/reservation.ReservationService/GetReservation',
          ($4.GetReservationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.Reservation.fromBuffer(value));

  ReservationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.Reservation> createReservation(
      $4.CreateReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReservation, request, options: options);
  }

  $grpc.ResponseFuture<$4.Reservation> getReservation(
      $4.GetReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReservation, request, options: options);
  }
}

abstract class ReservationServiceBase extends $grpc.Service {
  $core.String get $name => 'reservation.ReservationService';

  ReservationServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateReservationRequest, $4.Reservation>(
        'CreateReservation',
        createReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateReservationRequest.fromBuffer(value),
        ($4.Reservation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetReservationRequest, $4.Reservation>(
        'GetReservation',
        getReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetReservationRequest.fromBuffer(value),
        ($4.Reservation value) => value.writeToBuffer()));
  }

  $async.Future<$4.Reservation> createReservation_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateReservationRequest> request) async {
    return createReservation(call, await request);
  }

  $async.Future<$4.Reservation> getReservation_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetReservationRequest> request) async {
    return getReservation(call, await request);
  }

  $async.Future<$4.Reservation> createReservation(
      $grpc.ServiceCall call, $4.CreateReservationRequest request);
  $async.Future<$4.Reservation> getReservation(
      $grpc.ServiceCall call, $4.GetReservationRequest request);
}
