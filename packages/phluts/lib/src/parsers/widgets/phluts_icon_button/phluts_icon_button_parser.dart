import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_box_constraints_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_mouse_cursor_parser.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsIconButtonParser extends PhlutsParser<PhlutsIconButton> {
  const PhlutsIconButtonParser();

  @override
  String get type => WidgetType.iconButton.name;

  @override
  PhlutsIconButton getModel(Map<String, dynamic> json) =>
      PhlutsIconButton.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsIconButton model) {
    return IconButton(
      iconSize: model.iconSize,
      padding: model.padding?.parse,
      alignment: model.alignment?.parse,
      splashRadius: model.splashRadius,
      color: model.color?.toColor(context),
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      highlightColor: model.highlightColor?.toColor(context),
      splashColor: model.splashColor?.toColor(context),
      disabledColor: model.disabledColor?.toColor(context),
      onPressed: model.onPressed == null
          ? null
          : () => Phluts.onCallFromJson(model.onPressed?.toJson(), context),
      onHover: model.onHover == null
          ? null
          : (bool value) =>
                Phluts.onCallFromJson(model.onHover?.toJson(), context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Phluts.onCallFromJson(model.onLongPress?.toJson(), context),
      mouseCursor: model.mouseCursor?.parse,
      autofocus: model.autofocus ?? false,
      tooltip: model.tooltip,
      enableFeedback: model.enableFeedback,
      constraints: model.constraints?.parse,
      style: model.style?.parseIconButton(context),
      isSelected: model.isSelected,
      selectedIcon: model.selectedIcon?.parse(context),
      icon: model.icon?.parse(context) ?? const SizedBox(),
    );
  }
}
