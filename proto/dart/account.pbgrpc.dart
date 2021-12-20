///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'account.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;
export 'account.pb.dart';

class AccountClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.AccountRequest, $1.Empty>(
      '/account.Account/Create',
      ($0.AccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/account.Account/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$getProfile =
      $grpc.ClientMethod<$1.Empty, $0.GetProfileResponse>(
          '/account.Account/GetProfile',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetProfileResponse.fromBuffer(value));

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> create($0.AccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetProfileResponse> getProfile($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProfile, request, options: options);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'account.Account';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountRequest, $1.Empty>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccountRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.GetProfileResponse>(
        'GetProfile',
        getProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.GetProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AccountRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.GetProfileResponse> getProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getProfile(call, await request);
  }

  $async.Future<$1.Empty> create(
      $grpc.ServiceCall call, $0.AccountRequest request);
  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.GetProfileResponse> getProfile(
      $grpc.ServiceCall call, $1.Empty request);
}
