// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDivider _$PhlutsDividerFromJson(Map<String, dynamic> json) =>
    PhlutsDivider(
      height: const DoubleConverter().fromJson(json['height']),
      thickness: const DoubleConverter().fromJson(json['thickness']),
      indent: const DoubleConverter().fromJson(json['indent']),
      endIndent: const DoubleConverter().fromJson(json['endIndent']),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$PhlutsDividerToJson(PhlutsDivider instance) =>
    <String, dynamic>{
      'height': const DoubleConverter().toJson(instance.height),
      'thickness': const DoubleConverter().toJson(instance.thickness),
      'indent': const DoubleConverter().toJson(instance.indent),
      'endIndent': const DoubleConverter().toJson(instance.endIndent),
      'color': instance.color,
      'type': instance.type,
    };
