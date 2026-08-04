import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/decoration/phluts_box_decoration_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_drag_start_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_physics_parser.dart';
import 'package:phluts/src/parsers/foundation/navigation/phluts_tab_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/navigation/phluts_tab_bar_indicator_size_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTabBarParser extends PhlutsParser<PhlutsTabBar> {
  const PhlutsTabBarParser({this.controller});

  final TabController? controller;

  @override
  PhlutsTabBar getModel(Map<String, dynamic> json) => PhlutsTabBar.fromJson(json);

  @override
  String get type => WidgetType.tabBar.name;

  @override
  Widget parse(BuildContext context, PhlutsTabBar model) {
    return TabBar(
      controller: controller,
      tabs: model.tabs
          .map((t) => t.parse(context) ?? const SizedBox())
          .toList(),
      isScrollable: model.isScrollable ?? false,
      padding: model.padding?.parse,
      indicatorColor: model.indicatorColor?.toColor(context),
      automaticIndicatorColorAdjustment:
          model.automaticIndicatorColorAdjustment ?? true,
      indicatorWeight: model.indicatorWeight ?? 2.0,
      indicatorPadding: model.indicatorPadding?.parse ?? EdgeInsets.zero,
      indicator: model.indicator?.parse(context),
      indicatorSize: model.indicatorSize?.parse,
      labelColor: model.labelColor?.toColor(context),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding?.parse,
      unselectedLabelColor: model.unselectedLabelColor?.toColor(context),
      unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      enableFeedback: model.enableFeedback,
      onTap: (_) {},
      physics: model.physics?.parse,
      tabAlignment: model.tabAlignment?.parse,
      dividerColor: model.dividerColor?.toColor(context),
      dividerHeight: model.dividerHeight,
    );
  }
}
