// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsRoundedRectangleBorder _$PhlutsRoundedRectangleBorderFromJson(
  Map<String, dynamic> json,
) => PhlutsRoundedRectangleBorder(
  side: json['side'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  borderRadius: json['borderRadius'] == null
      ? null
      : PhlutsBorderRadius.fromJson(json['borderRadius']),
);

Map<String, dynamic> _$PhlutsRoundedRectangleBorderToJson(
  PhlutsRoundedRectangleBorder instance,
) => <String, dynamic>{
  'side': instance.side?.toJson(),
  'type': _$PhlutsShapeBorderTypeEnumMap[instance.type]!,
  'borderRadius': instance.borderRadius?.toJson(),
};

const _$PhlutsShapeBorderTypeEnumMap = {
  PhlutsShapeBorderType.circleBorder: 'circleBorder',
  PhlutsShapeBorderType.roundedRectangleBorder: 'roundedRectangleBorder',
  PhlutsShapeBorderType.continuousRectangleBorder: 'continuousRectangleBorder',
  PhlutsShapeBorderType.beveledRectangleBorder: 'beveledRectangleBorder',
};
