import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/navigation/phluts_bottom_navigation_bar_landscape_layout_parser.dart';
import 'package:phluts/src/parsers/foundation/navigation/phluts_bottom_navigation_bar_type_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_default_navigation_controller/phluts_default_navigation_controller_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsBottomNavigationBarParser
    extends PhlutsParser<PhlutsBottomNavigationBar> {
  const PhlutsBottomNavigationBarParser();

  @override
  String get type => WidgetType.bottomNavigationBar.name;

  @override
  PhlutsBottomNavigationBar getModel(Map<String, dynamic> json) =>
      PhlutsBottomNavigationBar.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsBottomNavigationBar model) {
    return _BottomNavigationBarWidget(model: model);
  }
}

class _BottomNavigationBarWidget extends StatelessWidget {
  const _BottomNavigationBarWidget({required this.model});

  final PhlutsBottomNavigationBar model;

  @override
  Widget build(BuildContext context) {
    final controller = NavigationScope.of(context)?.controller;

    return BottomNavigationBar(
      items: model.items
          .map(
            (item) => BottomNavigationBarItem(
              icon: item.icon.parse(context)!,
              activeIcon: item.activeIcon?.parse(context),
              label: item.label,
              backgroundColor: item.backgroundColor?.toColor(context),
              tooltip: item.tooltip,
            ),
          )
          .toList(),
      onTap: (index) => controller?.index = index,
      currentIndex: controller?.index ?? 0,
      elevation: model.elevation,
      type: model.barType?.parse,
      fixedColor: model.fixedColor?.toColor(context),
      backgroundColor: model.backgroundColor?.toColor(context),
      iconSize: model.iconSize ?? 24.0,
      selectedItemColor: model.selectedItemColor?.toColor(context),
      unselectedItemColor: model.unselectedItemColor?.toColor(context),
      selectedFontSize: model.selectedFontSize ?? 14.0,
      unselectedFontSize: model.unselectedFontSize ?? 12.0,
      selectedLabelStyle: model.selectedLabelStyle?.parse(context),
      unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
      showSelectedLabels: model.showSelectedLabels,
      showUnselectedLabels: model.showUnselectedLabels,
      enableFeedback: model.enableFeedback,
      landscapeLayout: model.landscapeLayout?.parse,
    );
  }
}
