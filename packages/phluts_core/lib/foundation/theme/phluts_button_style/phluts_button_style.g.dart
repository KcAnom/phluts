// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_button_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsButtonStyle _$PhlutsButtonStyleFromJson(Map<String, dynamic> json) =>
    PhlutsButtonStyle(
      foregroundColor: json['foregroundColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      disabledForegroundColor: json['disabledForegroundColor'] as String?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      iconColor: json['iconColor'] as String?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      iconAlignment: $enumDecodeNullable(
        _$PhlutsIconAlignmentEnumMap,
        json['iconAlignment'],
      ),
      disabledIconColor: json['disabledIconColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      textStyle: json['textStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['textStyle']),
      padding: json['padding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['padding']),
      minimumSize: json['minimumSize'] == null
          ? null
          : PhlutsSize.fromJson(json['minimumSize'] as Map<String, dynamic>),
      fixedSize: json['fixedSize'] == null
          ? null
          : PhlutsSize.fromJson(json['fixedSize'] as Map<String, dynamic>),
      maximumSize: json['maximumSize'] == null
          ? null
          : PhlutsSize.fromJson(json['maximumSize'] as Map<String, dynamic>),
      side: json['side'] == null
          ? null
          : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      enableFeedback: json['enableFeedback'] as bool?,
      alignment: $enumDecodeNullable(
        _$PhlutsAlignmentEnumMap,
        json['alignment'],
      ),
      tapTargetSize: $enumDecodeNullable(
        _$PhlutsMaterialTapTargetSizeEnumMap,
        json['tapTargetSize'],
      ),
      animationDuration: json['animationDuration'] == null
          ? null
          : PhlutsDuration.fromJson(
              json['animationDuration'] as Map<String, dynamic>,
            ),
      enabledMouseCursor: $enumDecodeNullable(
        _$PhlutsMouseCursorEnumMap,
        json['enabledMouseCursor'],
      ),
      disabledMouseCursor: $enumDecodeNullable(
        _$PhlutsMouseCursorEnumMap,
        json['disabledMouseCursor'],
      ),
      visualDensity: json['visualDensity'] == null
          ? null
          : PhlutsVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PhlutsButtonStyleToJson(
  PhlutsButtonStyle instance,
) => <String, dynamic>{
  'foregroundColor': instance.foregroundColor,
  'backgroundColor': instance.backgroundColor,
  'disabledForegroundColor': instance.disabledForegroundColor,
  'disabledBackgroundColor': instance.disabledBackgroundColor,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'iconColor': instance.iconColor,
  'iconSize': instance.iconSize,
  'iconAlignment': _$PhlutsIconAlignmentEnumMap[instance.iconAlignment],
  'disabledIconColor': instance.disabledIconColor,
  'overlayColor': instance.overlayColor,
  'elevation': instance.elevation,
  'textStyle': instance.textStyle?.toJson(),
  'padding': instance.padding?.toJson(),
  'minimumSize': instance.minimumSize?.toJson(),
  'fixedSize': instance.fixedSize?.toJson(),
  'maximumSize': instance.maximumSize?.toJson(),
  'side': instance.side?.toJson(),
  'shape': instance.shape?.toJson(),
  'enableFeedback': instance.enableFeedback,
  'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
  'tapTargetSize': _$PhlutsMaterialTapTargetSizeEnumMap[instance.tapTargetSize],
  'animationDuration': instance.animationDuration?.toJson(),
  'enabledMouseCursor': _$PhlutsMouseCursorEnumMap[instance.enabledMouseCursor],
  'disabledMouseCursor':
      _$PhlutsMouseCursorEnumMap[instance.disabledMouseCursor],
  'visualDensity': instance.visualDensity?.toJson(),
};

const _$PhlutsIconAlignmentEnumMap = {
  PhlutsIconAlignment.start: 'start',
  PhlutsIconAlignment.end: 'end',
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

const _$PhlutsMaterialTapTargetSizeEnumMap = {
  PhlutsMaterialTapTargetSize.padded: 'padded',
  PhlutsMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
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
