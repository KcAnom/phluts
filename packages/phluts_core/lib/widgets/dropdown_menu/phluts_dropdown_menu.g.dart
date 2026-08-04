// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_dropdown_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDropdownMenu _$PhlutsDropdownMenuFromJson(
  Map<String, dynamic> json,
) => PhlutsDropdownMenu(
  enabled: json['enabled'] as bool?,
  width: const DoubleConverter().fromJson(json['width']),
  menuHeight: const DoubleConverter().fromJson(json['menuHeight']),
  leadingIcon: json['leadingIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['leadingIcon'] as Map<String, dynamic>),
  trailingIcon: json['trailingIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['trailingIcon'] as Map<String, dynamic>),
  label: json['label'] == null
      ? null
      : PhlutsWidget.fromJson(json['label'] as Map<String, dynamic>),
  hintText: json['hintText'] as String?,
  helperText: json['helperText'] as String?,
  errorText: json['errorText'] as String?,
  selectedTrailingIcon: json['selectedTrailingIcon'] == null
      ? null
      : PhlutsWidget.fromJson(
          json['selectedTrailingIcon'] as Map<String, dynamic>,
        ),
  enableFilter: json['enableFilter'] as bool?,
  enableSearch: json['enableSearch'] as bool?,
  keyboardType: $enumDecodeNullable(
    _$PhlutsTextInputTypeEnumMap,
    json['keyboardType'],
  ),
  textStyle: json['textStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['textStyle']),
  textAlign: $enumDecodeNullable(_$PhlutsTextAlignEnumMap, json['textAlign']),
  inputDecorationTheme: json['inputDecorationTheme'] == null
      ? null
      : PhlutsInputDecorationTheme.fromJson(
          json['inputDecorationTheme'] as Map<String, dynamic>,
        ),
  inputFormatters: (json['inputFormatters'] as List<dynamic>?)
      ?.map((e) => PhlutsInputFormatter.fromJson(e as Map<String, dynamic>))
      .toList(),
  alignmentOffset: json['alignmentOffset'] == null
      ? null
      : PhlutsOffset.fromJson(json['alignmentOffset'] as Map<String, dynamic>),
  expandedInsets: json['expandedInsets'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['expandedInsets']),
  requestFocusOnTap: json['requestFocusOnTap'] as bool?,
  initialSelection: json['initialSelection'],
  dropdownMenuEntries: (json['dropdownMenuEntries'] as List<dynamic>?)
      ?.map((e) => PhlutsDropdownMenuEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
  closeBehavior: $enumDecodeNullable(
    _$PhlutsDropdownMenuCloseBehaviorEnumMap,
    json['closeBehavior'],
  ),
);

Map<String, dynamic> _$PhlutsDropdownMenuToJson(
  PhlutsDropdownMenu instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'width': const DoubleConverter().toJson(instance.width),
  'menuHeight': const DoubleConverter().toJson(instance.menuHeight),
  'leadingIcon': instance.leadingIcon?.toJson(),
  'trailingIcon': instance.trailingIcon?.toJson(),
  'label': instance.label?.toJson(),
  'hintText': instance.hintText,
  'helperText': instance.helperText,
  'errorText': instance.errorText,
  'selectedTrailingIcon': instance.selectedTrailingIcon?.toJson(),
  'enableFilter': instance.enableFilter,
  'enableSearch': instance.enableSearch,
  'keyboardType': _$PhlutsTextInputTypeEnumMap[instance.keyboardType],
  'textStyle': instance.textStyle?.toJson(),
  'textAlign': _$PhlutsTextAlignEnumMap[instance.textAlign],
  'inputDecorationTheme': instance.inputDecorationTheme?.toJson(),
  'inputFormatters': instance.inputFormatters?.map((e) => e.toJson()).toList(),
  'alignmentOffset': instance.alignmentOffset?.toJson(),
  'expandedInsets': instance.expandedInsets?.toJson(),
  'requestFocusOnTap': instance.requestFocusOnTap,
  'initialSelection': instance.initialSelection,
  'dropdownMenuEntries': instance.dropdownMenuEntries
      ?.map((e) => e.toJson())
      .toList(),
  'closeBehavior':
      _$PhlutsDropdownMenuCloseBehaviorEnumMap[instance.closeBehavior],
  'type': instance.type,
};

const _$PhlutsTextInputTypeEnumMap = {
  PhlutsTextInputType.text: 'text',
  PhlutsTextInputType.multiline: 'multiline',
  PhlutsTextInputType.number: 'number',
  PhlutsTextInputType.phone: 'phone',
  PhlutsTextInputType.datetime: 'datetime',
  PhlutsTextInputType.emailAddress: 'emailAddress',
  PhlutsTextInputType.url: 'url',
  PhlutsTextInputType.visiblePassword: 'visiblePassword',
  PhlutsTextInputType.name: 'name',
  PhlutsTextInputType.streetAddress: 'streetAddress',
  PhlutsTextInputType.none: 'none',
};

const _$PhlutsTextAlignEnumMap = {
  PhlutsTextAlign.left: 'left',
  PhlutsTextAlign.right: 'right',
  PhlutsTextAlign.center: 'center',
  PhlutsTextAlign.justify: 'justify',
  PhlutsTextAlign.start: 'start',
  PhlutsTextAlign.end: 'end',
};

const _$PhlutsDropdownMenuCloseBehaviorEnumMap = {
  PhlutsDropdownMenuCloseBehavior.all: 'all',
  PhlutsDropdownMenuCloseBehavior.self: 'self',
  PhlutsDropdownMenuCloseBehavior.none: 'none',
};
