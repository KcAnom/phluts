import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';

import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliverPaddingParser extends PhlutsParser<PhlutsSliverPadding> {
  const PhlutsSliverPaddingParser();

  @override
  String get type => WidgetType.sliverPadding.name;

  @override
  PhlutsSliverPadding getModel(Map<String, dynamic> json) =>
      PhlutsSliverPadding.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSliverPadding model) {
    return SliverPadding(
      padding: model.padding.parse,
      sliver: model.sliver.parse(context),
    );
  }
}
