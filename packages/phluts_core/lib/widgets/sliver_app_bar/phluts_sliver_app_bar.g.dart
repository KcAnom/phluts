// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_app_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverAppBar _$PhlutsSliverAppBarFromJson(
  Map<String, dynamic> json,
) => PhlutsSliverAppBar(
  leading: json['leading'] == null
      ? null
      : PhlutsWidget.fromJson(json['leading'] as Map<String, dynamic>),
  automaticallyImplyLeading: json['automaticallyImplyLeading'] as bool?,
  title: json['title'] == null
      ? null
      : PhlutsWidget.fromJson(json['title'] as Map<String, dynamic>),
  actions: (json['actions'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  flexibleSpace: json['flexibleSpace'] == null
      ? null
      : PhlutsWidget.fromJson(json['flexibleSpace'] as Map<String, dynamic>),
  bottom: json['bottom'] == null
      ? null
      : PhlutsWidget.fromJson(json['bottom'] as Map<String, dynamic>),
  elevation: const DoubleConverter().fromJson(json['elevation']),
  scrolledUnderElevation: const DoubleConverter().fromJson(
    json['scrolledUnderElevation'],
  ),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  forceElevated: json['forceElevated'] as bool?,
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
  primary: json['primary'] as bool?,
  centerTitle: json['centerTitle'] as bool?,
  excludeHeaderSemantics: json['excludeHeaderSemantics'] as bool?,
  titleSpacing: const DoubleConverter().fromJson(json['titleSpacing']),
  collapsedHeight: const DoubleConverter().fromJson(json['collapsedHeight']),
  expandedHeight: const DoubleConverter().fromJson(json['expandedHeight']),
  floating: json['floating'] as bool?,
  pinned: json['pinned'] as bool?,
  snap: json['snap'] as bool?,
  stretch: json['stretch'] as bool?,
  stretchTriggerOffset: const DoubleConverter().fromJson(
    json['stretchTriggerOffset'],
  ),
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  toolbarHeight: const DoubleConverter().fromJson(json['toolbarHeight']),
  leadingWidth: const DoubleConverter().fromJson(json['leadingWidth']),
  toolbarTextStyle: json['toolbarTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['toolbarTextStyle']),
  titleTextStyle: json['titleTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['titleTextStyle']),
  systemOverlayStyle: json['systemOverlayStyle'] == null
      ? null
      : PhlutsSystemUIOverlayStyle.fromJson(
          json['systemOverlayStyle'] as Map<String, dynamic>,
        ),
  forceMaterialTransparency: json['forceMaterialTransparency'] as bool?,
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  actionsPadding: json['actionsPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['actionsPadding']),
);

Map<String, dynamic> _$PhlutsSliverAppBarToJson(
  PhlutsSliverAppBar instance,
) => <String, dynamic>{
  'leading': instance.leading?.toJson(),
  'automaticallyImplyLeading': instance.automaticallyImplyLeading,
  'title': instance.title?.toJson(),
  'actions': instance.actions?.map((e) => e.toJson()).toList(),
  'flexibleSpace': instance.flexibleSpace?.toJson(),
  'bottom': instance.bottom?.toJson(),
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'scrolledUnderElevation': const DoubleConverter().toJson(
    instance.scrolledUnderElevation,
  ),
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'forceElevated': instance.forceElevated,
  'backgroundColor': instance.backgroundColor,
  'foregroundColor': instance.foregroundColor,
  'primary': instance.primary,
  'centerTitle': instance.centerTitle,
  'excludeHeaderSemantics': instance.excludeHeaderSemantics,
  'titleSpacing': const DoubleConverter().toJson(instance.titleSpacing),
  'collapsedHeight': const DoubleConverter().toJson(instance.collapsedHeight),
  'expandedHeight': const DoubleConverter().toJson(instance.expandedHeight),
  'floating': instance.floating,
  'pinned': instance.pinned,
  'snap': instance.snap,
  'stretch': instance.stretch,
  'stretchTriggerOffset': const DoubleConverter().toJson(
    instance.stretchTriggerOffset,
  ),
  'shape': instance.shape?.toJson(),
  'toolbarHeight': const DoubleConverter().toJson(instance.toolbarHeight),
  'leadingWidth': const DoubleConverter().toJson(instance.leadingWidth),
  'toolbarTextStyle': instance.toolbarTextStyle?.toJson(),
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'systemOverlayStyle': instance.systemOverlayStyle?.toJson(),
  'forceMaterialTransparency': instance.forceMaterialTransparency,
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'actionsPadding': instance.actionsPadding?.toJson(),
  'type': instance.type,
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
