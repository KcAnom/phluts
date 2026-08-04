// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_list_tile_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsListTileThemeData _$PhlutsListTileThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsListTileThemeData(
  dense: json['dense'] as bool?,
  shape: json['shape'] == null
      ? null
      : PhlutsBorder.fromJson(json['shape'] as Map<String, dynamic>),
  style: $enumDecodeNullable(_$PhlutsListTileStyleEnumMap, json['style']),
  selectedColor: json['selectedColor'] as String?,
  iconColor: json['iconColor'] as String?,
  textColor: json['textColor'] as String?,
  titleTextStyle: json['titleTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['titleTextStyle']),
  subtitleTextStyle: json['subtitleTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['subtitleTextStyle']),
  leadingAndTrailingTextStyle: json['leadingAndTrailingTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['leadingAndTrailingTextStyle']),
  contentPadding: json['contentPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['contentPadding']),
  tileColor: json['tileColor'] as String?,
  selectedTileColor: json['selectedTileColor'] as String?,
  horizontalTitleGap: (json['horizontalTitleGap'] as num?)?.toDouble(),
  minVerticalPadding: (json['minVerticalPadding'] as num?)?.toDouble(),
  minLeadingWidth: (json['minLeadingWidth'] as num?)?.toDouble(),
  enableFeedback: json['enableFeedback'] as bool?,
  visualDensity: json['visualDensity'] == null
      ? null
      : PhlutsVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  titleAlignment: $enumDecodeNullable(
    _$PhlutsListTileTitleAlignmentEnumMap,
    json['titleAlignment'],
  ),
  shadows: (json['shadows'] as List<dynamic>?)
      ?.map((e) => PhlutsShadow.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsListTileThemeDataToJson(
  PhlutsListTileThemeData instance,
) => <String, dynamic>{
  'dense': instance.dense,
  'shape': instance.shape?.toJson(),
  'style': _$PhlutsListTileStyleEnumMap[instance.style],
  'selectedColor': instance.selectedColor,
  'iconColor': instance.iconColor,
  'textColor': instance.textColor,
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'subtitleTextStyle': instance.subtitleTextStyle?.toJson(),
  'leadingAndTrailingTextStyle': instance.leadingAndTrailingTextStyle?.toJson(),
  'contentPadding': instance.contentPadding?.toJson(),
  'tileColor': instance.tileColor,
  'selectedTileColor': instance.selectedTileColor,
  'horizontalTitleGap': instance.horizontalTitleGap,
  'minVerticalPadding': instance.minVerticalPadding,
  'minLeadingWidth': instance.minLeadingWidth,
  'enableFeedback': instance.enableFeedback,
  'visualDensity': instance.visualDensity?.toJson(),
  'titleAlignment':
      _$PhlutsListTileTitleAlignmentEnumMap[instance.titleAlignment],
  'shadows': instance.shadows?.map((e) => e.toJson()).toList(),
};

const _$PhlutsListTileStyleEnumMap = {
  PhlutsListTileStyle.list: 'list',
  PhlutsListTileStyle.drawer: 'drawer',
};

const _$PhlutsListTileTitleAlignmentEnumMap = {
  PhlutsListTileTitleAlignment.titleHeight: 'titleHeight',
  PhlutsListTileTitleAlignment.threeLine: 'threeLine',
  PhlutsListTileTitleAlignment.bottom: 'bottom',
  PhlutsListTileTitleAlignment.center: 'center',
};
