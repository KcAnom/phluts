// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_text_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTextFormField _$PhlutsTextFormFieldFromJson(
  Map<String, dynamic> json,
) => PhlutsTextFormField(
  id: json['id'] as String?,
  decoration: json['decoration'] == null
      ? null
      : PhlutsInputDecoration.fromJson(
          json['decoration'] as Map<String, dynamic>,
        ),
  initialValue: json['initialValue'] as String?,
  keyboardType: $enumDecodeNullable(
    _$PhlutsTextInputTypeEnumMap,
    json['keyboardType'],
  ),
  textInputAction: $enumDecodeNullable(
    _$PhlutsTextInputActionEnumMap,
    json['textInputAction'],
  ),
  textCapitalization: $enumDecodeNullable(
    _$PhlutsTextCapitalizationEnumMap,
    json['textCapitalization'],
  ),
  style: json['style'] == null ? null : PhlutsTextStyle.fromJson(json['style']),
  textAlign: $enumDecodeNullable(_$PhlutsTextAlignEnumMap, json['textAlign']),
  textDirection: $enumDecodeNullable(
    _$PhlutsTextDirectionEnumMap,
    json['textDirection'],
  ),
  readOnly: json['readOnly'] as bool?,
  showCursor: json['showCursor'] as bool?,
  autofocus: json['autofocus'] as bool?,
  obscuringCharacter: json['obscuringCharacter'] as String?,
  maxLines: (json['maxLines'] as num?)?.toInt(),
  minLines: (json['minLines'] as num?)?.toInt(),
  maxLength: (json['maxLength'] as num?)?.toInt(),
  obscureText: json['obscureText'] as bool?,
  autocorrect: json['autocorrect'] as bool?,
  smartDashesType: $enumDecodeNullable(
    _$PhlutsSmartDashesTypeEnumMap,
    json['smartDashesType'],
  ),
  smartQuotesType: $enumDecodeNullable(
    _$PhlutsSmartQuotesTypeEnumMap,
    json['smartQuotesType'],
  ),
  maxLengthEnforcement: $enumDecodeNullable(
    _$PhlutsMaxLengthEnforcementEnumMap,
    json['maxLengthEnforcement'],
  ),
  expands: json['expands'] as bool?,
  keyboardAppearance: $enumDecodeNullable(
    _$PhlutsBrightnessEnumMap,
    json['keyboardAppearance'],
  ),
  scrollPadding: json['scrollPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['scrollPadding']),
  restorationId: json['restorationId'] as String?,
  enableIMEPersonalizedLearning: json['enableIMEPersonalizedLearning'] as bool?,
  enableSuggestions: json['enableSuggestions'] as bool?,
  enabled: json['enabled'] as bool?,
  cursorWidth: const DoubleConverter().fromJson(json['cursorWidth']),
  cursorHeight: const DoubleConverter().fromJson(json['cursorHeight']),
  cursorColor: json['cursorColor'] as String?,
  autovalidateMode: $enumDecodeNullable(
    _$PhlutsAutovalidateModeEnumMap,
    json['autovalidateMode'],
  ),
  inputFormatters: (json['inputFormatters'] as List<dynamic>?)
      ?.map((e) => PhlutsInputFormatter.fromJson(e as Map<String, dynamic>))
      .toList(),
  validatorRules: (json['validatorRules'] as List<dynamic>?)
      ?.map((e) => PhlutsFormFieldValidator.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsTextFormFieldToJson(
  PhlutsTextFormField instance,
) => <String, dynamic>{
  'id': instance.id,
  'decoration': instance.decoration?.toJson(),
  'initialValue': instance.initialValue,
  'keyboardType': _$PhlutsTextInputTypeEnumMap[instance.keyboardType],
  'textInputAction': _$PhlutsTextInputActionEnumMap[instance.textInputAction],
  'textCapitalization':
      _$PhlutsTextCapitalizationEnumMap[instance.textCapitalization],
  'style': instance.style?.toJson(),
  'textAlign': _$PhlutsTextAlignEnumMap[instance.textAlign],
  'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
  'readOnly': instance.readOnly,
  'showCursor': instance.showCursor,
  'autofocus': instance.autofocus,
  'obscuringCharacter': instance.obscuringCharacter,
  'maxLines': instance.maxLines,
  'minLines': instance.minLines,
  'maxLength': instance.maxLength,
  'obscureText': instance.obscureText,
  'autocorrect': instance.autocorrect,
  'smartDashesType': _$PhlutsSmartDashesTypeEnumMap[instance.smartDashesType],
  'smartQuotesType': _$PhlutsSmartQuotesTypeEnumMap[instance.smartQuotesType],
  'maxLengthEnforcement':
      _$PhlutsMaxLengthEnforcementEnumMap[instance.maxLengthEnforcement],
  'expands': instance.expands,
  'keyboardAppearance': _$PhlutsBrightnessEnumMap[instance.keyboardAppearance],
  'scrollPadding': instance.scrollPadding?.toJson(),
  'restorationId': instance.restorationId,
  'enableIMEPersonalizedLearning': instance.enableIMEPersonalizedLearning,
  'enableSuggestions': instance.enableSuggestions,
  'enabled': instance.enabled,
  'cursorWidth': const DoubleConverter().toJson(instance.cursorWidth),
  'cursorHeight': const DoubleConverter().toJson(instance.cursorHeight),
  'cursorColor': instance.cursorColor,
  'autovalidateMode':
      _$PhlutsAutovalidateModeEnumMap[instance.autovalidateMode],
  'inputFormatters': instance.inputFormatters?.map((e) => e.toJson()).toList(),
  'validatorRules': instance.validatorRules?.map((e) => e.toJson()).toList(),
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

const _$PhlutsTextInputActionEnumMap = {
  PhlutsTextInputAction.none: 'none',
  PhlutsTextInputAction.unspecified: 'unspecified',
  PhlutsTextInputAction.done: 'done',
  PhlutsTextInputAction.go: 'go',
  PhlutsTextInputAction.search: 'search',
  PhlutsTextInputAction.send: 'send',
  PhlutsTextInputAction.next: 'next',
  PhlutsTextInputAction.previous: 'previous',
  PhlutsTextInputAction.continueAction: 'continueAction',
  PhlutsTextInputAction.join: 'join',
  PhlutsTextInputAction.route: 'route',
  PhlutsTextInputAction.emergencyCall: 'emergencyCall',
  PhlutsTextInputAction.newline: 'newline',
};

const _$PhlutsTextCapitalizationEnumMap = {
  PhlutsTextCapitalization.none: 'none',
  PhlutsTextCapitalization.characters: 'characters',
  PhlutsTextCapitalization.words: 'words',
  PhlutsTextCapitalization.sentences: 'sentences',
};

const _$PhlutsTextAlignEnumMap = {
  PhlutsTextAlign.left: 'left',
  PhlutsTextAlign.right: 'right',
  PhlutsTextAlign.center: 'center',
  PhlutsTextAlign.justify: 'justify',
  PhlutsTextAlign.start: 'start',
  PhlutsTextAlign.end: 'end',
};

const _$PhlutsTextDirectionEnumMap = {
  PhlutsTextDirection.rtl: 'rtl',
  PhlutsTextDirection.ltr: 'ltr',
};

const _$PhlutsSmartDashesTypeEnumMap = {
  PhlutsSmartDashesType.disabled: 'disabled',
  PhlutsSmartDashesType.enabled: 'enabled',
};

const _$PhlutsSmartQuotesTypeEnumMap = {
  PhlutsSmartQuotesType.disabled: 'disabled',
  PhlutsSmartQuotesType.enabled: 'enabled',
};

const _$PhlutsMaxLengthEnforcementEnumMap = {
  PhlutsMaxLengthEnforcement.none: 'none',
  PhlutsMaxLengthEnforcement.enforced: 'enforced',
};

const _$PhlutsBrightnessEnumMap = {
  PhlutsBrightness.light: 'light',
  PhlutsBrightness.dark: 'dark',
  PhlutsBrightness.system: 'system',
};

const _$PhlutsAutovalidateModeEnumMap = {
  PhlutsAutovalidateMode.disabled: 'disabled',
  PhlutsAutovalidateMode.always: 'always',
  PhlutsAutovalidateMode.onUserInteraction: 'onUserInteraction',
};
