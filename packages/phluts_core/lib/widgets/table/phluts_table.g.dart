// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTable _$PhlutsTableFromJson(Map<String, dynamic> json) => PhlutsTable(
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => PhlutsTableRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PhlutsTableRow>[],
  columnWidths: (json['columnWidths'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(
      int.parse(k),
      PhlutsTableColumnWidth.fromJson(e as Map<String, dynamic>),
    ),
  ),
  defaultColumnWidth: json['defaultColumnWidth'] == null
      ? null
      : PhlutsTableColumnWidth.fromJson(
          json['defaultColumnWidth'] as Map<String, dynamic>,
        ),
  textDirection: $enumDecodeNullable(
    _$PhlutsTextDirectionEnumMap,
    json['textDirection'],
  ),
  border: json['border'] == null
      ? null
      : PhlutsTableBorder.fromJson(json['border'] as Map<String, dynamic>),
  defaultVerticalAlignment: $enumDecodeNullable(
    _$PhlutsTableCellVerticalAlignmentEnumMap,
    json['defaultVerticalAlignment'],
  ),
  textBaseline: $enumDecodeNullable(
    _$PhlutsTextBaselineEnumMap,
    json['textBaseline'],
  ),
);

Map<String, dynamic> _$PhlutsTableToJson(PhlutsTable instance) => <String, dynamic>{
  'children': instance.children.map((e) => e.toJson()).toList(),
  'columnWidths': instance.columnWidths?.map(
    (k, e) => MapEntry(k.toString(), e.toJson()),
  ),
  'defaultColumnWidth': instance.defaultColumnWidth?.toJson(),
  'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
  'border': instance.border?.toJson(),
  'defaultVerticalAlignment':
      _$PhlutsTableCellVerticalAlignmentEnumMap[instance
          .defaultVerticalAlignment],
  'textBaseline': _$PhlutsTextBaselineEnumMap[instance.textBaseline],
  'type': instance.type,
};

const _$PhlutsTextDirectionEnumMap = {
  PhlutsTextDirection.rtl: 'rtl',
  PhlutsTextDirection.ltr: 'ltr',
};

const _$PhlutsTableCellVerticalAlignmentEnumMap = {
  PhlutsTableCellVerticalAlignment.top: 'top',
  PhlutsTableCellVerticalAlignment.middle: 'middle',
  PhlutsTableCellVerticalAlignment.bottom: 'bottom',
  PhlutsTableCellVerticalAlignment.baseline: 'baseline',
  PhlutsTableCellVerticalAlignment.fill: 'fill',
};

const _$PhlutsTextBaselineEnumMap = {
  PhlutsTextBaseline.alphabetic: 'alphabetic',
  PhlutsTextBaseline.ideographic: 'ideographic',
};
