// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/widgets/phluts_default_navigation_controller/phluts_default_navigation_controller_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

/// Deprecated. Use [NavigationScope] instead.
@Deprecated('Use NavigationScope instead. Will be removed in a future release.')
typedef BottomNavigationScope = NavigationScope;

/// Deprecated. Use [NavigationController] instead.
@Deprecated(
  'Use NavigationController instead. Will be removed in a future release.',
)
typedef BottomNavigationController = NavigationController;

/// Parser for the deprecated `defaultBottomNavigationController` widget
/// type. Delegates to [PhlutsDefaultNavigationControllerParser] so that the
/// new [NavigationScope] / [NavigationController] are produced and remain
/// interoperable with non-deprecated consumers.
class PhlutsDefaultBottomNavigationControllerParser
    extends PhlutsParser<PhlutsDefaultBottomNavigationController> {
  const PhlutsDefaultBottomNavigationControllerParser();

  @override
  String get type => WidgetType.defaultBottomNavigationController.name;

  @override
  PhlutsDefaultBottomNavigationController getModel(Map<String, dynamic> json) =>
      PhlutsDefaultBottomNavigationController.fromJson(json);

  @override
  Widget parse(
    BuildContext context,
    PhlutsDefaultBottomNavigationController model,
  ) {
    return const PhlutsDefaultNavigationControllerParser().parse(
      context,
      PhlutsDefaultNavigationController(
        length: model.length,
        initialIndex: model.initialIndex,
        child: model.child,
      ),
    );
  }
}
