// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverList _$PhlutsSliverListFromJson(Map<String, dynamic> json) =>
    PhlutsSliverList(
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] as bool?,
      addRepaintBoundaries: json['addRepaintBoundaries'] as bool?,
      addSemanticIndexes: json['addSemanticIndexes'] as bool?,
      semanticIndexOffset: (json['semanticIndexOffset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PhlutsSliverListToJson(PhlutsSliverList instance) =>
    <String, dynamic>{
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
      'addRepaintBoundaries': instance.addRepaintBoundaries,
      'addSemanticIndexes': instance.addSemanticIndexes,
      'semanticIndexOffset': instance.semanticIndexOffset,
      'type': instance.type,
    };
