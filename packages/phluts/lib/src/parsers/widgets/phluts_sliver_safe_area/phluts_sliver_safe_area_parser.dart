import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliverSafeAreaParser extends PhlutsParser<PhlutsSliverSafeArea> {
  const PhlutsSliverSafeAreaParser();

  @override
  String get type => WidgetType.sliverSafeArea.name;

  @override
  PhlutsSliverSafeArea getModel(Map<String, dynamic> json) =>
      PhlutsSliverSafeArea.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSliverSafeArea model) {
    final sliver =
        model.sliver.parse(context) ??
        const SliverToBoxAdapter(child: SizedBox.shrink());
    return SliverSafeArea(
      left: model.left ?? true,
      top: model.top ?? true,
      right: model.right ?? true,
      bottom: model.bottom ?? true,
      minimum: model.minimum?.parse ?? EdgeInsets.zero,
      sliver: sliver,
    );
  }
}
