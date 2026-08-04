import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSafeAreaParser extends PhlutsParser<PhlutsSafeArea> {
  const PhlutsSafeAreaParser();

  @override
  String get type => WidgetType.safeArea.name;

  @override
  PhlutsSafeArea getModel(Map<String, dynamic> json) =>
      PhlutsSafeArea.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSafeArea model) {
    final child = model.child?.parse(context) ?? const SizedBox.shrink();

    return SafeArea(
      left: model.left ?? true,
      top: model.top ?? true,
      right: model.right ?? true,
      bottom: model.bottom ?? true,
      minimum: model.minimum?.parse ?? EdgeInsets.zero,
      maintainBottomViewPadding: model.maintainBottomViewPadding ?? false,
      child: child,
    );
  }
}
