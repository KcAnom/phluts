// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_gradient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsGradient _$PhlutsGradientFromJson(Map<String, dynamic> json) =>
    PhlutsGradient(
      gradientType: $enumDecodeNullable(
        _$PhlutsGradientTypeEnumMap,
        json['gradientType'],
      ),
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      stops: (json['stops'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      begin: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['begin']),
      end: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['end']),
      center: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['center']),
      focal: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['focal']),
      tileMode: $enumDecodeNullable(_$PhlutsTileModeEnumMap, json['tileMode']),
      focalRadius: (json['focalRadius'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toDouble(),
      startAngle: (json['startAngle'] as num?)?.toDouble(),
      endAngle: (json['endAngle'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PhlutsGradientToJson(PhlutsGradient instance) =>
    <String, dynamic>{
      'gradientType': _$PhlutsGradientTypeEnumMap[instance.gradientType],
      'colors': instance.colors,
      'stops': instance.stops,
      'begin': _$PhlutsAlignmentEnumMap[instance.begin],
      'end': _$PhlutsAlignmentEnumMap[instance.end],
      'center': _$PhlutsAlignmentEnumMap[instance.center],
      'focal': _$PhlutsAlignmentEnumMap[instance.focal],
      'tileMode': _$PhlutsTileModeEnumMap[instance.tileMode],
      'focalRadius': instance.focalRadius,
      'radius': instance.radius,
      'startAngle': instance.startAngle,
      'endAngle': instance.endAngle,
    };

const _$PhlutsGradientTypeEnumMap = {
  PhlutsGradientType.linear: 'linear',
  PhlutsGradientType.radial: 'radial',
  PhlutsGradientType.sweep: 'sweep',
};

const _$PhlutsAlignmentEnumMap = {
  PhlutsAlignment.topLeft: 'topLeft',
  PhlutsAlignment.topCenter: 'topCenter',
  PhlutsAlignment.topRight: 'topRight',
  PhlutsAlignment.centerLeft: 'centerLeft',
  PhlutsAlignment.center: 'center',
  PhlutsAlignment.centerRight: 'centerRight',
  PhlutsAlignment.bottomLeft: 'bottomLeft',
  PhlutsAlignment.bottomCenter: 'bottomCenter',
  PhlutsAlignment.bottomRight: 'bottomRight',
};

const _$PhlutsTileModeEnumMap = {
  PhlutsTileMode.clamp: 'clamp',
  PhlutsTileMode.repeated: 'repeated',
  PhlutsTileMode.mirror: 'mirror',
  PhlutsTileMode.decal: 'decal',
};
