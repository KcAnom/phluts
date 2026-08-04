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

class PhlutsGridViewParser extends PhlutsParser<PhlutsGridView> {
  const PhlutsGridViewParser();

  @override
  String get type => WidgetType.gridView.name;

  @override
  PhlutsGridView getModel(Map<String, dynamic> json) =>
      PhlutsGridView.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsGridView model) {
    return GridView.builder(
      scrollDirection: model.scrollDirection?.parse ?? Axis.vertical,
      reverse: model.reverse ?? false,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap ?? false,
      padding: model.padding?.parse,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: model.crossAxisCount ?? 0,
        mainAxisSpacing: model.mainAxisSpacing ?? 0.0,
        crossAxisSpacing: model.crossAxisSpacing ?? 0.0,
        childAspectRatio: model.childAspectRatio ?? 1.0,
        mainAxisExtent: model.mainAxisExtent,
      ),
      addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
      addRepaintBoundaries: model.addRepaintBoundaries ?? true,
      addSemanticIndexes: model.addSemanticIndexes ?? true,
      cacheExtent: model.cacheExtent,
      itemBuilder: (context, index) {
        final List<Widget>? parsed = model.children?.parseList(context);
        if (parsed == null || index >= parsed.length) {
          return const SizedBox.shrink();
        }
        return parsed[index];
      },
      itemCount: model.children?.length ?? 0,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      keyboardDismissBehavior:
          model.keyboardDismissBehavior?.parse ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
    );
  }
}
