// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_network_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsNetworkWidget _$PhlutsNetworkWidgetFromJson(Map<String, dynamic> json) =>
    PhlutsNetworkWidget(
      request: PhlutsNetworkRequest.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
      loadingWidget: json['loadingWidget'] == null
          ? null
          : PhlutsWidget.fromJson(json['loadingWidget'] as Map<String, dynamic>),
      errorWidget: json['errorWidget'] == null
          ? null
          : PhlutsWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsNetworkWidgetToJson(PhlutsNetworkWidget instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'loadingWidget': instance.loadingWidget?.toJson(),
      'errorWidget': instance.errorWidget?.toJson(),
      'type': instance.type,
    };
