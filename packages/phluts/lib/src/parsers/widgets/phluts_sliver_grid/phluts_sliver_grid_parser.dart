import 'package:flutter/widgets.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliverGridParser extends PhlutsParser<PhlutsSliverGrid> {
  const PhlutsSliverGridParser();

  @override
  String get type => WidgetType.sliverGrid.name;

  @override
  PhlutsSliverGrid getModel(Map<String, dynamic> json) =>
      PhlutsSliverGrid.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSliverGrid model) {
    final children = model.children?.parseList(context) ?? const <Widget>[];

    return SliverGrid(
      delegate: SliverChildListDelegate(
        children,
        addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
        addRepaintBoundaries: model.addRepaintBoundaries ?? true,
        addSemanticIndexes: model.addSemanticIndexes ?? true,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: model.crossAxisCount ?? 1,
        mainAxisSpacing: model.mainAxisSpacing ?? 0.0,
        crossAxisSpacing: model.crossAxisSpacing ?? 0.0,
        childAspectRatio: model.childAspectRatio ?? 1.0,
        mainAxisExtent: model.mainAxisExtent,
      ),
    );
  }
}
