// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_alert_dialog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsAlertDialog _$PhlutsAlertDialogFromJson(Map<String, dynamic> json) =>
    PhlutsAlertDialog(
      icon: json['icon'] == null
          ? null
          : PhlutsWidget.fromJson(json['icon'] as Map<String, dynamic>),
      iconPadding: json['iconPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['iconPadding']),
      iconColor: json['iconColor'] as String?,
      title: json['title'] == null
          ? null
          : PhlutsWidget.fromJson(json['title'] as Map<String, dynamic>),
      titlePadding: json['titlePadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['titlePadding']),
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['titleTextStyle']),
      content: json['content'] == null
          ? null
          : PhlutsWidget.fromJson(json['content'] as Map<String, dynamic>),
      contentPadding: json['contentPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['contentPadding']),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['contentTextStyle']),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['actionsPadding']),
      actionsAlignment: $enumDecodeNullable(
        _$PhlutsMainAxisAlignmentEnumMap,
        json['actionsAlignment'],
      ),
      actionsOverflowAlignment: $enumDecodeNullable(
        _$PhlutsOverflowBarAlignmentEnumMap,
        json['actionsOverflowAlignment'],
      ),
      actionsOverflowDirection: $enumDecodeNullable(
        _$PhlutsVerticalDirectionEnumMap,
        json['actionsOverflowDirection'],
      ),
      actionsOverflowButtonSpacing: const DoubleConverter().fromJson(
        json['actionsOverflowButtonSpacing'],
      ),
      buttonPadding: json['buttonPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['buttonPadding']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: const DoubleConverter().fromJson(json['elevation']),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      semanticLabel: json['semanticLabel'] as String?,
      insetPadding: json['insetPadding'] == null
          ? const PhlutsEdgeInsets(left: 40, right: 40, top: 24, bottom: 24)
          : PhlutsEdgeInsets.fromJson(json['insetPadding']),
      clipBehavior: $enumDecodeNullable(
        _$PhlutsClipEnumMap,
        json['clipBehavior'],
      ),
      shape: json['shape'] == null
          ? null
          : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
      scrollable: json['scrollable'] as bool?,
    );

Map<String, dynamic> _$PhlutsAlertDialogToJson(
  PhlutsAlertDialog instance,
) => <String, dynamic>{
  'icon': instance.icon?.toJson(),
  'iconPadding': instance.iconPadding?.toJson(),
  'iconColor': instance.iconColor,
  'title': instance.title?.toJson(),
  'titlePadding': instance.titlePadding?.toJson(),
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'content': instance.content?.toJson(),
  'contentPadding': instance.contentPadding?.toJson(),
  'contentTextStyle': instance.contentTextStyle?.toJson(),
  'actions': instance.actions?.map((e) => e.toJson()).toList(),
  'actionsPadding': instance.actionsPadding?.toJson(),
  'actionsAlignment': _$PhlutsMainAxisAlignmentEnumMap[instance.actionsAlignment],
  'actionsOverflowAlignment':
      _$PhlutsOverflowBarAlignmentEnumMap[instance.actionsOverflowAlignment],
  'actionsOverflowDirection':
      _$PhlutsVerticalDirectionEnumMap[instance.actionsOverflowDirection],
  'actionsOverflowButtonSpacing': const DoubleConverter().toJson(
    instance.actionsOverflowButtonSpacing,
  ),
  'buttonPadding': instance.buttonPadding?.toJson(),
  'backgroundColor': instance.backgroundColor,
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'semanticLabel': instance.semanticLabel,
  'insetPadding': instance.insetPadding?.toJson(),
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'shape': instance.shape?.toJson(),
  'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
  'scrollable': instance.scrollable,
  'type': instance.type,
};

const _$PhlutsMainAxisAlignmentEnumMap = {
  PhlutsMainAxisAlignment.start: 'start',
  PhlutsMainAxisAlignment.end: 'end',
  PhlutsMainAxisAlignment.center: 'center',
  PhlutsMainAxisAlignment.spaceBetween: 'spaceBetween',
  PhlutsMainAxisAlignment.spaceAround: 'spaceAround',
  PhlutsMainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$PhlutsOverflowBarAlignmentEnumMap = {
  PhlutsOverflowBarAlignment.start: 'start',
  PhlutsOverflowBarAlignment.end: 'end',
  PhlutsOverflowBarAlignment.center: 'center',
};

const _$PhlutsVerticalDirectionEnumMap = {
  PhlutsVerticalDirection.up: 'up',
  PhlutsVerticalDirection.down: 'down',
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$PhlutsAlignmentEnumMap = {
  PhlutsAlignment.topLeft: 'topLeft',
  PhlutsAlignment.topCenter: 'topCenter',
  PhlutsAlignment.topRight: 'topRight',
  PhlutsAlignment.centerLeft: 'centerLeft',
  PhlutsAlignment.center: 'center',
  PhlutsAlignment.centerRight: 'centerRight',
  PhlutsAlignment.bottomLeft: 'bottomLeft',
  PhlutsAlignment.bottomCenter: 'bottomCenter',
  PhlutsAlignment.bottomRight: 'bottomRight',
};
