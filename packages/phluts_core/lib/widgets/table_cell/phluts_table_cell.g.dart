// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_table_cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTableCell _$PhlutsTableCellFromJson(Map<String, dynamic> json) =>
    PhlutsTableCell(
      verticalAlignment: $enumDecodeNullable(
        _$PhlutsTableCellVerticalAlignmentEnumMap,
        json['verticalAlignment'],
      ),
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsTableCellToJson(PhlutsTableCell instance) =>
    <String, dynamic>{
      'verticalAlignment':
          _$PhlutsTableCellVerticalAlignmentEnumMap[instance.verticalAlignment],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$PhlutsTableCellVerticalAlignmentEnumMap = {
  PhlutsTableCellVerticalAlignment.top: 'top',
  PhlutsTableCellVerticalAlignment.middle: 'middle',
  PhlutsTableCellVerticalAlignment.bottom: 'bottom',
  PhlutsTableCellVerticalAlignment.baseline: 'baseline',
  PhlutsTableCellVerticalAlignment.fill: 'fill',
};
