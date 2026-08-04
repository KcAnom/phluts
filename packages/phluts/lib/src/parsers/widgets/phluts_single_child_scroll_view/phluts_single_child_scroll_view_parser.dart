import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_drag_start_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_physics_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_view_keyboard_dismiss_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_axis_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSingleChildScrollViewParser
    extends PhlutsParser<PhlutsSingleChildScrollView> {
  const PhlutsSingleChildScrollViewParser();

  @override
  PhlutsSingleChildScrollView getModel(Map<String, dynamic> json) =>
      PhlutsSingleChildScrollView.fromJson(json);

  @override
  String get type => WidgetType.singleChildScrollView.name;

  @override
  Widget parse(BuildContext context, PhlutsSingleChildScrollView model) {
    return SingleChildScrollView(
      scrollDirection: model.scrollDirection?.parse ?? Axis.vertical,
      reverse: model.reverse ?? false,
      padding: model.padding?.parse,
      primary: model.primary,
      physics: model.physics?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      restorationId: model.restorationId,
      keyboardDismissBehavior:
          model.keyboardDismissBehavior?.parse ??
          ScrollViewKeyboardDismissBehavior.manual,
      child: model.child?.parse(context),
    );
  }
}
