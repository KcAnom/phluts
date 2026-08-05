// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_text_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCustomTextStyle _$PhlutsCustomTextStyleFromJson(
  Map<String, dynamic> json,
) => PhlutsCustomTextStyle(
  inherit: json['inherit'] as bool?,
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  fontSize: (json['fontSize'] as num?)?.toDouble(),
  fontWeight: $enumDecodeNullable(
    _$PhlutsFontWeightEnumMap,
    json['fontWeight'],
  ),
  fontStyle: $enumDecodeNullable(_$PhlutsFontStyleEnumMap, json['fontStyle']),
  letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
  wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
  textBaseline: $enumDecodeNullable(
    _$PhlutsTextBaselineEnumMap,
    json['textBaseline'],
  ),
  height: (json['height'] as num?)?.toDouble(),
  leadingDistribution: $enumDecodeNullable(
    _$PhlutsTextLeadingDistributionEnumMap,
    json['leadingDistribution'],
  ),
  decoration: $enumDecodeNullable(
    _$PhlutsTextDecorationLineEnumMap,
    json['decoration'],
  ),
  decorationColor: json['decorationColor'] as String?,
  decorationStyle: $enumDecodeNullable(
    _$PhlutsTextDecorationStyleEnumMap,
    json['decorationStyle'],
  ),
  decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
  debugLabel: json['debugLabel'] as String?,
  fontFamily: json['fontFamily'] as String?,
  fontFamilyFallback: (json['fontFamilyFallback'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  package: json['package'] as String?,
  overflow: $enumDecodeNullable(_$PhlutsTextOverflowEnumMap, json['overflow']),
);

Map<String, dynamic> _$PhlutsCustomTextStyleToJson(
  PhlutsCustomTextStyle instance,
) => <String, dynamic>{
  'type': _$PhlutsTextStyleTypeEnumMap[instance.type]!,
  'inherit': instance.inherit,
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'fontSize': instance.fontSize,
  'fontWeight': _$PhlutsFontWeightEnumMap[instance.fontWeight],
  'fontStyle': _$PhlutsFontStyleEnumMap[instance.fontStyle],
  'letterSpacing': instance.letterSpacing,
  'wordSpacing': instance.wordSpacing,
  'textBaseline': _$PhlutsTextBaselineEnumMap[instance.textBaseline],
  'height': instance.height,
  'leadingDistribution':
      _$PhlutsTextLeadingDistributionEnumMap[instance.leadingDistribution],
  'decoration': _$PhlutsTextDecorationLineEnumMap[instance.decoration],
  'decorationColor': instance.decorationColor,
  'decorationStyle':
      _$PhlutsTextDecorationStyleEnumMap[instance.decorationStyle],
  'decorationThickness': instance.decorationThickness,
  'debugLabel': instance.debugLabel,
  'fontFamily': instance.fontFamily,
  'fontFamilyFallback': instance.fontFamilyFallback,
  'package': instance.package,
  'overflow': _$PhlutsTextOverflowEnumMap[instance.overflow],
};

const _$PhlutsFontWeightEnumMap = {
  PhlutsFontWeight.w100: 'w100',
  PhlutsFontWeight.w200: 'w200',
  PhlutsFontWeight.w300: 'w300',
  PhlutsFontWeight.w400: 'w400',
  PhlutsFontWeight.w500: 'w500',
  PhlutsFontWeight.w600: 'w600',
  PhlutsFontWeight.w700: 'w700',
  PhlutsFontWeight.w800: 'w800',
  PhlutsFontWeight.w900: 'w900',
  PhlutsFontWeight.normal: 'normal',
  PhlutsFontWeight.bold: 'bold',
};

const _$PhlutsFontStyleEnumMap = {
  PhlutsFontStyle.normal: 'normal',
  PhlutsFontStyle.italic: 'italic',
};

const _$PhlutsTextBaselineEnumMap = {
  PhlutsTextBaseline.alphabetic: 'alphabetic',
  PhlutsTextBaseline.ideographic: 'ideographic',
};

const _$PhlutsTextLeadingDistributionEnumMap = {
  PhlutsTextLeadingDistribution.proportional: 'proportional',
  PhlutsTextLeadingDistribution.even: 'even',
};

const _$PhlutsTextDecorationLineEnumMap = {
  PhlutsTextDecorationLine.none: 'none',
  PhlutsTextDecorationLine.underline: 'underline',
  PhlutsTextDecorationLine.overline: 'overline',
  PhlutsTextDecorationLine.lineThrough: 'lineThrough',
};

const _$PhlutsTextDecorationStyleEnumMap = {
  PhlutsTextDecorationStyle.solid: 'solid',
  PhlutsTextDecorationStyle.double: 'double',
  PhlutsTextDecorationStyle.dotted: 'dotted',
  PhlutsTextDecorationStyle.dashed: 'dashed',
  PhlutsTextDecorationStyle.wavy: 'wavy',
};

const _$PhlutsTextOverflowEnumMap = {
  PhlutsTextOverflow.clip: 'clip',
  PhlutsTextOverflow.fade: 'fade',
  PhlutsTextOverflow.ellipsis: 'ellipsis',
  PhlutsTextOverflow.visible: 'visible',
};

const _$PhlutsTextStyleTypeEnumMap = {
  PhlutsTextStyleType.custom: 'custom',
  PhlutsTextStyleType.theme: 'theme',
};

PhlutsThemeTextStyle _$PhlutsThemeTextStyleFromJson(
  Map<String, dynamic> json,
) => PhlutsThemeTextStyle(
  textTheme: $enumDecode(_$PhlutsMaterialTextStyleEnumMap, json['textTheme']),
  inherit: json['inherit'] as bool?,
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  fontSize: (json['fontSize'] as num?)?.toDouble(),
  fontWeight: $enumDecodeNullable(
    _$PhlutsFontWeightEnumMap,
    json['fontWeight'],
  ),
  fontStyle: $enumDecodeNullable(_$PhlutsFontStyleEnumMap, json['fontStyle']),
  letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
  wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
  textBaseline: $enumDecodeNullable(
    _$PhlutsTextBaselineEnumMap,
    json['textBaseline'],
  ),
  height: (json['height'] as num?)?.toDouble(),
  leadingDistribution: $enumDecodeNullable(
    _$PhlutsTextLeadingDistributionEnumMap,
    json['leadingDistribution'],
  ),
  decorationColor: json['decorationColor'] as String?,
  decorationStyle: $enumDecodeNullable(
    _$PhlutsTextDecorationStyleEnumMap,
    json['decorationStyle'],
  ),
  decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
  debugLabel: json['debugLabel'] as String?,
  fontFamily: json['fontFamily'] as String?,
  fontFamilyFallback: (json['fontFamilyFallback'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  package: json['package'] as String?,
  overflow: $enumDecodeNullable(_$PhlutsTextOverflowEnumMap, json['overflow']),
);

Map<String, dynamic> _$PhlutsThemeTextStyleToJson(
  PhlutsThemeTextStyle instance,
) => <String, dynamic>{
  'type': _$PhlutsTextStyleTypeEnumMap[instance.type]!,
  'textTheme': _$PhlutsMaterialTextStyleEnumMap[instance.textTheme]!,
  'inherit': instance.inherit,
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'fontSize': instance.fontSize,
  'fontWeight': _$PhlutsFontWeightEnumMap[instance.fontWeight],
  'fontStyle': _$PhlutsFontStyleEnumMap[instance.fontStyle],
  'letterSpacing': instance.letterSpacing,
  'wordSpacing': instance.wordSpacing,
  'textBaseline': _$PhlutsTextBaselineEnumMap[instance.textBaseline],
  'height': instance.height,
  'leadingDistribution':
      _$PhlutsTextLeadingDistributionEnumMap[instance.leadingDistribution],
  'decorationColor': instance.decorationColor,
  'decorationStyle':
      _$PhlutsTextDecorationStyleEnumMap[instance.decorationStyle],
  'decorationThickness': instance.decorationThickness,
  'debugLabel': instance.debugLabel,
  'fontFamily': instance.fontFamily,
  'fontFamilyFallback': instance.fontFamilyFallback,
  'package': instance.package,
  'overflow': _$PhlutsTextOverflowEnumMap[instance.overflow],
};

const _$PhlutsMaterialTextStyleEnumMap = {
  PhlutsMaterialTextStyle.displayLarge: 'displayLarge',
  PhlutsMaterialTextStyle.displayMedium: 'displayMedium',
  PhlutsMaterialTextStyle.displaySmall: 'displaySmall',
  PhlutsMaterialTextStyle.headlineLarge: 'headlineLarge',
  PhlutsMaterialTextStyle.headlineMedium: 'headlineMedium',
  PhlutsMaterialTextStyle.headlineSmall: 'headlineSmall',
  PhlutsMaterialTextStyle.titleLarge: 'titleLarge',
  PhlutsMaterialTextStyle.titleMedium: 'titleMedium',
  PhlutsMaterialTextStyle.titleSmall: 'titleSmall',
  PhlutsMaterialTextStyle.bodyLarge: 'bodyLarge',
  PhlutsMaterialTextStyle.bodyMedium: 'bodyMedium',
  PhlutsMaterialTextStyle.bodySmall: 'bodySmall',
  PhlutsMaterialTextStyle.labelLarge: 'labelLarge',
  PhlutsMaterialTextStyle.labelMedium: 'labelMedium',
  PhlutsMaterialTextStyle.labelSmall: 'labelSmall',
};
