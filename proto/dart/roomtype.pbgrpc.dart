///
//  Generated code. Do not modify.
//  source: roomtype.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'roomtype.pb.dart' as $11;
export 'roomtype.pb.dart';

class RoomTypeServiceClient extends $grpc.Client {
  static final _$getRoomType =
      $grpc.ClientMethod<$11.GetRoomTypeRequest, $11.GetRoomTypeResponse>(
          '/roomtype.RoomTypeService/GetRoomType',
          ($11.GetRoomTypeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.GetRoomTypeResponse.fromBuffer(value));
  static final _$listRoomTypesByTrip = $grpc.ClientMethod<
          $11.ListRoomTypesByTripRequest, $11.ListRoomTypesByTripResponse>(
      '/roomtype.RoomTypeService/ListRoomTypesByTrip',
      ($11.ListRoomTypesByTripRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.ListRoomTypesByTripResponse.fromBuffer(value));
  static final _$listRoomsOfReservation = $grpc.ClientMethod<
          $11.ListRoomsOfReservationRequest,
          $11.ListRoomsOfReservationResponse>(
      '/roomtype.RoomTypeService/ListRoomsOfReservation',
      ($11.ListRoomsOfReservationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.ListRoomsOfReservationResponse.fromBuffer(value));

  RoomTypeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.GetRoomTypeResponse> getRoomType(
      $11.GetRoomTypeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomType, request, options: options);
  }

  $grpc.ResponseStream<$11.ListRoomTypesByTripResponse> listRoomTypesByTrip(
      $11.ListRoomTypesByTripRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listRoomTypesByTrip, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$11.ListRoomsOfReservationResponse>
      listRoomsOfReservation($11.ListRoomsOfReservationRequest request,
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
        $grpc.ServiceMethod<$11.GetRoomTypeRequest, $11.GetRoomTypeResponse>(
            'GetRoomType',
            getRoomType_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $11.GetRoomTypeRequest.fromBuffer(value),
            ($11.GetRoomTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListRoomTypesByTripRequest,
            $11.ListRoomTypesByTripResponse>(
        'ListRoomTypesByTrip',
        listRoomTypesByTrip_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $11.ListRoomTypesByTripRequest.fromBuffer(value),
        ($11.ListRoomTypesByTripResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListRoomsOfReservationRequest,
            $11.ListRoomsOfReservationResponse>(
        'ListRoomsOfReservation',
        listRoomsOfReservation_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $11.ListRoomsOfReservationRequest.fromBuffer(value),
        ($11.ListRoomsOfReservationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.GetRoomTypeResponse> getRoomType_Pre($grpc.ServiceCall call,
      $async.Future<$11.GetRoomTypeRequest> request) async {
    return getRoomType(call, await request);
  }

  $async.Stream<$11.ListRoomTypesByTripResponse> listRoomTypesByTrip_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.ListRoomTypesByTripRequest> request) async* {
    yield* listRoomTypesByTrip(call, await request);
  }

  $async.Stream<$11.ListRoomsOfReservationResponse> listRoomsOfReservation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.ListRoomsOfReservationRequest> request) async* {
    yield* listRoomsOfReservation(call, await request);
  }

  $async.Future<$11.GetRoomTypeResponse> getRoomType(
      $grpc.ServiceCall call, $11.GetRoomTypeRequest request);
  $async.Stream<$11.ListRoomTypesByTripResponse> listRoomTypesByTrip(
      $grpc.ServiceCall call, $11.ListRoomTypesByTripRequest request);
  $async.Stream<$11.ListRoomsOfReservationResponse> listRoomsOfReservation(
      $grpc.ServiceCall call, $11.ListRoomsOfReservationRequest request);
}
