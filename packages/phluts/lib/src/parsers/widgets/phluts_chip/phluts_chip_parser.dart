import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_side_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_box_constraints_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_visual_density_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_material_tap_target_size_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsChipParser extends PhlutsParser<PhlutsChip> {
  const PhlutsChipParser();

  @override
  String get type => WidgetType.chip.name;

  @override
  PhlutsChip getModel(Map<String, dynamic> json) => PhlutsChip.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsChip model) {
    return Chip(
      avatar: model.avatar?.parse(context),
      label: model.label.parse(context) ?? const SizedBox.shrink(),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding?.parse,
      deleteIcon: model.deleteIcon?.parse(context),
      onDeleted: model.onDeleted == null
          ? null
          : () => model.onDeleted!.parse(context),
      deleteIconColor: model.deleteIconColor?.toColor(context),
      deleteButtonTooltipMessage: model.deleteButtonTooltipMessage,
      side: model.side?.parse(context),
      shape: model.shape?.parse(context),
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      autofocus: model.autofocus ?? false,
      color: model.color == null
          ? null
          : WidgetStateProperty.all(model.color!.toColor(context)),
      backgroundColor: model.backgroundColor?.toColor(context),
      padding: model.padding?.parse,
      visualDensity: model.visualDensity?.parse,
      materialTapTargetSize: model.materialTapTargetSize?.parse,
      elevation: model.elevation,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      avatarBoxConstraints: model.avatarBoxConstraints?.parse,
      deleteIconBoxConstraints: model.deleteIconBoxConstraints?.parse,
    );
  }
}
