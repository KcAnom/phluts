// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_text_span.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTextSpan _$PhlutsTextSpanFromJson(Map<String, dynamic> json) =>
    PhlutsTextSpan(
      text: json['text'] as String?,
      style: json['style'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['style']),
      children:
          (json['children'] as List<dynamic>?)
              ?.map((e) => PhlutsTextSpan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      onTap: json['onTap'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PhlutsTextSpanToJson(PhlutsTextSpan instance) =>
    <String, dynamic>{
      'text': instance.text,
      'style': instance.style?.toJson(),
      'children': instance.children.map((e) => e.toJson()).toList(),
      'onTap': instance.onTap,
    };
