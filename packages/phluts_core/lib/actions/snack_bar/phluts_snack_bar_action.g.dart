// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_snack_bar_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSnackBarAction _$PhlutsSnackBarActionFromJson(Map<String, dynamic> json) =>
    PhlutsSnackBarAction(
      textColor: json['textColor'] as String?,
      disabledTextColor: json['disabledTextColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as String?,
      label: json['label'] as String,
      onPressed: json['onPressed'] == null
          ? null
          : PhlutsAction.fromJson(json['onPressed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsSnackBarActionToJson(PhlutsSnackBarAction instance) =>
    <String, dynamic>{
      'textColor': instance.textColor,
      'disabledTextColor': instance.disabledTextColor,
      'backgroundColor': instance.backgroundColor,
      'disabledBackgroundColor': instance.disabledBackgroundColor,
      'label': instance.label,
      'onPressed': instance.onPressed?.toJson(),
      'actionType': instance.actionType,
    };
