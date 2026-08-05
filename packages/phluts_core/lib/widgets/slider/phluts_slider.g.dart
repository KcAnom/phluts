// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSlider _$PhlutsSliderFromJson(Map<String, dynamic> json) => PhlutsSlider(
  id: json['id'] as String?,
  sliderType: $enumDecodeNullable(
    _$PhlutsSliderTypeEnumMap,
    json['sliderType'],
  ),
  value: (json['value'] as num).toDouble(),
  secondaryTrackValue: const DoubleConverter().fromJson(
    json['secondaryTrackValue'],
  ),
  onChanged: json['onChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  onChangeStart: json['onChangeStart'] == null
      ? null
      : PhlutsAction.fromJson(json['onChangeStart'] as Map<String, dynamic>),
  onChangeEnd: json['onChangeEnd'] == null
      ? null
      : PhlutsAction.fromJson(json['onChangeEnd'] as Map<String, dynamic>),
  min: const DoubleConverter().fromJson(json['min']),
  max: const DoubleConverter().fromJson(json['max']),
  divisions: (json['divisions'] as num?)?.toInt(),
  label: json['label'] as String?,
  activeColor: json['activeColor'] as String?,
  inactiveColor: json['inactiveColor'] as String?,
  secondaryActiveColor: json['secondaryActiveColor'] as String?,
  thumbColor: json['thumbColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  mouseCursor: $enumDecodeNullable(
    _$PhlutsMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  autofocus: json['autofocus'] as bool?,
  allowedInteraction: $enumDecodeNullable(
    _$PhlutsSliderInteractionEnumMap,
    json['allowedInteraction'],
  ),
);

Map<String, dynamic> _$PhlutsSliderToJson(PhlutsSlider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sliderType': _$PhlutsSliderTypeEnumMap[instance.sliderType],
      'value': instance.value,
      'secondaryTrackValue': const DoubleConverter().toJson(
        instance.secondaryTrackValue,
      ),
      'onChanged': instance.onChanged?.toJson(),
      'onChangeStart': instance.onChangeStart?.toJson(),
      'onChangeEnd': instance.onChangeEnd?.toJson(),
      'min': const DoubleConverter().toJson(instance.min),
      'max': const DoubleConverter().toJson(instance.max),
      'divisions': instance.divisions,
      'label': instance.label,
      'activeColor': instance.activeColor,
      'inactiveColor': instance.inactiveColor,
      'secondaryActiveColor': instance.secondaryActiveColor,
      'thumbColor': instance.thumbColor,
      'overlayColor': instance.overlayColor,
      'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
      'autofocus': instance.autofocus,
      'allowedInteraction':
          _$PhlutsSliderInteractionEnumMap[instance.allowedInteraction],
      'type': instance.type,
    };

const _$PhlutsSliderTypeEnumMap = {
  PhlutsSliderType.adaptive: 'adaptive',
  PhlutsSliderType.cupertino: 'cupertino',
  PhlutsSliderType.material: 'material',
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

const _$PhlutsSliderInteractionEnumMap = {
  PhlutsSliderInteraction.tapAndSlide: 'tapAndSlide',
  PhlutsSliderInteraction.tapOnly: 'tapOnly',
  PhlutsSliderInteraction.slideOnly: 'slideOnly',
  PhlutsSliderInteraction.slideThumb: 'slideThumb',
};
