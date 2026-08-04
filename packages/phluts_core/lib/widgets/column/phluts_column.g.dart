// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsColumn _$PhlutsColumnFromJson(Map<String, dynamic> json) => PhlutsColumn(
  mainAxisAlignment: $enumDecodeNullable(
    _$PhlutsMainAxisAlignmentEnumMap,
    json['mainAxisAlignment'],
  ),
  mainAxisSize: $enumDecodeNullable(
    _$PhlutsMainAxisSizeEnumMap,
    json['mainAxisSize'],
  ),
  crossAxisAlignment: $enumDecodeNullable(
    _$PhlutsCrossAxisAlignmentEnumMap,
    json['crossAxisAlignment'],
  ),
  textDirection: $enumDecodeNullable(
    _$PhlutsTextDirectionEnumMap,
    json['textDirection'],
  ),
  verticalDirection: $enumDecodeNullable(
    _$PhlutsVerticalDirectionEnumMap,
    json['verticalDirection'],
  ),
  textBaseline: $enumDecodeNullable(
    _$PhlutsTextBaselineEnumMap,
    json['textBaseline'],
  ),
  spacing: const DoubleConverter().fromJson(json['spacing']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsColumnToJson(PhlutsColumn instance) =>
    <String, dynamic>{
      'mainAxisAlignment':
          _$PhlutsMainAxisAlignmentEnumMap[instance.mainAxisAlignment],
      'mainAxisSize': _$PhlutsMainAxisSizeEnumMap[instance.mainAxisSize],
      'crossAxisAlignment':
          _$PhlutsCrossAxisAlignmentEnumMap[instance.crossAxisAlignment],
      'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
      'verticalDirection':
          _$PhlutsVerticalDirectionEnumMap[instance.verticalDirection],
      'textBaseline': _$PhlutsTextBaselineEnumMap[instance.textBaseline],
      'spacing': const DoubleConverter().toJson(instance.spacing),
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };

const _$PhlutsMainAxisAlignmentEnumMap = {
  PhlutsMainAxisAlignment.start: 'start',
  PhlutsMainAxisAlignment.end: 'end',
  PhlutsMainAxisAlignment.center: 'center',
  PhlutsMainAxisAlignment.spaceBetween: 'spaceBetween',
  PhlutsMainAxisAlignment.spaceAround: 'spaceAround',
  PhlutsMainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$PhlutsMainAxisSizeEnumMap = {
  PhlutsMainAxisSize.min: 'min',
  PhlutsMainAxisSize.max: 'max',
};

const _$PhlutsCrossAxisAlignmentEnumMap = {
  PhlutsCrossAxisAlignment.start: 'start',
  PhlutsCrossAxisAlignment.end: 'end',
  PhlutsCrossAxisAlignment.center: 'center',
  PhlutsCrossAxisAlignment.stretch: 'stretch',
  PhlutsCrossAxisAlignment.baseline: 'baseline',
};

const _$PhlutsTextDirectionEnumMap = {
  PhlutsTextDirection.rtl: 'rtl',
  PhlutsTextDirection.ltr: 'ltr',
};

const _$PhlutsVerticalDirectionEnumMap = {
  PhlutsVerticalDirection.up: 'up',
  PhlutsVerticalDirection.down: 'down',
};

const _$PhlutsTextBaselineEnumMap = {
  PhlutsTextBaseline.alphabetic: 'alphabetic',
  PhlutsTextBaseline.ideographic: 'ideographic',
};
