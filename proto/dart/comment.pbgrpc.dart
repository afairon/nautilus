///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'comment.pb.dart' as $4;
export 'comment.pb.dart';

class CommentServiceClient extends $grpc.Client {
  static final _$createComment =
      $grpc.ClientMethod<$4.CreateCommentRequest, $4.CreateCommentResponse>(
          '/comment.CommentService/CreateComment',
          ($4.CreateCommentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateCommentResponse.fromBuffer(value));
  static final _$getComment =
      $grpc.ClientMethod<$4.GetCommentRequest, $4.GetCommentResponse>(
          '/comment.CommentService/GetComment',
          ($4.GetCommentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetCommentResponse.fromBuffer(value));

  CommentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateCommentResponse> createComment(
      $4.CreateCommentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetCommentResponse> getComment(
      $4.GetCommentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComment, request, options: options);
  }
}

abstract class CommentServiceBase extends $grpc.Service {
  $core.String get $name => 'comment.CommentService';

  CommentServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.CreateCommentRequest, $4.CreateCommentResponse>(
            'CreateComment',
            createComment_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateCommentRequest.fromBuffer(value),
            ($4.CreateCommentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetCommentRequest, $4.GetCommentResponse>(
        'GetComment',
        getComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetCommentRequest.fromBuffer(value),
        ($4.GetCommentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateCommentResponse> createComment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateCommentRequest> request) async {
    return createComment(call, await request);
  }

  $async.Future<$4.GetCommentResponse> getComment_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetCommentRequest> request) async {
    return getComment(call, await request);
  }

  $async.Future<$4.CreateCommentResponse> createComment(
      $grpc.ServiceCall call, $4.CreateCommentRequest request);
  $async.Future<$4.GetCommentResponse> getComment(
      $grpc.ServiceCall call, $4.GetCommentRequest request);
}
