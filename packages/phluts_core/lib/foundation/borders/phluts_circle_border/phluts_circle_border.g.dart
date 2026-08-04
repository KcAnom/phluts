// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_circle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCircleBorder _$PhlutsCircleBorderFromJson(Map<String, dynamic> json) =>
    PhlutsCircleBorder(
      side: json['side'] == null
          ? null
          : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      eccentricity: (json['eccentricity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PhlutsCircleBorderToJson(PhlutsCircleBorder instance) =>
    <String, dynamic>{
      'side': instance.side?.toJson(),
      'type': _$PhlutsShapeBorderTypeEnumMap[instance.type]!,
      'eccentricity': instance.eccentricity,
    };

const _$PhlutsShapeBorderTypeEnumMap = {
  PhlutsShapeBorderType.circleBorder: 'circleBorder',
  PhlutsShapeBorderType.roundedRectangleBorder: 'roundedRectangleBorder',
  PhlutsShapeBorderType.continuousRectangleBorder: 'continuousRectangleBorder',
  PhlutsShapeBorderType.beveledRectangleBorder: 'beveledRectangleBorder',
};
