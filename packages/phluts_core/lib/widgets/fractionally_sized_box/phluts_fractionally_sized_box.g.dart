// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_fractionally_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsFractionallySizedBox _$PhlutsFractionallySizedBoxFromJson(
  Map<String, dynamic> json,
) => PhlutsFractionallySizedBox(
  widthFactor: const DoubleConverter().fromJson(json['widthFactor']),
  heightFactor: const DoubleConverter().fromJson(json['heightFactor']),
  alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsFractionallySizedBoxToJson(
  PhlutsFractionallySizedBox instance,
) => <String, dynamic>{
  'widthFactor': const DoubleConverter().toJson(instance.widthFactor),
  'heightFactor': const DoubleConverter().toJson(instance.heightFactor),
  'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
  'child': instance.child?.toJson(),
  'type': instance.type,
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
