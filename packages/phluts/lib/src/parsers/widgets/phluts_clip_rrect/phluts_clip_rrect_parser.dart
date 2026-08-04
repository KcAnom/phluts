import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_radius_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsClipRRectParser extends PhlutsParser<PhlutsClipRRect> {
  const PhlutsClipRRectParser();

  @override
  String get type => WidgetType.clipRRect.name;

  @override
  PhlutsClipRRect getModel(Map<String, dynamic> json) =>
      PhlutsClipRRect.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsClipRRect model) {
    return ClipRRect(
      borderRadius: model.borderRadius?.parse ?? BorderRadius.zero,
      clipBehavior: model.clipBehavior?.parse ?? Clip.antiAlias,
      child: model.child?.parse(context),
    );
  }
}
