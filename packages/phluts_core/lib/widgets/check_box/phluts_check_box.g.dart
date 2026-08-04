// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_check_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCheckBox _$PhlutsCheckBoxFromJson(Map<String, dynamic> json) => PhlutsCheckBox(
  id: json['id'] as String?,
  value: json['value'] as bool?,
  tristate: json['tristate'] as bool?,
  onChanged: json['onChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  mouseCursor: $enumDecodeNullable(
    _$PhlutsMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  activeColor: json['activeColor'] as String?,
  fillColor: json['fillColor'] as String?,
  checkColor: json['checkColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  splashRadius: const DoubleConverter().fromJson(json['splashRadius']),
  materialTapTargetSize: $enumDecodeNullable(
    _$PhlutsMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  autofocus: json['autofocus'] as bool?,
  isError: json['isError'] as bool?,
);

Map<String, dynamic> _$PhlutsCheckBoxToJson(PhlutsCheckBox instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'tristate': instance.tristate,
      'onChanged': instance.onChanged?.toJson(),
      'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
      'activeColor': instance.activeColor,
      'fillColor': instance.fillColor,
      'checkColor': instance.checkColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'overlayColor': instance.overlayColor,
      'splashRadius': const DoubleConverter().toJson(instance.splashRadius),
      'materialTapTargetSize':
          _$PhlutsMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'autofocus': instance.autofocus,
      'isError': instance.isError,
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

const _$PhlutsMaterialTapTargetSizeEnumMap = {
  PhlutsMaterialTapTargetSize.padded: 'padded',
  PhlutsMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
