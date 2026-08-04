// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_divider_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDividerThemeData _$PhlutsDividerThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsDividerThemeData(
  color: json['color'] as String?,
  space: (json['space'] as num?)?.toDouble(),
  thickness: (json['thickness'] as num?)?.toDouble(),
  indent: (json['indent'] as num?)?.toDouble(),
  endIndent: (json['endIndent'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PhlutsDividerThemeDataToJson(
  PhlutsDividerThemeData instance,
) => <String, dynamic>{
  'color': instance.color,
  'space': instance.space,
  'thickness': instance.thickness,
  'indent': instance.indent,
  'endIndent': instance.endIndent,
};
