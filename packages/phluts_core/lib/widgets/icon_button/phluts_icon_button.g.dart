// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_icon_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsIconButton _$PhlutsIconButtonFromJson(Map<String, dynamic> json) =>
    PhlutsIconButton(
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      visualDensity: json['visualDensity'] == null
          ? null
          : PhlutsVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>,
            ),
      padding: json['padding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['padding']),
      alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      color: json['color'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      splashColor: json['splashColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      onPressed: json['onPressed'] == null
          ? null
          : PhlutsAction.fromJson(json['onPressed'] as Map<String, dynamic>),
      onHover: json['onHover'] == null
          ? null
          : PhlutsAction.fromJson(json['onHover'] as Map<String, dynamic>),
      onLongPress: json['onLongPress'] == null
          ? null
          : PhlutsAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
      mouseCursor: $enumDecodeNullable(
        _$PhlutsMouseCursorEnumMap,
        json['mouseCursor'],
      ),
      autofocus: json['autofocus'] as bool?,
      tooltip: json['tooltip'] as String?,
      enableFeedback: json['enableFeedback'] as bool?,
      constraints: json['constraints'] == null
          ? null
          : PhlutsBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>,
            ),
      style: json['style'] == null
          ? null
          : PhlutsButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool?,
      selectedIcon: json['selectedIcon'] == null
          ? null
          : PhlutsWidget.fromJson(json['selectedIcon'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : PhlutsWidget.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsIconButtonToJson(PhlutsIconButton instance) =>
    <String, dynamic>{
      'iconSize': instance.iconSize,
      'visualDensity': instance.visualDensity?.toJson(),
      'padding': instance.padding?.toJson(),
      'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
      'splashRadius': instance.splashRadius,
      'color': instance.color,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'splashColor': instance.splashColor,
      'disabledColor': instance.disabledColor,
      'onPressed': instance.onPressed?.toJson(),
      'onHover': instance.onHover?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
      'autofocus': instance.autofocus,
      'tooltip': instance.tooltip,
      'enableFeedback': instance.enableFeedback,
      'constraints': instance.constraints?.toJson(),
      'style': instance.style?.toJson(),
      'isSelected': instance.isSelected,
      'selectedIcon': instance.selectedIcon?.toJson(),
      'icon': instance.icon?.toJson(),
      'type': instance.type,
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
