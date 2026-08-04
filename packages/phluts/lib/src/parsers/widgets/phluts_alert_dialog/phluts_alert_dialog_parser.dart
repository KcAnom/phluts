import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_main_axis_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_vertical_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_overflow_bar_alignment_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsAlertDialogParser extends PhlutsParser<PhlutsAlertDialog> {
  const PhlutsAlertDialogParser();

  @override
  String get type => WidgetType.alertDialog.name;

  @override
  PhlutsAlertDialog getModel(Map<String, dynamic> json) =>
      PhlutsAlertDialog.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsAlertDialog model) {
    return AlertDialog(
      icon: model.icon?.parse(context),
      iconPadding: model.iconPadding?.parse,
      iconColor: model.iconColor?.toColor(context),
      title: model.title?.parse(context),
      titlePadding: model.titlePadding?.parse,
      titleTextStyle: model.titleTextStyle?.parse(context),
      content: model.content?.parse(context),
      contentPadding: model.contentPadding?.parse,
      contentTextStyle: model.contentTextStyle?.parse(context),
      actions: model.actions?.parseList(context),
      actionsPadding: model.actionsPadding?.parse,
      actionsAlignment: model.actionsAlignment?.parse ?? MainAxisAlignment.end,
      actionsOverflowAlignment: model.actionsOverflowAlignment?.parse,
      actionsOverflowDirection:
          model.actionsOverflowDirection?.parse ?? VerticalDirection.down,
      actionsOverflowButtonSpacing: model.actionsOverflowButtonSpacing,
      buttonPadding: model.buttonPadding?.parse,
      backgroundColor: model.backgroundColor.toColor(context),
      elevation: model.elevation,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      semanticLabel: model.semanticLabel,
      insetPadding:
          model.insetPadding?.parse ??
          const EdgeInsets.fromLTRB(40, 24, 40, 24),
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      shape: model.shape?.parse(context),
      alignment: model.alignment?.parse ?? Alignment.center,
      scrollable: model.scrollable ?? false,
    );
  }
}
