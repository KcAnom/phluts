// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_carousel_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCarouselView _$PhlutsCarouselViewFromJson(Map<String, dynamic> json) =>
    PhlutsCarouselView(
      carouselType: $enumDecodeNullable(
        _$PhlutsCarouselViewTypeEnumMap,
        json['carouselType'],
      ),
      padding: json['padding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['padding']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: const DoubleConverter().fromJson(json['elevation']),
      overlayColor: json['overlayColor'] as String?,
      itemSnapping: json['itemSnapping'] as bool?,
      shrinkExtent: const DoubleConverter().fromJson(json['shrinkExtent']),
      scrollDirection: $enumDecodeNullable(
        _$PhlutsAxisEnumMap,
        json['scrollDirection'],
      ),
      reverse: json['reverse'] as bool?,
      onTap: json['onTap'] == null
          ? null
          : PhlutsAction.fromJson(json['onTap'] as Map<String, dynamic>),
      enableSplash: json['enableSplash'] as bool?,
      itemExtent: const DoubleConverter().fromJson(json['itemExtent']),
      flexWeights: (json['flexWeights'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PhlutsCarouselViewToJson(PhlutsCarouselView instance) =>
    <String, dynamic>{
      'carouselType': _$PhlutsCarouselViewTypeEnumMap[instance.carouselType],
      'padding': instance.padding?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'elevation': const DoubleConverter().toJson(instance.elevation),
      'overlayColor': instance.overlayColor,
      'itemSnapping': instance.itemSnapping,
      'shrinkExtent': const DoubleConverter().toJson(instance.shrinkExtent),
      'scrollDirection': _$PhlutsAxisEnumMap[instance.scrollDirection],
      'reverse': instance.reverse,
      'onTap': instance.onTap?.toJson(),
      'enableSplash': instance.enableSplash,
      'itemExtent': const DoubleConverter().toJson(instance.itemExtent),
      'flexWeights': instance.flexWeights,
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };

const _$PhlutsCarouselViewTypeEnumMap = {
  PhlutsCarouselViewType.regular: 'regular',
  PhlutsCarouselViewType.weighted: 'weighted',
};

const _$PhlutsAxisEnumMap = {
  PhlutsAxis.horizontal: 'horizontal',
  PhlutsAxis.vertical: 'vertical',
};
