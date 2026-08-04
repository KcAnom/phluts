// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_elevated_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsElevatedButton _$PhlutsElevatedButtonFromJson(Map<String, dynamic> json) =>
    PhlutsElevatedButton(
      onPressed: json['onPressed'] == null
          ? null
          : PhlutsAction.fromJson(json['onPressed'] as Map<String, dynamic>),
      onLongPress: json['onLongPress'] == null
          ? null
          : PhlutsAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
      onHover: json['onHover'] == null
          ? null
          : PhlutsAction.fromJson(json['onHover'] as Map<String, dynamic>),
      onFocusChange: json['onFocusChange'] == null
          ? null
          : PhlutsAction.fromJson(json['onFocusChange'] as Map<String, dynamic>),
      style: json['style'] == null
          ? null
          : PhlutsButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      autofocus: json['autofocus'] as bool?,
      clipBehavior: $enumDecodeNullable(
        _$PhlutsClipEnumMap,
        json['clipBehavior'],
      ),
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsElevatedButtonToJson(PhlutsElevatedButton instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'onHover': instance.onHover?.toJson(),
      'onFocusChange': instance.onFocusChange?.toJson(),
      'style': instance.style?.toJson(),
      'autofocus': instance.autofocus,
      'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
