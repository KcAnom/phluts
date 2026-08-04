// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsFlexible _$PhlutsFlexibleFromJson(Map<String, dynamic> json) => PhlutsFlexible(
  flex: (json['flex'] as num?)?.toInt(),
  fit: $enumDecodeNullable(_$PhlutsFlexFitEnumMap, json['fit']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsFlexibleToJson(PhlutsFlexible instance) =>
    <String, dynamic>{
      'flex': instance.flex,
      'fit': _$PhlutsFlexFitEnumMap[instance.fit],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$PhlutsFlexFitEnumMap = {
  PhlutsFlexFit.tight: 'tight',
  PhlutsFlexFit.loose: 'loose',
};
