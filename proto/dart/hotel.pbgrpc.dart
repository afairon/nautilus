///
//  Generated code. Do not modify.
//  source: hotel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'hotel.pb.dart' as $4;
export 'hotel.pb.dart';

class HotelServiceClient extends $grpc.Client {
  static final _$getHotel =
      $grpc.ClientMethod<$4.GetHotelRequest, $4.GetHotelResponse>(
          '/hotel.HotelService/GetHotel',
          ($4.GetHotelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetHotelResponse.fromBuffer(value));

  HotelServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetHotelResponse> getHotel($4.GetHotelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHotel, request, options: options);
  }
}

abstract class HotelServiceBase extends $grpc.Service {
  $core.String get $name => 'hotel.HotelService';

  HotelServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetHotelRequest, $4.GetHotelResponse>(
        'GetHotel',
        getHotel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetHotelRequest.fromBuffer(value),
        ($4.GetHotelResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.GetHotelResponse> getHotel_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GetHotelRequest> request) async {
    return getHotel(call, await request);
  }

  $async.Future<$4.GetHotelResponse> getHotel(
      $grpc.ServiceCall call, $4.GetHotelRequest request);
}
