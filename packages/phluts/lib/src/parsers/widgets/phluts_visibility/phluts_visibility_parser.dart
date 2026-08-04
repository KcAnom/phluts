import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsVisibilityParser extends PhlutsParser<PhlutsVisibility> {
  const PhlutsVisibilityParser();

  @override
  String get type => WidgetType.visibility.name;

  @override
  PhlutsVisibility getModel(Map<String, dynamic> json) =>
      PhlutsVisibility.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsVisibility model) {
    final child = model.child?.parse(context) ?? const SizedBox.shrink();

    bool shouldUseMaintainConstructor =
        (model.maintainState ?? false) ||
        (model.maintainAnimation ?? false) ||
        (model.maintainSize ?? false) ||
        (model.maintainSemantics ?? false) ||
        (model.maintainInteractivity ?? false);

    if (shouldUseMaintainConstructor) {
      if (model.maintainState == false ||
          model.maintainAnimation == false ||
          model.maintainSize == false ||
          model.maintainSemantics == false ||
          model.maintainInteractivity == false) {
        shouldUseMaintainConstructor = false;
      }
    }

    if (shouldUseMaintainConstructor) {
      return Visibility.maintain(visible: model.visible ?? true, child: child);
    }

    final replacement =
        model.replacement?.parse(context) ?? const SizedBox.shrink();

    return Visibility(
      visible: model.visible ?? true,
      maintainState: model.maintainState ?? false,
      maintainAnimation: model.maintainAnimation ?? false,
      maintainSize: model.maintainSize ?? false,
      maintainSemantics: model.maintainSemantics ?? false,
      maintainInteractivity: model.maintainInteractivity ?? false,
      replacement: replacement,
      child: child,
    );
  }
}
