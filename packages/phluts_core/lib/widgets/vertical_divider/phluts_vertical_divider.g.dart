// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_vertical_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsVerticalDivider _$PhlutsVerticalDividerFromJson(Map<String, dynamic> json) =>
    PhlutsVerticalDivider(
      width: const DoubleConverter().fromJson(json['width']),
      thickness: const DoubleConverter().fromJson(json['thickness']),
      indent: const DoubleConverter().fromJson(json['indent']),
      endIndent: const DoubleConverter().fromJson(json['endIndent']),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$PhlutsVerticalDividerToJson(
  PhlutsVerticalDivider instance,
) => <String, dynamic>{
  'width': const DoubleConverter().toJson(instance.width),
  'thickness': const DoubleConverter().toJson(instance.thickness),
  'indent': const DoubleConverter().toJson(instance.indent),
  'endIndent': const DoubleConverter().toJson(instance.endIndent),
  'color': instance.color,
  'type': instance.type,
};
