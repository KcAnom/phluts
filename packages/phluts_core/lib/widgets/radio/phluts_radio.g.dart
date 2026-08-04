// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_radio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsRadio _$PhlutsRadioFromJson(Map<String, dynamic> json) => PhlutsRadio(
  radioType: $enumDecodeNullable(_$PhlutsRadioTypeEnumMap, json['radioType']),
  value: json['value'],
  groupId: json['groupId'] as String?,
  onChanged: json['onChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  mouseCursor: $enumDecodeNullable(
    _$PhlutsMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  toggleable: json['toggleable'] as bool?,
  activeColor: json['activeColor'] as String?,
  inactiveColor: json['inactiveColor'] as String?,
  fillColor: json['fillColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  splashRadius: const DoubleConverter().fromJson(json['splashRadius']),
  materialTapTargetSize: $enumDecodeNullable(
    _$PhlutsMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  visualDensity: json['visualDensity'] == null
      ? null
      : PhlutsVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  autofocus: json['autofocus'] as bool?,
  useCheckmarkStyle: json['useCheckmarkStyle'] as bool?,
  useCupertinoCheckmarkStyle: json['useCupertinoCheckmarkStyle'] as bool?,
  enabled: json['enabled'] as bool?,
  backgroundColor: json['backgroundColor'] as String?,
  side: json['side'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  innerRadius: const DoubleConverter().fromJson(json['innerRadius']),
);

Map<String, dynamic> _$PhlutsRadioToJson(PhlutsRadio instance) => <String, dynamic>{
  'radioType': _$PhlutsRadioTypeEnumMap[instance.radioType],
  'value': instance.value,
  'groupId': instance.groupId,
  'onChanged': instance.onChanged?.toJson(),
  'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
  'toggleable': instance.toggleable,
  'activeColor': instance.activeColor,
  'inactiveColor': instance.inactiveColor,
  'fillColor': instance.fillColor,
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'overlayColor': instance.overlayColor,
  'splashRadius': const DoubleConverter().toJson(instance.splashRadius),
  'materialTapTargetSize':
      _$PhlutsMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
  'visualDensity': instance.visualDensity?.toJson(),
  'autofocus': instance.autofocus,
  'useCheckmarkStyle': instance.useCheckmarkStyle,
  'useCupertinoCheckmarkStyle': instance.useCupertinoCheckmarkStyle,
  'enabled': instance.enabled,
  'backgroundColor': instance.backgroundColor,
  'side': instance.side?.toJson(),
  'innerRadius': const DoubleConverter().toJson(instance.innerRadius),
  'type': instance.type,
};

const _$PhlutsRadioTypeEnumMap = {
  PhlutsRadioType.adaptive: 'adaptive',
  PhlutsRadioType.cupertino: 'cupertino',
  PhlutsRadioType.material: 'material',
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
