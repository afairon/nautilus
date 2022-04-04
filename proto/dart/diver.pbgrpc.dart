///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'diver.pb.dart' as $5;
export 'diver.pb.dart';

class DiverServiceClient extends $grpc.Client {
  static final _$listBookedTrips =
      $grpc.ClientMethod<$5.ListBookedTripsRequest, $5.ListBookedTripsResponse>(
          '/diver.DiverService/ListBookedTrips',
          ($5.ListBookedTripsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ListBookedTripsResponse.fromBuffer(value));

  DiverServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$5.ListBookedTripsResponse> listBookedTrips(
      $5.ListBookedTripsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listBookedTrips, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DiverServiceBase extends $grpc.Service {
  $core.String get $name => 'diver.DiverService';

  DiverServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.ListBookedTripsRequest,
            $5.ListBookedTripsResponse>(
        'ListBookedTrips',
        listBookedTrips_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $5.ListBookedTripsRequest.fromBuffer(value),
        ($5.ListBookedTripsResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$5.ListBookedTripsResponse> listBookedTrips_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListBookedTripsRequest> request) async* {
    yield* listBookedTrips(call, await request);
  }

  $async.Stream<$5.ListBookedTripsResponse> listBookedTrips(
      $grpc.ServiceCall call, $5.ListBookedTripsRequest request);
}
