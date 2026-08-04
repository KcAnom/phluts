import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_drag_start_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_hit_test_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_physics_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_view_keyboard_dismiss_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_axis_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsCustomScrollViewParser extends PhlutsParser<PhlutsCustomScrollView> {
  const PhlutsCustomScrollViewParser();
  @override
  String get type => WidgetType.customScrollView.name;

  @override
  PhlutsCustomScrollView getModel(Map<String, dynamic> json) =>
      PhlutsCustomScrollView.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsCustomScrollView model) {
    return CustomScrollView(
      slivers:
          model.slivers
              ?.map((e) => e.parse(context) ?? const SizedBox())
              .toList() ??
          const [],
      scrollDirection: (model.scrollDirection ?? PhlutsAxis.vertical).parse,
      reverse: model.reverse ?? false,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap ?? false,
      anchor: model.anchor ?? 0.0,
      cacheExtent: model.cacheExtent,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior:
          (model.dragStartBehavior ?? PhlutsDragStartBehavior.start).parse,
      keyboardDismissBehavior:
          (model.keyboardDismissBehavior ??
                  PhlutsScrollViewKeyboardDismissBehavior.manual)
              .parse,
      restorationId: model.restorationId,
      clipBehavior: (model.clipBehavior ?? PhlutsClip.hardEdge).parse,
      hitTestBehavior:
          (model.hitTestBehavior ?? PhlutsHitTestBehavior.opaque).parse,
    );
  }
}
