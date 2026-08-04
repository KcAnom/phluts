// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_dynamic_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDynamicView _$PhlutsDynamicViewFromJson(Map<String, dynamic> json) =>
    PhlutsDynamicView(
      request: PhlutsNetworkRequest.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
      template: json['template'] == null
          ? null
          : PhlutsWidget.fromJson(json['template'] as Map<String, dynamic>),
      targetPath: json['targetPath'] as String?,
      resultTarget: json['resultTarget'] as String?,
      emptyTemplate: json['emptyTemplate'] == null
          ? null
          : PhlutsWidget.fromJson(json['emptyTemplate'] as Map<String, dynamic>),
      loaderWidget: json['loaderWidget'] == null
          ? null
          : PhlutsWidget.fromJson(json['loaderWidget'] as Map<String, dynamic>),
      errorWidget: json['errorWidget'] == null
          ? null
          : PhlutsWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsDynamicViewToJson(PhlutsDynamicView instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'targetPath': instance.targetPath,
      'template': instance.template?.toJson(),
      'resultTarget': instance.resultTarget,
      'emptyTemplate': instance.emptyTemplate?.toJson(),
      'loaderWidget': instance.loaderWidget?.toJson(),
      'errorWidget': instance.errorWidget?.toJson(),
      'type': instance.type,
    };
