///
//  Generated code. Do not modify.
//  source: liveaboard.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'liveaboard.pb.dart' as $5;
export 'liveaboard.pb.dart';

class LiveaboardServiceClient extends $grpc.Client {
  static final _$getLiveaboard =
      $grpc.ClientMethod<$5.GetLiveaboardRequest, $5.GetLiveaboardResponse>(
          '/liveaboard.LiveaboardService/GetLiveaboard',
          ($5.GetLiveaboardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetLiveaboardResponse.fromBuffer(value));

  LiveaboardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.GetLiveaboardResponse> getLiveaboard(
      $5.GetLiveaboardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLiveaboard, request, options: options);
  }
}

abstract class LiveaboardServiceBase extends $grpc.Service {
  $core.String get $name => 'liveaboard.LiveaboardService';

  LiveaboardServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$5.GetLiveaboardRequest, $5.GetLiveaboardResponse>(
            'GetLiveaboard',
            getLiveaboard_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.GetLiveaboardRequest.fromBuffer(value),
            ($5.GetLiveaboardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.GetLiveaboardResponse> getLiveaboard_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetLiveaboardRequest> request) async {
    return getLiveaboard(call, await request);
  }

  $async.Future<$5.GetLiveaboardResponse> getLiveaboard(
      $grpc.ServiceCall call, $5.GetLiveaboardRequest request);
}
