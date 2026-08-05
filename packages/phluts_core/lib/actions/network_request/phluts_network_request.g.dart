// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_network_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsNetworkRequest _$PhlutsNetworkRequestFromJson(
  Map<String, dynamic> json,
) => PhlutsNetworkRequest(
  url: json['url'] as String,
  method: $enumDecodeNullable(_$MethodEnumMap, json['method']) ?? Method.get,
  queryParameters: json['queryParameters'] as Map<String, dynamic>?,
  headers: json['headers'] as Map<String, dynamic>?,
  contentType: json['contentType'] as String?,
  body: json['body'],
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => PhlutsNetworkResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PhlutsNetworkRequestToJson(
  PhlutsNetworkRequest instance,
) => <String, dynamic>{
  'url': instance.url,
  'method': _$MethodEnumMap[instance.method]!,
  'queryParameters': instance.queryParameters,
  'headers': instance.headers,
  'contentType': instance.contentType,
  'body': instance.body,
  'results': instance.results.map((e) => e.toJson()).toList(),
  'actionType': instance.actionType,
};

const _$MethodEnumMap = {
  Method.get: 'get',
  Method.post: 'post',
  Method.put: 'put',
  Method.delete: 'delete',
};

PhlutsNetworkResult _$PhlutsNetworkResultFromJson(Map<String, dynamic> json) =>
    PhlutsNetworkResult(
      statusCode: (json['statusCode'] as num).toInt(),
      action: json['action'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$PhlutsNetworkResultToJson(
  PhlutsNetworkResult instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'action': instance.action,
};
