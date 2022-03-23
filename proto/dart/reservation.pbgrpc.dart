///
//  Generated code. Do not modify.
//  source: reservation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reservation.pb.dart' as $6;
export 'reservation.pb.dart';

class ReservationServiceClient extends $grpc.Client {
  static final _$createReservation =
      $grpc.ClientMethod<$6.CreateReservationRequest, $6.Reservation>(
          '/reservation.ReservationService/CreateReservation',
          ($6.CreateReservationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.Reservation.fromBuffer(value));
  static final _$getReservation =
      $grpc.ClientMethod<$6.GetReservationRequest, $6.Reservation>(
          '/reservation.ReservationService/GetReservation',
          ($6.GetReservationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.Reservation.fromBuffer(value));

  ReservationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.Reservation> createReservation(
      $6.CreateReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReservation, request, options: options);
  }

  $grpc.ResponseFuture<$6.Reservation> getReservation(
      $6.GetReservationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReservation, request, options: options);
  }
}

abstract class ReservationServiceBase extends $grpc.Service {
  $core.String get $name => 'reservation.ReservationService';

  ReservationServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateReservationRequest, $6.Reservation>(
        'CreateReservation',
        createReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateReservationRequest.fromBuffer(value),
        ($6.Reservation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetReservationRequest, $6.Reservation>(
        'GetReservation',
        getReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetReservationRequest.fromBuffer(value),
        ($6.Reservation value) => value.writeToBuffer()));
  }

  $async.Future<$6.Reservation> createReservation_Pre($grpc.ServiceCall call,
      $async.Future<$6.CreateReservationRequest> request) async {
    return createReservation(call, await request);
  }

  $async.Future<$6.Reservation> getReservation_Pre($grpc.ServiceCall call,
      $async.Future<$6.GetReservationRequest> request) async {
    return getReservation(call, await request);
  }

  $async.Future<$6.Reservation> createReservation(
      $grpc.ServiceCall call, $6.CreateReservationRequest request);
  $async.Future<$6.Reservation> getReservation(
      $grpc.ServiceCall call, $6.GetReservationRequest request);
}
