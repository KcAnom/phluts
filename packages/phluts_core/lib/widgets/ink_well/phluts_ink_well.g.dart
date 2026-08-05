// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_ink_well.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsInkWell _$PhlutsInkWellFromJson(
  Map<String, dynamic> json,
) => PhlutsInkWell(
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  onTap: json['onTap'] == null
      ? null
      : PhlutsAction.fromJson(json['onTap'] as Map<String, dynamic>),
  onDoubleTap: json['onDoubleTap'] == null
      ? null
      : PhlutsAction.fromJson(json['onDoubleTap'] as Map<String, dynamic>),
  onLongPress: json['onLongPress'] == null
      ? null
      : PhlutsAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
  onTapDown: json['onTapDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onTapDown'] as Map<String, dynamic>),
  onTapUp: json['onTapUp'] == null
      ? null
      : PhlutsAction.fromJson(json['onTapUp'] as Map<String, dynamic>),
  onTapCancel: json['onTapCancel'] == null
      ? null
      : PhlutsAction.fromJson(json['onTapCancel'] as Map<String, dynamic>),
  onSecondaryTap: json['onSecondaryTap'] == null
      ? null
      : PhlutsAction.fromJson(json['onSecondaryTap'] as Map<String, dynamic>),
  onSecondaryTapUp: json['onSecondaryTapUp'] == null
      ? null
      : PhlutsAction.fromJson(json['onSecondaryTapUp'] as Map<String, dynamic>),
  onSecondaryTapDown: json['onSecondaryTapDown'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryTapDown'] as Map<String, dynamic>,
        ),
  onSecondaryTapCancel: json['onSecondaryTapCancel'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryTapCancel'] as Map<String, dynamic>,
        ),
  onHighlightChanged: json['onHighlightChanged'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onHighlightChanged'] as Map<String, dynamic>,
        ),
  onHover: json['onHover'] == null
      ? null
      : PhlutsAction.fromJson(json['onHover'] as Map<String, dynamic>),
  mouseCursor: $enumDecodeNullable(
    _$PhlutsMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  highlightColor: json['highlightColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  splashColor: json['splashColor'] as String?,
  radius: const DoubleConverter().fromJson(json['radius']),
  borderRadius: json['borderRadius'] == null
      ? null
      : PhlutsBorderRadius.fromJson(json['borderRadius']),
  customBorder: json['customBorder'] == null
      ? null
      : PhlutsShapeBorder.fromJson(
          json['customBorder'] as Map<String, dynamic>,
        ),
  enableFeedback: json['enableFeedback'] as bool?,
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
  canRequestFocus: json['canRequestFocus'] as bool?,
  onFocusChange: json['onFocusChange'] == null
      ? null
      : PhlutsAction.fromJson(json['onFocusChange'] as Map<String, dynamic>),
  autofocus: json['autofocus'] as bool?,
  hoverDuration: json['hoverDuration'] == null
      ? null
      : PhlutsDuration.fromJson(json['hoverDuration'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsInkWellToJson(PhlutsInkWell instance) =>
    <String, dynamic>{
      'child': instance.child?.toJson(),
      'onTap': instance.onTap?.toJson(),
      'onDoubleTap': instance.onDoubleTap?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'onTapDown': instance.onTapDown?.toJson(),
      'onTapUp': instance.onTapUp?.toJson(),
      'onTapCancel': instance.onTapCancel?.toJson(),
      'onSecondaryTap': instance.onSecondaryTap?.toJson(),
      'onSecondaryTapUp': instance.onSecondaryTapUp?.toJson(),
      'onSecondaryTapDown': instance.onSecondaryTapDown?.toJson(),
      'onSecondaryTapCancel': instance.onSecondaryTapCancel?.toJson(),
      'onHighlightChanged': instance.onHighlightChanged?.toJson(),
      'onHover': instance.onHover?.toJson(),
      'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'overlayColor': instance.overlayColor,
      'splashColor': instance.splashColor,
      'radius': const DoubleConverter().toJson(instance.radius),
      'borderRadius': instance.borderRadius?.toJson(),
      'customBorder': instance.customBorder?.toJson(),
      'enableFeedback': instance.enableFeedback,
      'excludeFromSemantics': instance.excludeFromSemantics,
      'canRequestFocus': instance.canRequestFocus,
      'onFocusChange': instance.onFocusChange?.toJson(),
      'autofocus': instance.autofocus,
      'hoverDuration': instance.hoverDuration?.toJson(),
      'type': instance.type,
    };

const _$PhlutsMouseCursorEnumMap = {
  PhlutsMouseCursor.none: 'none',
  PhlutsMouseCursor.basic: 'basic',
  PhlutsMouseCursor.click: 'click',
  PhlutsMouseCursor.forbidden: 'forbidden',
  PhlutsMouseCursor.wait: 'wait',
  PhlutsMouseCursor.progress: 'progress',
  PhlutsMouseCursor.contextMenu: 'contextMenu',
  PhlutsMouseCursor.help: 'help',
  PhlutsMouseCursor.text: 'text',
  PhlutsMouseCursor.verticalText: 'verticalText',
  PhlutsMouseCursor.cell: 'cell',
  PhlutsMouseCursor.precise: 'precise',
  PhlutsMouseCursor.move: 'move',
  PhlutsMouseCursor.grab: 'grab',
  PhlutsMouseCursor.grabbing: 'grabbing',
  PhlutsMouseCursor.noDrop: 'noDrop',
  PhlutsMouseCursor.alias: 'alias',
  PhlutsMouseCursor.copy: 'copy',
  PhlutsMouseCursor.disappearing: 'disappearing',
  PhlutsMouseCursor.allScroll: 'allScroll',
  PhlutsMouseCursor.resizeLeftRight: 'resizeLeftRight',
  PhlutsMouseCursor.resizeUpDown: 'resizeUpDown',
  PhlutsMouseCursor.resizeUpLeftDownRight: 'resizeUpLeftDownRight',
  PhlutsMouseCursor.resizeUpRightDownLeft: 'resizeUpRightDownLeft',
  PhlutsMouseCursor.resizeUp: 'resizeUp',
  PhlutsMouseCursor.resizeDown: 'resizeDown',
  PhlutsMouseCursor.resizeLeft: 'resizeLeft',
  PhlutsMouseCursor.resizeRight: 'resizeRight',
  PhlutsMouseCursor.resizeUpLeft: 'resizeUpLeft',
  PhlutsMouseCursor.resizeUpRight: 'resizeUpRight',
  PhlutsMouseCursor.resizeDownLeft: 'resizeDownLeft',
  PhlutsMouseCursor.resizeDownRight: 'resizeDownRight',
  PhlutsMouseCursor.resizeColumn: 'resizeColumn',
  PhlutsMouseCursor.resizeRow: 'resizeRow',
  PhlutsMouseCursor.zoomIn: 'zoomIn',
  PhlutsMouseCursor.zoomOut: 'zoomOut',
};
