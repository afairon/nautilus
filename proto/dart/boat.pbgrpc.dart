///
//  Generated code. Do not modify.
//  source: boat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'boat.pb.dart' as $4;
export 'boat.pb.dart';

class BoatServiceClient extends $grpc.Client {
  static final _$getBoat =
      $grpc.ClientMethod<$4.GetBoatRequest, $4.GetBoatResponse>(
          '/boat.BoatService/GetBoat',
          ($4.GetBoatRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetBoatResponse.fromBuffer(value));

  BoatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetBoatResponse> getBoat($4.GetBoatRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBoat, request, options: options);
  }
}

abstract class BoatServiceBase extends $grpc.Service {
  $core.String get $name => 'boat.BoatService';

  BoatServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetBoatRequest, $4.GetBoatResponse>(
        'GetBoat',
        getBoat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetBoatRequest.fromBuffer(value),
        ($4.GetBoatResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.GetBoatResponse> getBoat_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GetBoatRequest> request) async {
    return getBoat(call, await request);
  }

  $async.Future<$4.GetBoatResponse> getBoat(
      $grpc.ServiceCall call, $4.GetBoatRequest request);
}
