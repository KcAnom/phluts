// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_dropdown_menu_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDropdownMenuEntry _$PhlutsDropdownMenuEntryFromJson(
  Map<String, dynamic> json,
) => PhlutsDropdownMenuEntry(
  value: json['value'],
  label: json['label'] as String? ?? '',
  labelWidget: json['labelWidget'] == null
      ? null
      : PhlutsWidget.fromJson(json['labelWidget'] as Map<String, dynamic>),
  leadingIcon: json['leadingIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['leadingIcon'] as Map<String, dynamic>),
  trailingIcon: json['trailingIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['trailingIcon'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool?,
  style: json['style'] == null
      ? null
      : PhlutsButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsDropdownMenuEntryToJson(
  PhlutsDropdownMenuEntry instance,
) => <String, dynamic>{
  'value': instance.value,
  'label': instance.label,
  'labelWidget': instance.labelWidget?.toJson(),
  'leadingIcon': instance.leadingIcon?.toJson(),
  'trailingIcon': instance.trailingIcon?.toJson(),
  'enabled': instance.enabled,
  'style': instance.style?.toJson(),
};
