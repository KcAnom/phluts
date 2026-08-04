// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_grid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverGrid _$PhlutsSliverGridFromJson(
  Map<String, dynamic> json,
) => PhlutsSliverGrid(
  crossAxisCount: (json['crossAxisCount'] as num?)?.toInt(),
  mainAxisSpacing: const DoubleConverter().fromJson(json['mainAxisSpacing']),
  crossAxisSpacing: const DoubleConverter().fromJson(json['crossAxisSpacing']),
  childAspectRatio: const DoubleConverter().fromJson(json['childAspectRatio']),
  mainAxisExtent: const DoubleConverter().fromJson(json['mainAxisExtent']),
  addAutomaticKeepAlives: json['addAutomaticKeepAlives'] as bool?,
  addRepaintBoundaries: json['addRepaintBoundaries'] as bool?,
  addSemanticIndexes: json['addSemanticIndexes'] as bool?,
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsSliverGridToJson(
  PhlutsSliverGrid instance,
) => <String, dynamic>{
  'crossAxisCount': instance.crossAxisCount,
  'mainAxisSpacing': const DoubleConverter().toJson(instance.mainAxisSpacing),
  'crossAxisSpacing': const DoubleConverter().toJson(instance.crossAxisSpacing),
  'childAspectRatio': const DoubleConverter().toJson(instance.childAspectRatio),
  'mainAxisExtent': const DoubleConverter().toJson(instance.mainAxisExtent),
  'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
  'addRepaintBoundaries': instance.addRepaintBoundaries,
  'addSemanticIndexes': instance.addSemanticIndexes,
  'children': instance.children?.map((e) => e.toJson()).toList(),
  'type': instance.type,
};
