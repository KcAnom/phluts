// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_snack_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSnackBar _$PhlutsSnackBarFromJson(
  Map<String, dynamic> json,
) => PhlutsSnackBar(
  content: json['content'] as Map<String, dynamic>,
  backgroundColor: json['backgroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  margin: json['margin'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['margin']),
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  width: (json['width'] as num?)?.toDouble(),
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  hitTestBehavior: $enumDecodeNullable(
    _$PhlutsHitTestBehaviorEnumMap,
    json['hitTestBehavior'],
  ),
  behavior: $enumDecodeNullable(
    _$PhlutsSnackBarBehaviorEnumMap,
    json['behavior'],
  ),
  action: json['action'] == null
      ? null
      : PhlutsSnackBarAction.fromJson(json['action'] as Map<String, dynamic>),
  actionOverflowThreshold: (json['actionOverflowThreshold'] as num?)
      ?.toDouble(),
  showCloseIcon: json['showCloseIcon'] as bool?,
  closeIconColor: json['closeIconColor'] as String?,
  duration: json['duration'] == null
      ? null
      : PhlutsDuration.fromJson(json['duration'] as Map<String, dynamic>),
  onVisible: json['onVisible'] as Map<String, dynamic>?,
  dismissDirection: $enumDecodeNullable(
    _$PhlutsDismissDirectionEnumMap,
    json['dismissDirection'],
  ),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$PhlutsSnackBarToJson(
  PhlutsSnackBar instance,
) => <String, dynamic>{
  'content': instance.content,
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'margin': instance.margin?.toJson(),
  'padding': instance.padding?.toJson(),
  'width': instance.width,
  'shape': instance.shape?.toJson(),
  'hitTestBehavior': _$PhlutsHitTestBehaviorEnumMap[instance.hitTestBehavior],
  'behavior': _$PhlutsSnackBarBehaviorEnumMap[instance.behavior],
  'action': instance.action?.toJson(),
  'actionOverflowThreshold': instance.actionOverflowThreshold,
  'showCloseIcon': instance.showCloseIcon,
  'closeIconColor': instance.closeIconColor,
  'duration': instance.duration?.toJson(),
  'onVisible': instance.onVisible,
  'dismissDirection':
      _$PhlutsDismissDirectionEnumMap[instance.dismissDirection],
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'actionType': instance.actionType,
};

const _$PhlutsHitTestBehaviorEnumMap = {
  PhlutsHitTestBehavior.deferToChild: 'deferToChild',
  PhlutsHitTestBehavior.opaque: 'opaque',
  PhlutsHitTestBehavior.translucent: 'translucent',
};

const _$PhlutsSnackBarBehaviorEnumMap = {
  PhlutsSnackBarBehavior.fixed: 'fixed',
  PhlutsSnackBarBehavior.floating: 'floating',
};

const _$PhlutsDismissDirectionEnumMap = {
  PhlutsDismissDirection.horizontal: 'horizontal',
  PhlutsDismissDirection.vertical: 'vertical',
  PhlutsDismissDirection.down: 'down',
  PhlutsDismissDirection.up: 'up',
  PhlutsDismissDirection.endToStart: 'endToStart',
  PhlutsDismissDirection.startToEnd: 'startToEnd',
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
