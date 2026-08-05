// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsText _$PhlutsTextFromJson(Map<String, dynamic> json) => PhlutsText(
  data: json['data'] as String,
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PhlutsTextSpan.fromJson(e as Map<String, dynamic>))
      .toList(),
  style: json['style'] == null ? null : PhlutsTextStyle.fromJson(json['style']),
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
  softWrap: json['softWrap'] as bool?,
  overflow: $enumDecodeNullable(_$PhlutsTextOverflowEnumMap, json['overflow']),
  textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble(),
  maxLines: (json['maxLines'] as num?)?.toInt(),
  semanticsLabel: json['semanticsLabel'] as String?,
  textWidthBasis: $enumDecodeNullable(
    _$PhlutsTextWidthBasisEnumMap,
    json['textWidthBasis'],
  ),
  selectionColor: json['selectionColor'] as String?,
);

Map<String, dynamic> _$PhlutsTextToJson(PhlutsText instance) =>
    <String, dynamic>{
      'data': instance.data,
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'style': instance.style?.toJson(),
      'copyWithStyle': instance.copyWithStyle?.toJson(),
      'textAlign': _$PhlutsTextAlignEnumMap[instance.textAlign],
      'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
      'softWrap': instance.softWrap,
      'overflow': _$PhlutsTextOverflowEnumMap[instance.overflow],
      'textScaleFactor': instance.textScaleFactor,
      'maxLines': instance.maxLines,
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

const _$PhlutsTextOverflowEnumMap = {
  PhlutsTextOverflow.clip: 'clip',
  PhlutsTextOverflow.fade: 'fade',
  PhlutsTextOverflow.ellipsis: 'ellipsis',
  PhlutsTextOverflow.visible: 'visible',
};

const _$PhlutsTextWidthBasisEnumMap = {
  PhlutsTextWidthBasis.parent: 'parent',
  PhlutsTextWidthBasis.longestLine: 'longestLine',
};
