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
  static final _$listBoats =
      $grpc.ClientMethod<$2.ListBoatsRequest, $2.ListBoatsResponse>(
          '/agency.AgencyService/ListBoats',
          ($2.ListBoatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListBoatsResponse.fromBuffer(value));
  static final _$listDiveMasters =
      $grpc.ClientMethod<$2.ListDiveMastersRequest, $2.ListDiveMastersResponse>(
          '/agency.AgencyService/ListDiveMasters',
          ($2.ListDiveMastersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListDiveMastersResponse.fromBuffer(value));
  static final _$listHotels =
      $grpc.ClientMethod<$2.ListHotelsRequest, $2.ListHotelsResponse>(
          '/agency.AgencyService/ListHotels',
          ($2.ListHotelsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListHotelsResponse.fromBuffer(value));
  static final _$listLiveaboards =
      $grpc.ClientMethod<$2.ListLiveaboardsRequest, $2.ListLiveaboardsResponse>(
          '/agency.AgencyService/ListLiveaboards',
          ($2.ListLiveaboardsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListLiveaboardsResponse.fromBuffer(value));
  static final _$listStaffs =
      $grpc.ClientMethod<$2.ListStaffsRequest, $2.ListStaffsResponse>(
          '/agency.AgencyService/ListStaffs',
          ($2.ListStaffsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListStaffsResponse.fromBuffer(value));
  static final _$listTripTemplates = $grpc.ClientMethod<
          $2.ListTripTemplatesRequest, $2.ListTripTemplatesResponse>(
      '/agency.AgencyService/ListTripTemplates',
      ($2.ListTripTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListTripTemplatesResponse.fromBuffer(value));
  static final _$listTrips =
      $grpc.ClientMethod<$2.ListTripsRequest, $2.ListTripsResponse>(
          '/agency.AgencyService/ListTrips',
          ($2.ListTripsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListTripsResponse.fromBuffer(value));

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

  $grpc.ResponseStream<$2.ListBoatsResponse> listBoats(
      $2.ListBoatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listBoats, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.ListDiveMastersResponse> listDiveMasters(
      $2.ListDiveMastersRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listDiveMasters, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.ListHotelsResponse> listHotels(
      $2.ListHotelsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listHotels, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.ListLiveaboardsResponse> listLiveaboards(
      $2.ListLiveaboardsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listLiveaboards, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.ListStaffsResponse> listStaffs(
      $2.ListStaffsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listStaffs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.ListTripTemplatesResponse> listTripTemplates(
      $2.ListTripTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listTripTemplates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.ListTripsResponse> listTrips(
      $2.ListTripsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listTrips, $async.Stream.fromIterable([request]),
        options: options);
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
    $addMethod($grpc.ServiceMethod<$2.ListBoatsRequest, $2.ListBoatsResponse>(
        'ListBoats',
        listBoats_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListBoatsRequest.fromBuffer(value),
        ($2.ListBoatsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListDiveMastersRequest,
            $2.ListDiveMastersResponse>(
        'ListDiveMasters',
        listDiveMasters_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $2.ListDiveMastersRequest.fromBuffer(value),
        ($2.ListDiveMastersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListHotelsRequest, $2.ListHotelsResponse>(
        'ListHotels',
        listHotels_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListHotelsRequest.fromBuffer(value),
        ($2.ListHotelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListLiveaboardsRequest,
            $2.ListLiveaboardsResponse>(
        'ListLiveaboards',
        listLiveaboards_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $2.ListLiveaboardsRequest.fromBuffer(value),
        ($2.ListLiveaboardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListStaffsRequest, $2.ListStaffsResponse>(
        'ListStaffs',
        listStaffs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListStaffsRequest.fromBuffer(value),
        ($2.ListStaffsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListTripTemplatesRequest,
            $2.ListTripTemplatesResponse>(
        'ListTripTemplates',
        listTripTemplates_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $2.ListTripTemplatesRequest.fromBuffer(value),
        ($2.ListTripTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListTripsRequest, $2.ListTripsResponse>(
        'ListTrips',
        listTrips_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListTripsRequest.fromBuffer(value),
        ($2.ListTripsResponse value) => value.writeToBuffer()));
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

  $async.Stream<$2.ListBoatsResponse> listBoats_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListBoatsRequest> request) async* {
    yield* listBoats(call, await request);
  }

  $async.Stream<$2.ListDiveMastersResponse> listDiveMasters_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListDiveMastersRequest> request) async* {
    yield* listDiveMasters(call, await request);
  }

  $async.Stream<$2.ListHotelsResponse> listHotels_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListHotelsRequest> request) async* {
    yield* listHotels(call, await request);
  }

  $async.Stream<$2.ListLiveaboardsResponse> listLiveaboards_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListLiveaboardsRequest> request) async* {
    yield* listLiveaboards(call, await request);
  }

  $async.Stream<$2.ListStaffsResponse> listStaffs_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListStaffsRequest> request) async* {
    yield* listStaffs(call, await request);
  }

  $async.Stream<$2.ListTripTemplatesResponse> listTripTemplates_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListTripTemplatesRequest> request) async* {
    yield* listTripTemplates(call, await request);
  }

  $async.Stream<$2.ListTripsResponse> listTrips_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListTripsRequest> request) async* {
    yield* listTrips(call, await request);
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
  $async.Stream<$2.ListBoatsResponse> listBoats(
      $grpc.ServiceCall call, $2.ListBoatsRequest request);
  $async.Stream<$2.ListDiveMastersResponse> listDiveMasters(
      $grpc.ServiceCall call, $2.ListDiveMastersRequest request);
  $async.Stream<$2.ListHotelsResponse> listHotels(
      $grpc.ServiceCall call, $2.ListHotelsRequest request);
  $async.Stream<$2.ListLiveaboardsResponse> listLiveaboards(
      $grpc.ServiceCall call, $2.ListLiveaboardsRequest request);
  $async.Stream<$2.ListStaffsResponse> listStaffs(
      $grpc.ServiceCall call, $2.ListStaffsRequest request);
  $async.Stream<$2.ListTripTemplatesResponse> listTripTemplates(
      $grpc.ServiceCall call, $2.ListTripTemplatesRequest request);
  $async.Stream<$2.ListTripsResponse> listTrips(
      $grpc.ServiceCall call, $2.ListTripsRequest request);
}
