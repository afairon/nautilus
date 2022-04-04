///
//  Generated code. Do not modify.
//  source: amenity.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'amenity.pb.dart' as $3;
export 'amenity.pb.dart';

class AmenityServiceClient extends $grpc.Client {
  static final _$listAmenities =
      $grpc.ClientMethod<$3.ListAmenitiesRequest, $3.ListAmenitiesResponse>(
          '/amenity.AmenityService/ListAmenities',
          ($3.ListAmenitiesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListAmenitiesResponse.fromBuffer(value));

  AmenityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$3.ListAmenitiesResponse> listAmenities(
      $3.ListAmenitiesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listAmenities, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class AmenityServiceBase extends $grpc.Service {
  $core.String get $name => 'amenity.AmenityService';

  AmenityServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.ListAmenitiesRequest, $3.ListAmenitiesResponse>(
            'ListAmenities',
            listAmenities_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $3.ListAmenitiesRequest.fromBuffer(value),
            ($3.ListAmenitiesResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$3.ListAmenitiesResponse> listAmenities_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.ListAmenitiesRequest> request) async* {
    yield* listAmenities(call, await request);
  }

  $async.Stream<$3.ListAmenitiesResponse> listAmenities(
      $grpc.ServiceCall call, $3.ListAmenitiesRequest request);
}
