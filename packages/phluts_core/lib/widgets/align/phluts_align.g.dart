// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_align.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsAlign _$PhlutsAlignFromJson(Map<String, dynamic> json) => PhlutsAlign(
  alignment: $enumDecodeNullable(
    _$PhlutsAlignmentDirectionalEnumMap,
    json['alignment'],
  ),
  widthFactor: const DoubleConverter().fromJson(json['widthFactor']),
  heightFactor: const DoubleConverter().fromJson(json['heightFactor']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsAlignToJson(PhlutsAlign instance) => <String, dynamic>{
  'alignment': _$PhlutsAlignmentDirectionalEnumMap[instance.alignment],
  'widthFactor': const DoubleConverter().toJson(instance.widthFactor),
  'heightFactor': const DoubleConverter().toJson(instance.heightFactor),
  'child': instance.child?.toJson(),
  'type': instance.type,
};

const _$PhlutsAlignmentDirectionalEnumMap = {
  PhlutsAlignmentDirectional.topStart: 'topStart',
  PhlutsAlignmentDirectional.topCenter: 'topCenter',
  PhlutsAlignmentDirectional.topEnd: 'topEnd',
  PhlutsAlignmentDirectional.centerStart: 'centerStart',
  PhlutsAlignmentDirectional.center: 'center',
  PhlutsAlignmentDirectional.centerEnd: 'centerEnd',
  PhlutsAlignmentDirectional.bottomStart: 'bottomStart',
  PhlutsAlignmentDirectional.bottomCenter: 'bottomCenter',
  PhlutsAlignmentDirectional.bottomEnd: 'bottomEnd',
};
