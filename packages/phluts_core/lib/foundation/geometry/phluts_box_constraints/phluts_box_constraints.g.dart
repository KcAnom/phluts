// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_box_constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBoxConstraints _$PhlutsBoxConstraintsFromJson(Map<String, dynamic> json) =>
    PhlutsBoxConstraints(
      minWidth: const DoubleConverter().fromJson(json['minWidth']),
      maxWidth: const DoubleConverter().fromJson(json['maxWidth']),
      minHeight: const DoubleConverter().fromJson(json['minHeight']),
      maxHeight: const DoubleConverter().fromJson(json['maxHeight']),
    );

Map<String, dynamic> _$PhlutsBoxConstraintsToJson(PhlutsBoxConstraints instance) =>
    <String, dynamic>{
      'minWidth': const DoubleConverter().toJson(instance.minWidth),
      'maxWidth': const DoubleConverter().toJson(instance.maxWidth),
      'minHeight': const DoubleConverter().toJson(instance.minHeight),
      'maxHeight': const DoubleConverter().toJson(instance.maxHeight),
    };
