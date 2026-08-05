import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliverToBoxAdapterParser
    extends PhlutsParser<PhlutsSliverToBoxAdapter> {
  const PhlutsSliverToBoxAdapterParser();

  @override
  String get type => WidgetType.sliverToBoxAdapter.name;

  @override
  PhlutsSliverToBoxAdapter getModel(Map<String, dynamic> json) =>
      PhlutsSliverToBoxAdapter.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSliverToBoxAdapter model) {
    return SliverToBoxAdapter(child: model.child?.parse(context));
  }
}
