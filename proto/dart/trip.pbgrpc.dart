///
//  Generated code. Do not modify.
//  source: trip.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trip.pb.dart' as $12;
export 'trip.pb.dart';

class TripServiceClient extends $grpc.Client {
  static final _$listValidTrips =
      $grpc.ClientMethod<$12.ListValidTripsRequest, $12.ListValidTripsResponse>(
          '/trip.TripService/ListValidTrips',
          ($12.ListValidTripsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $12.ListValidTripsResponse.fromBuffer(value));

  TripServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$12.ListValidTripsResponse> listValidTrips(
      $12.ListValidTripsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listValidTrips, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class TripServiceBase extends $grpc.Service {
  $core.String get $name => 'trip.TripService';

  TripServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.ListValidTripsRequest,
            $12.ListValidTripsResponse>(
        'ListValidTrips',
        listValidTrips_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $12.ListValidTripsRequest.fromBuffer(value),
        ($12.ListValidTripsResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$12.ListValidTripsResponse> listValidTrips_Pre(
      $grpc.ServiceCall call,
      $async.Future<$12.ListValidTripsRequest> request) async* {
    yield* listValidTrips(call, await request);
  }

  $async.Stream<$12.ListValidTripsResponse> listValidTrips(
      $grpc.ServiceCall call, $12.ListValidTripsRequest request);
}
