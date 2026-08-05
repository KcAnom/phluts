// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_table_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTableRow _$PhlutsTableRowFromJson(Map<String, dynamic> json) =>
    PhlutsTableRow(
      decoration: json['decoration'] == null
          ? null
          : PhlutsBoxDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>,
            ),
      children:
          (json['children'] as List<dynamic>?)
              ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PhlutsWidget>[],
    );

Map<String, dynamic> _$PhlutsTableRowToJson(PhlutsTableRow instance) =>
    <String, dynamic>{
      'decoration': instance.decoration?.toJson(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };
