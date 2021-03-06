///
//  Generated code. Do not modify.
//  source: hotel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'hotel.pb.dart' as $7;
export 'hotel.pb.dart';

class HotelServiceClient extends $grpc.Client {
  static final _$getHotel =
      $grpc.ClientMethod<$7.GetHotelRequest, $7.GetHotelResponse>(
          '/hotel.HotelService/GetHotel',
          ($7.GetHotelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetHotelResponse.fromBuffer(value));

  HotelServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.GetHotelResponse> getHotel($7.GetHotelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHotel, request, options: options);
  }
}

abstract class HotelServiceBase extends $grpc.Service {
  $core.String get $name => 'hotel.HotelService';

  HotelServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetHotelRequest, $7.GetHotelResponse>(
        'GetHotel',
        getHotel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetHotelRequest.fromBuffer(value),
        ($7.GetHotelResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.GetHotelResponse> getHotel_Pre(
      $grpc.ServiceCall call, $async.Future<$7.GetHotelRequest> request) async {
    return getHotel(call, await request);
  }

  $async.Future<$7.GetHotelResponse> getHotel(
      $grpc.ServiceCall call, $7.GetHotelRequest request);
}
