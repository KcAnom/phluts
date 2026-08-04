import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliverOpacityParser extends PhlutsParser<PhlutsSliverOpacity> {
  const PhlutsSliverOpacityParser();

  @override
  String get type => WidgetType.sliverOpacity.name;

  @override
  PhlutsSliverOpacity getModel(Map<String, dynamic> json) =>
      PhlutsSliverOpacity.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSliverOpacity model) {
    return SliverOpacity(
      opacity: model.opacity,
      alwaysIncludeSemantics: model.alwaysIncludeSemantics ?? false,
      sliver: model.sliver?.parse(context),
    );
  }
}
