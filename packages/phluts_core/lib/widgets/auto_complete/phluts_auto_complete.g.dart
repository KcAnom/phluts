// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_auto_complete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsAutoComplete _$PhlutsAutoCompleteFromJson(
  Map<String, dynamic> json,
) => PhlutsAutoComplete(
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
  onSelected: json['onSelected'] == null
      ? null
      : PhlutsAction.fromJson(json['onSelected'] as Map<String, dynamic>),
  optionsMaxHeight: const DoubleConverter().fromJson(json['optionsMaxHeight']),
  optionsViewOpenDirection: $enumDecodeNullable(
    _$PhlutsOptionsViewOpenDirectionEnumMap,
    json['optionsViewOpenDirection'],
  ),
  initialValue: json['initialValue'] as String?,
);

Map<String, dynamic> _$PhlutsAutoCompleteToJson(
  PhlutsAutoComplete instance,
) => <String, dynamic>{
  'options': instance.options,
  'onSelected': instance.onSelected?.toJson(),
  'optionsMaxHeight': const DoubleConverter().toJson(instance.optionsMaxHeight),
  'optionsViewOpenDirection':
      _$PhlutsOptionsViewOpenDirectionEnumMap[instance
          .optionsViewOpenDirection],
  'initialValue': instance.initialValue,
  'type': instance.type,
};

const _$PhlutsOptionsViewOpenDirectionEnumMap = {
  PhlutsOptionsViewOpenDirection.up: 'up',
  PhlutsOptionsViewOpenDirection.down: 'down',
};
