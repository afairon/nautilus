///
//  Generated code. Do not modify.
//  source: agency.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'agency.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $1;
export 'agency.pb.dart';

class AgencyServiceClient extends $grpc.Client {
  static final _$addDiveMaster =
      $grpc.ClientMethod<$2.AddDiveMasterRequest, $1.Empty>(
          '/agency.AgencyService/AddDiveMaster',
          ($2.AddDiveMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$addStaff = $grpc.ClientMethod<$2.AddStaffRequest, $1.Empty>(
      '/agency.AgencyService/AddStaff',
      ($2.AddStaffRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$addTripTemplate =
      $grpc.ClientMethod<$2.AddTripTemplateRequest, $1.Empty>(
          '/agency.AgencyService/AddTripTemplate',
          ($2.AddTripTemplateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$addTrip = $grpc.ClientMethod<$2.AddTripRequest, $1.Empty>(
      '/agency.AgencyService/AddTrip',
      ($2.AddTripRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$addDivingBoat =
      $grpc.ClientMethod<$2.AddDivingBoatRequest, $1.Empty>(
          '/agency.AgencyService/AddDivingBoat',
          ($2.AddDivingBoatRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$addHotel = $grpc.ClientMethod<$2.AddHotelRequest, $1.Empty>(
      '/agency.AgencyService/AddHotel',
      ($2.AddHotelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$addLiveaboard =
      $grpc.ClientMethod<$2.AddLiveaboardRequest, $1.Empty>(
          '/agency.AgencyService/AddLiveaboard',
          ($2.AddLiveaboardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  AgencyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> addDiveMaster($2.AddDiveMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addDiveMaster, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> addStaff($2.AddStaffRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addStaff, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> addTripTemplate(
      $2.AddTripTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTripTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> addTrip($2.AddTripRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTrip, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> addDivingBoat($2.AddDivingBoatRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addDivingBoat, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> addHotel($2.AddHotelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addHotel, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> addLiveaboard($2.AddLiveaboardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addLiveaboard, request, options: options);
  }
}

abstract class AgencyServiceBase extends $grpc.Service {
  $core.String get $name => 'agency.AgencyService';

  AgencyServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.AddDiveMasterRequest, $1.Empty>(
        'AddDiveMaster',
        addDiveMaster_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AddDiveMasterRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddStaffRequest, $1.Empty>(
        'AddStaff',
        addStaff_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddStaffRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddTripTemplateRequest, $1.Empty>(
        'AddTripTemplate',
        addTripTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AddTripTemplateRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddTripRequest, $1.Empty>(
        'AddTrip',
        addTrip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddTripRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddDivingBoatRequest, $1.Empty>(
        'AddDivingBoat',
        addDivingBoat_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AddDivingBoatRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddHotelRequest, $1.Empty>(
        'AddHotel',
        addHotel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddHotelRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddLiveaboardRequest, $1.Empty>(
        'AddLiveaboard',
        addLiveaboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AddLiveaboardRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> addDiveMaster_Pre($grpc.ServiceCall call,
      $async.Future<$2.AddDiveMasterRequest> request) async {
    return addDiveMaster(call, await request);
  }

  $async.Future<$1.Empty> addStaff_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AddStaffRequest> request) async {
    return addStaff(call, await request);
  }

  $async.Future<$1.Empty> addTripTemplate_Pre($grpc.ServiceCall call,
      $async.Future<$2.AddTripTemplateRequest> request) async {
    return addTripTemplate(call, await request);
  }

  $async.Future<$1.Empty> addTrip_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AddTripRequest> request) async {
    return addTrip(call, await request);
  }

  $async.Future<$1.Empty> addDivingBoat_Pre($grpc.ServiceCall call,
      $async.Future<$2.AddDivingBoatRequest> request) async {
    return addDivingBoat(call, await request);
  }

  $async.Future<$1.Empty> addHotel_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AddHotelRequest> request) async {
    return addHotel(call, await request);
  }

  $async.Future<$1.Empty> addLiveaboard_Pre($grpc.ServiceCall call,
      $async.Future<$2.AddLiveaboardRequest> request) async {
    return addLiveaboard(call, await request);
  }

  $async.Future<$1.Empty> addDiveMaster(
      $grpc.ServiceCall call, $2.AddDiveMasterRequest request);
  $async.Future<$1.Empty> addStaff(
      $grpc.ServiceCall call, $2.AddStaffRequest request);
  $async.Future<$1.Empty> addTripTemplate(
      $grpc.ServiceCall call, $2.AddTripTemplateRequest request);
  $async.Future<$1.Empty> addTrip(
      $grpc.ServiceCall call, $2.AddTripRequest request);
  $async.Future<$1.Empty> addDivingBoat(
      $grpc.ServiceCall call, $2.AddDivingBoatRequest request);
  $async.Future<$1.Empty> addHotel(
      $grpc.ServiceCall call, $2.AddHotelRequest request);
  $async.Future<$1.Empty> addLiveaboard(
      $grpc.ServiceCall call, $2.AddLiveaboardRequest request);
}
