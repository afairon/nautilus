///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'comment.pb.dart' as $3;
export 'comment.pb.dart';

class CommentServiceClient extends $grpc.Client {
  static final _$createComment =
      $grpc.ClientMethod<$3.CreateCommentRequest, $3.CreateCommentResponse>(
          '/comment.CommentService/CreateComment',
          ($3.CreateCommentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateCommentResponse.fromBuffer(value));
  static final _$getComment =
      $grpc.ClientMethod<$3.GetCommentRequest, $3.GetCommentResponse>(
          '/comment.CommentService/GetComment',
          ($3.GetCommentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetCommentResponse.fromBuffer(value));

  CommentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateCommentResponse> createComment(
      $3.CreateCommentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetCommentResponse> getComment(
      $3.GetCommentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComment, request, options: options);
  }
}

abstract class CommentServiceBase extends $grpc.Service {
  $core.String get $name => 'comment.CommentService';

  CommentServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.CreateCommentRequest, $3.CreateCommentResponse>(
            'CreateComment',
            createComment_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.CreateCommentRequest.fromBuffer(value),
            ($3.CreateCommentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetCommentRequest, $3.GetCommentResponse>(
        'GetComment',
        getComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetCommentRequest.fromBuffer(value),
        ($3.GetCommentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateCommentResponse> createComment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.CreateCommentRequest> request) async {
    return createComment(call, await request);
  }

  $async.Future<$3.GetCommentResponse> getComment_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetCommentRequest> request) async {
    return getComment(call, await request);
  }

  $async.Future<$3.CreateCommentResponse> createComment(
      $grpc.ServiceCall call, $3.CreateCommentRequest request);
  $async.Future<$3.GetCommentResponse> getComment(
      $grpc.ServiceCall call, $3.GetCommentRequest request);
}
