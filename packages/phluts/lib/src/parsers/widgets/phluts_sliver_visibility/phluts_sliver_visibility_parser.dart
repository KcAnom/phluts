import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';

import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliverVisibilityParser extends PhlutsParser<PhlutsSliverVisibility> {
  const PhlutsSliverVisibilityParser();

  @override
  String get type => WidgetType.sliverVisibility.name;

  @override
  PhlutsSliverVisibility getModel(Map<String, dynamic> json) =>
      PhlutsSliverVisibility.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSliverVisibility model) {
    return SliverVisibility(
      visible: model.visible ?? true,
      maintainState: model.maintainState ?? false,
      maintainAnimation: model.maintainAnimation ?? false,
      maintainSize: model.maintainSize ?? false,
      maintainSemantics: model.maintainSemantics ?? false,
      maintainInteractivity: model.maintainInteractivity ?? false,
      sliver: model.sliver.parse(context) ?? const SliverToBoxAdapter(),
      replacementSliver:
          model.replacementSliver?.parse(context) ?? const SliverToBoxAdapter(),
    );
  }
}
