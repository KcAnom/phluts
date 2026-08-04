// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_checkbox_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCheckboxThemeData _$PhlutsCheckboxThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsCheckboxThemeData(
  mouseCursor: $enumDecodeNullable(
    _$PhlutsMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  fillColor: json['fillColor'] as String?,
  checkColor: json['checkColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  splashRadius: (json['splashRadius'] as num?)?.toDouble(),
  materialTapTargetSize: $enumDecodeNullable(
    _$PhlutsMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  visualDensity: json['visualDensity'] == null
      ? null
      : PhlutsVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  side: json['side'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsCheckboxThemeDataToJson(
  PhlutsCheckboxThemeData instance,
) => <String, dynamic>{
  'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
  'fillColor': instance.fillColor,
  'checkColor': instance.checkColor,
  'overlayColor': instance.overlayColor,
  'splashRadius': instance.splashRadius,
  'materialTapTargetSize':
      _$PhlutsMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
  'visualDensity': instance.visualDensity?.toJson(),
  'shape': instance.shape?.toJson(),
  'side': instance.side?.toJson(),
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

const _$PhlutsMaterialTapTargetSizeEnumMap = {
  PhlutsMaterialTapTargetSize.padded: 'padded',
  PhlutsMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
