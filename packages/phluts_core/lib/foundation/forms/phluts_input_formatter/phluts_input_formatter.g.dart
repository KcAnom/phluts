// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_input_formatter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsInputFormatter _$PhlutsInputFormatterFromJson(Map<String, dynamic> json) =>
    PhlutsInputFormatter(
      type: $enumDecode(_$PhlutsInputFormatterTypeEnumMap, json['type']),
      rule: json['rule'] as String?,
      mask: json['mask'] as String?,
    );

Map<String, dynamic> _$PhlutsInputFormatterToJson(PhlutsInputFormatter instance) =>
    <String, dynamic>{
      'type': _$PhlutsInputFormatterTypeEnumMap[instance.type]!,
      'rule': instance.rule,
      'mask': instance.mask,
    };

const _$PhlutsInputFormatterTypeEnumMap = {
  PhlutsInputFormatterType.allow: 'allow',
  PhlutsInputFormatterType.deny: 'deny',
  PhlutsInputFormatterType.mask: 'mask',
};
