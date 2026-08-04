import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_visual_density_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_mouse_cursor_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_list_tile_style_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_list_tile_title_alignment_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsListTileParser extends PhlutsParser<PhlutsListTile> {
  const PhlutsListTileParser();

  @override
  String get type => WidgetType.listTile.name;

  @override
  PhlutsListTile getModel(Map<String, dynamic> json) =>
      PhlutsListTile.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsListTile model) {
    return ListTile(
      leading: model.leading?.parse(context),
      title: model.title?.parse(context),
      subtitle: model.subtitle?.parse(context),
      trailing: model.trailing?.parse(context),
      isThreeLine: model.isThreeLine ?? false,
      dense: model.dense,
      visualDensity: model.visualDensity?.parse,
      shape: model.shape?.parse(context),
      style: model.style?.parse,
      selectedColor: model.selectedColor?.toColor(context),
      iconColor: model.iconColor?.toColor(context),
      textColor: model.textColor?.toColor(context),
      contentPadding: model.contentPadding?.parse,
      enabled: model.enabled ?? true,
      onTap: model.onTap != null ? () => model.onTap?.parse(context) : null,
      onLongPress: model.onLongPress != null
          ? () => model.onLongPress?.parse(context)
          : null,
      mouseCursor: model.mouseCursor?.parse,
      selected: model.selected ?? false,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      autofocus: model.autofocus ?? false,
      tileColor: model.tileColor?.toColor(context),
      selectedTileColor: model.selectedTileColor?.toColor(context),
      enableFeedback: model.enableFeedback,
      horizontalTitleGap: model.horizontalTitleGap,
      minVerticalPadding: model.minVerticalPadding,
      minLeadingWidth: model.minLeadingWidth,
      titleAlignment: model.titleAlignment?.parse,
    );
  }
}
