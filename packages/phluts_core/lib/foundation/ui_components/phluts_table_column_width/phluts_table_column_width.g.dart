// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_table_column_width.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTableColumnWidth _$PhlutsTableColumnWidthFromJson(
  Map<String, dynamic> json,
) => PhlutsTableColumnWidth(
  type:
      $enumDecodeNullable(_$PhlutsTableColumnWidthTypeEnumMap, json['type']) ??
      PhlutsTableColumnWidthType.flexColumnWidth,
  value: const DoubleConverter().fromJson(json['value']),
);

Map<String, dynamic> _$PhlutsTableColumnWidthToJson(
  PhlutsTableColumnWidth instance,
) => <String, dynamic>{
  'type': _$PhlutsTableColumnWidthTypeEnumMap[instance.type]!,
  'value': const DoubleConverter().toJson(instance.value),
};

const _$PhlutsTableColumnWidthTypeEnumMap = {
  PhlutsTableColumnWidthType.fixedColumnWidth: 'fixedColumnWidth',
  PhlutsTableColumnWidthType.flexColumnWidth: 'flexColumnWidth',
  PhlutsTableColumnWidthType.fractionColumnWidth: 'fractionColumnWidth',
  PhlutsTableColumnWidthType.intrinsicColumnWidth: 'intrinsicColumnWidth',
};
