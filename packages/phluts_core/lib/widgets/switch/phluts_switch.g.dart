// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_switch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSwitch _$PhlutsSwitchFromJson(Map<String, dynamic> json) => PhlutsSwitch(
  switchType: $enumDecodeNullable(_$PhlutsSwitchTypeEnumMap, json['switchType']),
  value: json['value'] as bool?,
  onChanged: json['onChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  autofocus: json['autofocus'] as bool?,
  activeThumbColor: json['activeThumbColor'] as String?,
  activeTrackColor: json['activeTrackColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  inactiveThumbColor: json['inactiveThumbColor'] as String?,
  inactiveTrackColor: json['inactiveTrackColor'] as String?,
  onLabelColor: json['onLabelColor'] as String?,
  offLabelColor: json['offLabelColor'] as String?,
  splashRadius: const DoubleConverter().fromJson(json['splashRadius']),
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  overlayColor: json['overlayColor'] as String?,
  thumbColor: json['thumbColor'] as String?,
  trackColor: json['trackColor'] as String?,
  materialTapTargetSize: $enumDecodeNullable(
    _$PhlutsMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  trackOutlineColor: json['trackOutlineColor'] as String?,
  trackOutlineWidth: const DoubleConverter().fromJson(
    json['trackOutlineWidth'],
  ),
  thumbIcon: json['thumbIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['thumbIcon'] as Map<String, dynamic>),
  inactiveThumbImage: json['inactiveThumbImage'] as String?,
  activeThumbImage: json['activeThumbImage'] as String?,
  applyTheme: json['applyTheme'] as bool?,
  applyCupertinoTheme: json['applyCupertinoTheme'] as bool?,
);

Map<String, dynamic> _$PhlutsSwitchToJson(PhlutsSwitch instance) =>
    <String, dynamic>{
      'switchType': _$PhlutsSwitchTypeEnumMap[instance.switchType],
      'value': instance.value,
      'onChanged': instance.onChanged?.toJson(),
      'autofocus': instance.autofocus,
      'activeThumbColor': instance.activeThumbColor,
      'activeTrackColor': instance.activeTrackColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'inactiveThumbColor': instance.inactiveThumbColor,
      'inactiveTrackColor': instance.inactiveTrackColor,
      'onLabelColor': instance.onLabelColor,
      'offLabelColor': instance.offLabelColor,
      'splashRadius': const DoubleConverter().toJson(instance.splashRadius),
      'dragStartBehavior':
          _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
      'overlayColor': instance.overlayColor,
      'thumbColor': instance.thumbColor,
      'trackColor': instance.trackColor,
      'materialTapTargetSize':
          _$PhlutsMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'trackOutlineColor': instance.trackOutlineColor,
      'trackOutlineWidth': const DoubleConverter().toJson(
        instance.trackOutlineWidth,
      ),
      'thumbIcon': instance.thumbIcon?.toJson(),
      'inactiveThumbImage': instance.inactiveThumbImage,
      'activeThumbImage': instance.activeThumbImage,
      'applyTheme': instance.applyTheme,
      'applyCupertinoTheme': instance.applyCupertinoTheme,
      'type': instance.type,
    };

const _$PhlutsSwitchTypeEnumMap = {
  PhlutsSwitchType.adaptive: 'adaptive',
  PhlutsSwitchType.cupertino: 'cupertino',
  PhlutsSwitchType.material: 'material',
};

const _$PhlutsDragStartBehaviorEnumMap = {
  PhlutsDragStartBehavior.down: 'down',
  PhlutsDragStartBehavior.start: 'start',
};

const _$PhlutsMaterialTapTargetSizeEnumMap = {
  PhlutsMaterialTapTargetSize.padded: 'padded',
  PhlutsMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
