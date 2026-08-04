// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_fitted_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsFittedBox _$PhlutsFittedBoxFromJson(Map<String, dynamic> json) =>
    PhlutsFittedBox(
      fit: $enumDecodeNullable(_$PhlutsBoxFitEnumMap, json['fit']),
      alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
      clipBehavior: $enumDecodeNullable(
        _$PhlutsClipEnumMap,
        json['clipBehavior'],
      ),
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsFittedBoxToJson(PhlutsFittedBox instance) =>
    <String, dynamic>{
      'fit': _$PhlutsBoxFitEnumMap[instance.fit],
      'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
      'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$PhlutsBoxFitEnumMap = {
  PhlutsBoxFit.fill: 'fill',
  PhlutsBoxFit.contain: 'contain',
  PhlutsBoxFit.cover: 'cover',
  PhlutsBoxFit.fitWidth: 'fitWidth',
  PhlutsBoxFit.fitHeight: 'fitHeight',
  PhlutsBoxFit.none: 'none',
  PhlutsBoxFit.scaleDown: 'scaleDown',
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

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
