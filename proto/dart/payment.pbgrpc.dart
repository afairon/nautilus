///
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'payment.pb.dart' as $8;
import 'google/protobuf/empty.pb.dart' as $1;
export 'payment.pb.dart';

class PaymentServiceClient extends $grpc.Client {
  static final _$makePayment =
      $grpc.ClientMethod<$8.MakePaymentRequest, $1.Empty>(
          '/payment.PaymentService/MakePayment',
          ($8.MakePaymentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  PaymentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> makePayment($8.MakePaymentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$makePayment, request, options: options);
  }
}

abstract class PaymentServiceBase extends $grpc.Service {
  $core.String get $name => 'payment.PaymentService';

  PaymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.MakePaymentRequest, $1.Empty>(
        'MakePayment',
        makePayment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.MakePaymentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> makePayment_Pre($grpc.ServiceCall call,
      $async.Future<$8.MakePaymentRequest> request) async {
    return makePayment(call, await request);
  }

  $async.Future<$1.Empty> makePayment(
      $grpc.ServiceCall call, $8.MakePaymentRequest request);
}
