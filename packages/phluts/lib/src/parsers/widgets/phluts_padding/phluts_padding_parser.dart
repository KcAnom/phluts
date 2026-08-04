import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsPaddingParser extends PhlutsParser<PhlutsPadding> {
  const PhlutsPaddingParser();

  @override
  PhlutsPadding getModel(Map<String, dynamic> json) => PhlutsPadding.fromJson(json);

  @override
  String get type => WidgetType.padding.name;

  @override
  Widget parse(BuildContext context, PhlutsPadding model) {
    return Padding(
      padding: model.padding?.parse ?? EdgeInsets.zero,
      child: model.child?.parse(context),
    );
  }
}
