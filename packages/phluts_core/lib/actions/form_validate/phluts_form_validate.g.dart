// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_form_validate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsFormValidate _$PhlutsFormValidateFromJson(Map<String, dynamic> json) =>
    PhlutsFormValidate(
      isValid: json['isValid'] == null
          ? null
          : PhlutsAction.fromJson(json['isValid'] as Map<String, dynamic>),
      isNotValid: json['isNotValid'] == null
          ? null
          : PhlutsAction.fromJson(json['isNotValid'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsFormValidateToJson(PhlutsFormValidate instance) =>
    <String, dynamic>{
      'isValid': instance.isValid?.toJson(),
      'isNotValid': instance.isNotValid?.toJson(),
      'actionType': instance.actionType,
    };
