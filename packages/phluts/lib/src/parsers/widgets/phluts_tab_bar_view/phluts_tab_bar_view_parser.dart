import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_drag_start_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_physics_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTabBarViewParser extends PhlutsParser<PhlutsTabBarView> {
  const PhlutsTabBarViewParser({this.controller});

  final TabController? controller;

  @override
  PhlutsTabBarView getModel(Map<String, dynamic> json) =>
      PhlutsTabBarView.fromJson(json);

  @override
  String get type => WidgetType.tabBarView.name;

  @override
  Widget parse(BuildContext context, PhlutsTabBarView model) {
    return TabBarView(
      controller: controller,
      physics: model.physics?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      viewportFraction: model.viewportFraction ?? 1.0,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      children: model.children
          .map((c) => c.parse(context) ?? const SizedBox())
          .toList(),
    );
  }
}
