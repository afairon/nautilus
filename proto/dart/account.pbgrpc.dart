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

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> create($0.AccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
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
  }

  $async.Future<$1.Empty> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AccountRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Empty> create(
      $grpc.ServiceCall call, $0.AccountRequest request);
}
