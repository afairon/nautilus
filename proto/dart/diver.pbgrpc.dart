///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'diver.pb.dart' as $4;
export 'diver.pb.dart';

class DiverServiceClient extends $grpc.Client {
  static final _$listBookedTrips =
      $grpc.ClientMethod<$4.ListBookedTripsRequest, $4.ListBookedTripsResponse>(
          '/diver.DiverService/ListBookedTrips',
          ($4.ListBookedTripsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ListBookedTripsResponse.fromBuffer(value));

  DiverServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$4.ListBookedTripsResponse> listBookedTrips(
      $4.ListBookedTripsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listBookedTrips, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DiverServiceBase extends $grpc.Service {
  $core.String get $name => 'diver.DiverService';

  DiverServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.ListBookedTripsRequest,
            $4.ListBookedTripsResponse>(
        'ListBookedTrips',
        listBookedTrips_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $4.ListBookedTripsRequest.fromBuffer(value),
        ($4.ListBookedTripsResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$4.ListBookedTripsResponse> listBookedTrips_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListBookedTripsRequest> request) async* {
    yield* listBookedTrips(call, await request);
  }

  $async.Stream<$4.ListBookedTripsResponse> listBookedTrips(
      $grpc.ServiceCall call, $4.ListBookedTripsRequest request);
}
