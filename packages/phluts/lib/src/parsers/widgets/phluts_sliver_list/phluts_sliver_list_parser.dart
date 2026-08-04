import 'package:flutter/widgets.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

/// A Phluts parser that builds a Flutter [SliverList] widget.
class PhlutsSliverListParser extends PhlutsParser<PhlutsSliverList> {
  /// Creates a [PhlutsSliverListParser].
  const PhlutsSliverListParser();

  /// The widget type handled by this parser.
  @override
  String get type => WidgetType.sliverList.name;

  /// Converts JSON into a [PhlutsSliverList] model.
  @override
  PhlutsSliverList getModel(Map<String, dynamic> json) =>
      PhlutsSliverList.fromJson(json);

  /// Builds the Flutter [SliverList] widget.
  @override
  Widget parse(BuildContext context, PhlutsSliverList model) {
    final children = model.children?.parseList(context) ?? const <Widget>[];

    return SliverList(
      delegate: SliverChildListDelegate(
        children,
        addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
        addRepaintBoundaries: model.addRepaintBoundaries ?? true,
        addSemanticIndexes: model.addSemanticIndexes ?? true,
        semanticIndexOffset: model.semanticIndexOffset ?? 0,
      ),
    );
  }
}
