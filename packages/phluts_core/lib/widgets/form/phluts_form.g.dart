// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsForm _$PhlutsFormFromJson(Map<String, dynamic> json) => PhlutsForm(
  autovalidateMode: $enumDecodeNullable(
    _$PhlutsAutovalidateModeEnumMap,
    json['autovalidateMode'],
  ),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsFormToJson(PhlutsForm instance) =>
    <String, dynamic>{
      'autovalidateMode':
          _$PhlutsAutovalidateModeEnumMap[instance.autovalidateMode],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$PhlutsAutovalidateModeEnumMap = {
  PhlutsAutovalidateMode.disabled: 'disabled',
  PhlutsAutovalidateMode.always: 'always',
  PhlutsAutovalidateMode.onUserInteraction: 'onUserInteraction',
};
