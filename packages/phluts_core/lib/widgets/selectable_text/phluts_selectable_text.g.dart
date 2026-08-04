// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_selectable_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSelectableText _$PhlutsSelectableTextFromJson(Map<String, dynamic> json) =>
    PhlutsSelectableText(
      data: json['data'] as String,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => PhlutsTextSpan.fromJson(e as Map<String, dynamic>))
          .toList(),
      style: json['style'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['style']),
      copyWithStyle: json['copyWithStyle'] == null
          ? null
          : PhlutsCustomTextStyle.fromJson(
              json['copyWithStyle'] as Map<String, dynamic>,
            ),
      textAlign: $enumDecodeNullable(_$PhlutsTextAlignEnumMap, json['textAlign']),
      textDirection: $enumDecodeNullable(
        _$PhlutsTextDirectionEnumMap,
        json['textDirection'],
      ),
      textScaler: (json['textScaler'] as num?)?.toDouble(),
      showCursor: json['showCursor'] as bool?,
      autofocus: json['autofocus'] as bool?,
      minLines: (json['minLines'] as num?)?.toInt(),
      maxLines: (json['maxLines'] as num?)?.toInt(),
      cursorWidth: (json['cursorWidth'] as num?)?.toDouble(),
      cursorHeight: (json['cursorHeight'] as num?)?.toDouble(),
      cursorRadius: (json['cursorRadius'] as num?)?.toDouble(),
      cursorColor: json['cursorColor'] as String?,
      enableInteractiveSelection: json['enableInteractiveSelection'] as bool?,
      onTap: json['onTap'] == null
          ? null
          : PhlutsAction.fromJson(json['onTap'] as Map<String, dynamic>),
      semanticsLabel: json['semanticsLabel'] as String?,
      textWidthBasis: $enumDecodeNullable(
        _$PhlutsTextWidthBasisEnumMap,
        json['textWidthBasis'],
      ),
      selectionColor: json['selectionColor'] as String?,
    );

Map<String, dynamic> _$PhlutsSelectableTextToJson(PhlutsSelectableText instance) =>
    <String, dynamic>{
      'data': instance.data,
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'style': instance.style?.toJson(),
      'copyWithStyle': instance.copyWithStyle?.toJson(),
      'textAlign': _$PhlutsTextAlignEnumMap[instance.textAlign],
      'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
      'textScaler': instance.textScaler,
      'showCursor': instance.showCursor,
      'autofocus': instance.autofocus,
      'minLines': instance.minLines,
      'maxLines': instance.maxLines,
      'cursorWidth': instance.cursorWidth,
      'cursorHeight': instance.cursorHeight,
      'cursorRadius': instance.cursorRadius,
      'cursorColor': instance.cursorColor,
      'enableInteractiveSelection': instance.enableInteractiveSelection,
      'onTap': instance.onTap?.toJson(),
      'semanticsLabel': instance.semanticsLabel,
      'textWidthBasis': _$PhlutsTextWidthBasisEnumMap[instance.textWidthBasis],
      'selectionColor': instance.selectionColor,
      'type': instance.type,
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

const _$PhlutsTextWidthBasisEnumMap = {
  PhlutsTextWidthBasis.parent: 'parent',
  PhlutsTextWidthBasis.longestLine: 'longestLine',
};
