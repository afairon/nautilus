///
//  Generated code. Do not modify.
//  source: roomtype.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'roomtype.pb.dart' as $10;
export 'roomtype.pb.dart';

class RoomTypeServiceClient extends $grpc.Client {
  static final _$listRoomTypesByTrip = $grpc.ClientMethod<
          $10.ListRoomTypesByTripRequest, $10.ListRoomTypesByTripResponse>(
      '/roomtype.RoomTypeService/ListRoomTypesByTrip',
      ($10.ListRoomTypesByTripRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $10.ListRoomTypesByTripResponse.fromBuffer(value));

  RoomTypeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$10.ListRoomTypesByTripResponse> listRoomTypesByTrip(
      $10.ListRoomTypesByTripRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listRoomTypesByTrip, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class RoomTypeServiceBase extends $grpc.Service {
  $core.String get $name => 'roomtype.RoomTypeService';

  RoomTypeServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.ListRoomTypesByTripRequest,
            $10.ListRoomTypesByTripResponse>(
        'ListRoomTypesByTrip',
        listRoomTypesByTrip_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $10.ListRoomTypesByTripRequest.fromBuffer(value),
        ($10.ListRoomTypesByTripResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$10.ListRoomTypesByTripResponse> listRoomTypesByTrip_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.ListRoomTypesByTripRequest> request) async* {
    yield* listRoomTypesByTrip(call, await request);
  }

  $async.Stream<$10.ListRoomTypesByTripResponse> listRoomTypesByTrip(
      $grpc.ServiceCall call, $10.ListRoomTypesByTripRequest request);
}
