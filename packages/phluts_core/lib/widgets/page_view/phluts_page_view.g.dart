// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_page_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsPageView _$PhlutsPageViewFromJson(
  Map<String, dynamic> json,
) => PhlutsPageView(
  scrollDirection: $enumDecodeNullable(
    _$PhlutsAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  physics: $enumDecodeNullable(_$PhlutsScrollPhysicsEnumMap, json['physics']),
  pageSnapping: json['pageSnapping'] as bool?,
  onPageChanged: json['onPageChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onPageChanged'] as Map<String, dynamic>),
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  allowImplicitScrolling: json['allowImplicitScrolling'] as bool?,
  restorationId: json['restorationId'] as String?,
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  padEnds: json['padEnds'] as bool?,
  initialPage: (json['initialPage'] as num?)?.toInt(),
  keepPage: json['keepPage'] as bool?,
  viewportFraction: const DoubleConverter().fromJson(json['viewportFraction']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsPageViewToJson(
  PhlutsPageView instance,
) => <String, dynamic>{
  'scrollDirection': _$PhlutsAxisEnumMap[instance.scrollDirection],
  'reverse': instance.reverse,
  'physics': _$PhlutsScrollPhysicsEnumMap[instance.physics],
  'pageSnapping': instance.pageSnapping,
  'onPageChanged': instance.onPageChanged?.toJson(),
  'dragStartBehavior':
      _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'allowImplicitScrolling': instance.allowImplicitScrolling,
  'restorationId': instance.restorationId,
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'padEnds': instance.padEnds,
  'initialPage': instance.initialPage,
  'keepPage': instance.keepPage,
  'viewportFraction': const DoubleConverter().toJson(instance.viewportFraction),
  'children': instance.children?.map((e) => e.toJson()).toList(),
  'type': instance.type,
};

const _$PhlutsAxisEnumMap = {
  PhlutsAxis.horizontal: 'horizontal',
  PhlutsAxis.vertical: 'vertical',
};

const _$PhlutsScrollPhysicsEnumMap = {
  PhlutsScrollPhysics.never: 'never',
  PhlutsScrollPhysics.bouncing: 'bouncing',
  PhlutsScrollPhysics.clamping: 'clamping',
  PhlutsScrollPhysics.fixed: 'fixed',
  PhlutsScrollPhysics.page: 'page',
};

const _$PhlutsDragStartBehaviorEnumMap = {
  PhlutsDragStartBehavior.down: 'down',
  PhlutsDragStartBehavior.start: 'start',
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
