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
  static final _$getRoomType =
      $grpc.ClientMethod<$10.GetRoomTypeRequest, $10.GetRoomTypeResponse>(
          '/roomtype.RoomTypeService/GetRoomType',
          ($10.GetRoomTypeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.GetRoomTypeResponse.fromBuffer(value));
  static final _$listRoomTypesByTrip = $grpc.ClientMethod<
          $10.ListRoomTypesByTripRequest, $10.ListRoomTypesByTripResponse>(
      '/roomtype.RoomTypeService/ListRoomTypesByTrip',
      ($10.ListRoomTypesByTripRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $10.ListRoomTypesByTripResponse.fromBuffer(value));
  static final _$listRoomsOfReservation = $grpc.ClientMethod<
          $10.ListRoomsOfReservationRequest,
          $10.ListRoomsOfReservationResponse>(
      '/roomtype.RoomTypeService/ListRoomsOfReservation',
      ($10.ListRoomsOfReservationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $10.ListRoomsOfReservationResponse.fromBuffer(value));

  RoomTypeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.GetRoomTypeResponse> getRoomType(
      $10.GetRoomTypeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomType, request, options: options);
  }

  $grpc.ResponseStream<$10.ListRoomTypesByTripResponse> listRoomTypesByTrip(
      $10.ListRoomTypesByTripRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listRoomTypesByTrip, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$10.ListRoomsOfReservationResponse>
      listRoomsOfReservation($10.ListRoomsOfReservationRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listRoomsOfReservation, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class RoomTypeServiceBase extends $grpc.Service {
  $core.String get $name => 'roomtype.RoomTypeService';

  RoomTypeServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$10.GetRoomTypeRequest, $10.GetRoomTypeResponse>(
            'GetRoomType',
            getRoomType_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $10.GetRoomTypeRequest.fromBuffer(value),
            ($10.GetRoomTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListRoomTypesByTripRequest,
            $10.ListRoomTypesByTripResponse>(
        'ListRoomTypesByTrip',
        listRoomTypesByTrip_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $10.ListRoomTypesByTripRequest.fromBuffer(value),
        ($10.ListRoomTypesByTripResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListRoomsOfReservationRequest,
            $10.ListRoomsOfReservationResponse>(
        'ListRoomsOfReservation',
        listRoomsOfReservation_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $10.ListRoomsOfReservationRequest.fromBuffer(value),
        ($10.ListRoomsOfReservationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.GetRoomTypeResponse> getRoomType_Pre($grpc.ServiceCall call,
      $async.Future<$10.GetRoomTypeRequest> request) async {
    return getRoomType(call, await request);
  }

  $async.Stream<$10.ListRoomTypesByTripResponse> listRoomTypesByTrip_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.ListRoomTypesByTripRequest> request) async* {
    yield* listRoomTypesByTrip(call, await request);
  }

  $async.Stream<$10.ListRoomsOfReservationResponse> listRoomsOfReservation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.ListRoomsOfReservationRequest> request) async* {
    yield* listRoomsOfReservation(call, await request);
  }

  $async.Future<$10.GetRoomTypeResponse> getRoomType(
      $grpc.ServiceCall call, $10.GetRoomTypeRequest request);
  $async.Stream<$10.ListRoomTypesByTripResponse> listRoomTypesByTrip(
      $grpc.ServiceCall call, $10.ListRoomTypesByTripRequest request);
  $async.Stream<$10.ListRoomsOfReservationResponse> listRoomsOfReservation(
      $grpc.ServiceCall call, $10.ListRoomsOfReservationRequest request);
}
