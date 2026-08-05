// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_box_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBoxShadow _$PhlutsBoxShadowFromJson(Map<String, dynamic> json) =>
    PhlutsBoxShadow(
      color: json['color'] as String?,
      blurRadius: const DoubleConverter().fromJson(json['blurRadius']),
      offset: json['offset'] == null
          ? null
          : PhlutsOffset.fromJson(json['offset'] as Map<String, dynamic>),
      spreadRadius: const DoubleConverter().fromJson(json['spreadRadius']),
      blurStyle: $enumDecodeNullable(
        _$PhlutsBlurStyleEnumMap,
        json['blurStyle'],
      ),
    );

Map<String, dynamic> _$PhlutsBoxShadowToJson(PhlutsBoxShadow instance) =>
    <String, dynamic>{
      'color': instance.color,
      'blurRadius': const DoubleConverter().toJson(instance.blurRadius),
      'offset': instance.offset?.toJson(),
      'spreadRadius': const DoubleConverter().toJson(instance.spreadRadius),
      'blurStyle': _$PhlutsBlurStyleEnumMap[instance.blurStyle],
    };

const _$PhlutsBlurStyleEnumMap = {
  PhlutsBlurStyle.normal: 'normal',
  PhlutsBlurStyle.solid: 'solid',
  PhlutsBlurStyle.outer: 'outer',
  PhlutsBlurStyle.inner: 'inner',
};
