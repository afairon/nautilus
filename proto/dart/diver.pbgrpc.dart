///
//  Generated code. Do not modify.
//  source: diver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'diver.pb.dart' as $6;
export 'diver.pb.dart';

class DiverServiceClient extends $grpc.Client {
  static final _$listReservationsWithTrips = $grpc.ClientMethod<
          $6.ListReservationsWithTripsRequest,
          $6.ListReservationsWithTripsResponse>(
      '/diver.DiverService/ListReservationsWithTrips',
      ($6.ListReservationsWithTripsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListReservationsWithTripsResponse.fromBuffer(value));

  DiverServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$6.ListReservationsWithTripsResponse>
      listReservationsWithTrips($6.ListReservationsWithTripsRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listReservationsWithTrips, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DiverServiceBase extends $grpc.Service {
  $core.String get $name => 'diver.DiverService';

  DiverServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.ListReservationsWithTripsRequest,
            $6.ListReservationsWithTripsResponse>(
        'ListReservationsWithTrips',
        listReservationsWithTrips_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $6.ListReservationsWithTripsRequest.fromBuffer(value),
        ($6.ListReservationsWithTripsResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$6.ListReservationsWithTripsResponse>
      listReservationsWithTrips_Pre($grpc.ServiceCall call,
          $async.Future<$6.ListReservationsWithTripsRequest> request) async* {
    yield* listReservationsWithTrips(call, await request);
  }

  $async.Stream<$6.ListReservationsWithTripsResponse> listReservationsWithTrips(
      $grpc.ServiceCall call, $6.ListReservationsWithTripsRequest request);
}
