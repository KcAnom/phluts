import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_system_ui_overlay_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliverAppBarParser extends PhlutsParser<PhlutsSliverAppBar> {
  const PhlutsSliverAppBarParser();

  @override
  String get type => WidgetType.sliverAppBar.name;

  @override
  PhlutsSliverAppBar getModel(Map<String, dynamic> json) =>
      PhlutsSliverAppBar.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSliverAppBar model) {
    return SliverAppBar(
      leading: model.leading?.parse(context),
      automaticallyImplyLeading: model.automaticallyImplyLeading ?? true,
      title: model.title?.parse(context),
      actions: model.actions?.parseList(context) ?? const <Widget>[],
      flexibleSpace: model.flexibleSpace?.parse(context),
      bottom: model.bottom?.parsePreferredSizeWidget(context),
      elevation: model.elevation,
      scrolledUnderElevation: model.scrolledUnderElevation,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      forceElevated: model.forceElevated ?? false,
      backgroundColor: model.backgroundColor.toColor(context),
      foregroundColor: model.foregroundColor.toColor(context),
      primary: model.primary ?? true,
      centerTitle: model.centerTitle,
      excludeHeaderSemantics: model.excludeHeaderSemantics ?? false,
      titleSpacing: model.titleSpacing,
      collapsedHeight: model.collapsedHeight,
      expandedHeight: model.expandedHeight,
      floating: model.floating ?? false,
      pinned: model.pinned ?? true,
      snap: model.snap ?? false,
      stretch: model.stretch ?? false,
      stretchTriggerOffset: model.stretchTriggerOffset ?? 100.0,
      shape: model.shape?.parse(context),
      toolbarHeight: model.toolbarHeight ?? 64.0,
      leadingWidth: model.leadingWidth,
      toolbarTextStyle: model.toolbarTextStyle?.parse(context),
      titleTextStyle: model.titleTextStyle?.parse(context),
      systemOverlayStyle: model.systemOverlayStyle?.parse(context),
      forceMaterialTransparency: model.forceMaterialTransparency ?? false,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      actionsPadding: model.actionsPadding?.parse,
    );
  }
}
