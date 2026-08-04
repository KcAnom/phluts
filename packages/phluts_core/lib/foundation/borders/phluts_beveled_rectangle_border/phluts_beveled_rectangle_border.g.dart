// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_beveled_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBeveledRectangleBorder _$PhlutsBeveledRectangleBorderFromJson(
  Map<String, dynamic> json,
) => PhlutsBeveledRectangleBorder(
  side: json['side'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  borderRadius: json['borderRadius'] == null
      ? null
      : PhlutsBorderRadius.fromJson(json['borderRadius']),
);

Map<String, dynamic> _$PhlutsBeveledRectangleBorderToJson(
  PhlutsBeveledRectangleBorder instance,
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
