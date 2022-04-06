///
//  Generated code. Do not modify.
//  source: hotel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $13;

class GetHotelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetHotelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hotel'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetHotelRequest._() : super();
  factory GetHotelRequest({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetHotelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHotelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHotelRequest clone() => GetHotelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHotelRequest copyWith(void Function(GetHotelRequest) updates) => super.copyWith((message) => updates(message as GetHotelRequest)) as GetHotelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHotelRequest create() => GetHotelRequest._();
  GetHotelRequest createEmptyInstance() => create();
  static $pb.PbList<GetHotelRequest> createRepeated() => $pb.PbList<GetHotelRequest>();
  @$core.pragma('dart2js:noInline')
  static GetHotelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHotelRequest>(create);
  static GetHotelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetHotelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetHotelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hotel'), createEmptyInstance: create)
    ..aOM<$13.Hotel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotel', subBuilder: $13.Hotel.create)
    ..hasRequiredFields = false
  ;

  GetHotelResponse._() : super();
  factory GetHotelResponse({
    $13.Hotel? hotel,
  }) {
    final _result = create();
    if (hotel != null) {
      _result.hotel = hotel;
    }
    return _result;
  }
  factory GetHotelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHotelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHotelResponse clone() => GetHotelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHotelResponse copyWith(void Function(GetHotelResponse) updates) => super.copyWith((message) => updates(message as GetHotelResponse)) as GetHotelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHotelResponse create() => GetHotelResponse._();
  GetHotelResponse createEmptyInstance() => create();
  static $pb.PbList<GetHotelResponse> createRepeated() => $pb.PbList<GetHotelResponse>();
  @$core.pragma('dart2js:noInline')
  static GetHotelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHotelResponse>(create);
  static GetHotelResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Hotel get hotel => $_getN(0);
  @$pb.TagNumber(1)
  set hotel($13.Hotel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHotel() => $_has(0);
  @$pb.TagNumber(1)
  void clearHotel() => clearField(1);
  @$pb.TagNumber(1)
  $13.Hotel ensureHotel() => $_ensure(0);
}

