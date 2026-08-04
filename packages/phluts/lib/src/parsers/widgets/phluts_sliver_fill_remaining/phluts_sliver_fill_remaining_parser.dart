import 'package:flutter/widgets.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

/// A Phluts parser that builds a Flutter [SliverFillRemaining] widget.
class PhlutsSliverFillRemainingParser
    extends PhlutsParser<PhlutsSliverFillRemaining> {
  /// Creates a [PhlutsSliverFillRemainingParser].
  const PhlutsSliverFillRemainingParser();

  /// The widget type handled by this parser.
  @override
  String get type => WidgetType.sliverFillRemaining.name;

  /// Converts JSON into a [PhlutsSliverFillRemaining] model.
  @override
  PhlutsSliverFillRemaining getModel(Map<String, dynamic> json) =>
      PhlutsSliverFillRemaining.fromJson(json);

  /// Builds the Flutter [SliverFillRemaining] widget.
  @override
  Widget parse(BuildContext context, PhlutsSliverFillRemaining model) {
    return SliverFillRemaining(
      hasScrollBody: model.hasScrollBody ?? true,
      fillOverscroll: model.fillOverscroll ?? false,
      child: model.child?.parse(context),
    );
  }
}
