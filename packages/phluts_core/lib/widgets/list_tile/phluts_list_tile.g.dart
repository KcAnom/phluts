// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_list_tile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsListTile _$PhlutsListTileFromJson(Map<String, dynamic> json) =>
    PhlutsListTile(
      leading: json['leading'] == null
          ? null
          : PhlutsWidget.fromJson(json['leading'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : PhlutsWidget.fromJson(json['title'] as Map<String, dynamic>),
      subtitle: json['subtitle'] == null
          ? null
          : PhlutsWidget.fromJson(json['subtitle'] as Map<String, dynamic>),
      trailing: json['trailing'] == null
          ? null
          : PhlutsWidget.fromJson(json['trailing'] as Map<String, dynamic>),
      isThreeLine: json['isThreeLine'] as bool?,
      dense: json['dense'] as bool?,
      visualDensity: json['visualDensity'] == null
          ? null
          : PhlutsVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>,
            ),
      shape: json['shape'] == null
          ? null
          : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      style: $enumDecodeNullable(_$PhlutsListTileStyleEnumMap, json['style']),
      selectedColor: json['selectedColor'] as String?,
      iconColor: json['iconColor'] as String?,
      textColor: json['textColor'] as String?,
      contentPadding: json['contentPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['contentPadding']),
      enabled: json['enabled'] as bool?,
      onTap: json['onTap'] == null
          ? null
          : PhlutsAction.fromJson(json['onTap'] as Map<String, dynamic>),
      onLongPress: json['onLongPress'] == null
          ? null
          : PhlutsAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
      mouseCursor: $enumDecodeNullable(
        _$PhlutsMouseCursorEnumMap,
        json['mouseCursor'],
      ),
      selected: json['selected'] as bool?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      autofocus: json['autofocus'] as bool?,
      tileColor: json['tileColor'] as String?,
      selectedTileColor: json['selectedTileColor'] as String?,
      enableFeedback: json['enableFeedback'] as bool?,
      horizontalTitleGap: (json['horizontalTitleGap'] as num?)?.toDouble(),
      minVerticalPadding: (json['minVerticalPadding'] as num?)?.toDouble(),
      minLeadingWidth: (json['minLeadingWidth'] as num?)?.toDouble(),
      titleAlignment: $enumDecodeNullable(
        _$PhlutsListTileTitleAlignmentEnumMap,
        json['titleAlignment'],
      ),
    );

Map<String, dynamic> _$PhlutsListTileToJson(PhlutsListTile instance) =>
    <String, dynamic>{
      'leading': instance.leading?.toJson(),
      'title': instance.title?.toJson(),
      'subtitle': instance.subtitle?.toJson(),
      'trailing': instance.trailing?.toJson(),
      'isThreeLine': instance.isThreeLine,
      'dense': instance.dense,
      'visualDensity': instance.visualDensity?.toJson(),
      'shape': instance.shape?.toJson(),
      'style': _$PhlutsListTileStyleEnumMap[instance.style],
      'selectedColor': instance.selectedColor,
      'iconColor': instance.iconColor,
      'textColor': instance.textColor,
      'contentPadding': instance.contentPadding?.toJson(),
      'enabled': instance.enabled,
      'onTap': instance.onTap?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
      'selected': instance.selected,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'autofocus': instance.autofocus,
      'tileColor': instance.tileColor,
      'selectedTileColor': instance.selectedTileColor,
      'enableFeedback': instance.enableFeedback,
      'horizontalTitleGap': instance.horizontalTitleGap,
      'minVerticalPadding': instance.minVerticalPadding,
      'minLeadingWidth': instance.minLeadingWidth,
      'titleAlignment':
          _$PhlutsListTileTitleAlignmentEnumMap[instance.titleAlignment],
      'type': instance.type,
    };

const _$PhlutsListTileStyleEnumMap = {
  PhlutsListTileStyle.list: 'list',
  PhlutsListTileStyle.drawer: 'drawer',
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

const _$PhlutsListTileTitleAlignmentEnumMap = {
  PhlutsListTileTitleAlignment.titleHeight: 'titleHeight',
  PhlutsListTileTitleAlignment.threeLine: 'threeLine',
  PhlutsListTileTitleAlignment.bottom: 'bottom',
  PhlutsListTileTitleAlignment.center: 'center',
};
