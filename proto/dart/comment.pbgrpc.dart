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
import 'google/protobuf/empty.pb.dart' as $1;
export 'comment.pb.dart';

class CommentServiceClient extends $grpc.Client {
  static final _$createComment =
      $grpc.ClientMethod<$4.CreateCommentRequest, $4.CreateCommentResponse>(
          '/comment.CommentService/CreateComment',
          ($4.CreateCommentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateCommentResponse.fromBuffer(value));
  static final _$deleteComment =
      $grpc.ClientMethod<$4.DeleteCommentRequest, $1.Empty>(
          '/comment.CommentService/DeleteComment',
          ($4.DeleteCommentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  CommentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateCommentResponse> createComment(
      $4.CreateCommentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteComment($4.DeleteCommentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteComment, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$4.DeleteCommentRequest, $1.Empty>(
        'DeleteComment',
        deleteComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteCommentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateCommentResponse> createComment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateCommentRequest> request) async {
    return createComment(call, await request);
  }

  $async.Future<$1.Empty> deleteComment_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeleteCommentRequest> request) async {
    return deleteComment(call, await request);
  }

  $async.Future<$4.CreateCommentResponse> createComment(
      $grpc.ServiceCall call, $4.CreateCommentRequest request);
  $async.Future<$1.Empty> deleteComment(
      $grpc.ServiceCall call, $4.DeleteCommentRequest request);
}
