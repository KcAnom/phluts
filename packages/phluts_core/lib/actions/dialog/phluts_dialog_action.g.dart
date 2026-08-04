// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_dialog_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDialogAction _$PhlutsDialogActionFromJson(Map<String, dynamic> json) =>
    PhlutsDialogAction(
      widget: json['widget'] as Map<String, dynamic>?,
      request: json['request'] == null
          ? null
          : PhlutsNetworkRequest.fromJson(
              json['request'] as Map<String, dynamic>,
            ),
      assetPath: json['assetPath'] as String?,
      barrierDismissible: json['barrierDismissible'] as bool?,
      barrierColor: json['barrierColor'] as String?,
      barrierLabel: json['barrierLabel'] as String?,
      useSafeArea: json['useSafeArea'] as bool?,
      traversalEdgeBehavior: $enumDecodeNullable(
        _$PhlutsTraversalEdgeBehaviorEnumMap,
        json['traversalEdgeBehavior'],
      ),
    );

Map<String, dynamic> _$PhlutsDialogActionToJson(PhlutsDialogAction instance) =>
    <String, dynamic>{
      'widget': instance.widget,
      'request': instance.request?.toJson(),
      'assetPath': instance.assetPath,
      'barrierDismissible': instance.barrierDismissible,
      'barrierColor': instance.barrierColor,
      'barrierLabel': instance.barrierLabel,
      'useSafeArea': instance.useSafeArea,
      'traversalEdgeBehavior':
          _$PhlutsTraversalEdgeBehaviorEnumMap[instance.traversalEdgeBehavior],
      'actionType': instance.actionType,
    };

const _$PhlutsTraversalEdgeBehaviorEnumMap = {
  PhlutsTraversalEdgeBehavior.closedLoop: 'closedLoop',
  PhlutsTraversalEdgeBehavior.leaveFlutterView: 'leaveFlutterView',
  PhlutsTraversalEdgeBehavior.parentScope: 'parentScope',
  PhlutsTraversalEdgeBehavior.stop: 'stop',
};
