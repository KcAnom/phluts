// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/widgets/phluts_navigation_view/phluts_navigation_view_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

/// Parser for the deprecated `bottomNavigationView` widget type.
/// Delegates to [PhlutsNavigationViewParser] so it shares behavior with the
/// new generic `navigationView`.
class PhlutsBottomNavigationViewParser
    extends PhlutsParser<PhlutsBottomNavigationView> {
  const PhlutsBottomNavigationViewParser();

  @override
  String get type => WidgetType.bottomNavigationView.name;

  @override
  PhlutsBottomNavigationView getModel(Map<String, dynamic> json) =>
      PhlutsBottomNavigationView.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsBottomNavigationView model) {
    return const PhlutsNavigationViewParser().parse(
      context,
      PhlutsNavigationView(children: model.children),
    );
  }
}
