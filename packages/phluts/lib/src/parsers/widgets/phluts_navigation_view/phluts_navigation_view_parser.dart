import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_default_navigation_controller/phluts_default_navigation_controller_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsNavigationViewParser extends PhlutsParser<PhlutsNavigationView> {
  const PhlutsNavigationViewParser();

  @override
  String get type => WidgetType.navigationView.name;

  @override
  PhlutsNavigationView getModel(Map<String, dynamic> json) =>
      PhlutsNavigationView.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsNavigationView model) {
    return _NavigationViewWidget(model: model);
  }
}

class _NavigationViewWidget extends StatelessWidget {
  const _NavigationViewWidget({required this.model});

  final PhlutsNavigationView model;

  @override
  Widget build(BuildContext context) {
    final controller = NavigationScope.of(context)?.controller;
    if (model.children.isEmpty) return const SizedBox();
    final index = controller?.index ?? 0;
    final safeIndex = index.clamp(0, model.children.length - 1);
    return model.children[safeIndex].parse(context) ?? const SizedBox();
  }
}
