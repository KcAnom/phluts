import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_axis_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsCarouselViewParser extends PhlutsParser<PhlutsCarouselView> {
  const PhlutsCarouselViewParser();

  @override
  String get type => WidgetType.carouselView.name;

  @override
  PhlutsCarouselView getModel(Map<String, dynamic> json) =>
      PhlutsCarouselView.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsCarouselView model) {
    final PhlutsCarouselViewType carouselType =
        model.carouselType ?? PhlutsCarouselViewType.regular;
    switch (carouselType) {
      case PhlutsCarouselViewType.regular:
        return CarouselView(
          padding: model.padding?.parse,
          backgroundColor: model.backgroundColor.toColor(context),
          elevation: model.elevation,
          overlayColor: WidgetStateProperty.all(
            model.overlayColor.toColor(context),
          ),
          itemSnapping: model.itemSnapping ?? false,
          shrinkExtent: model.shrinkExtent ?? 0.0,
          scrollDirection: model.scrollDirection?.parse ?? Axis.horizontal,
          reverse: model.reverse ?? false,
          onTap: (index) => model.onTap?.parse(context),
          enableSplash: model.enableSplash ?? true,
          itemExtent: model.itemExtent ?? 0,
          children: model.children?.parseList(context) ?? const <Widget>[],
        );
      case PhlutsCarouselViewType.weighted:
        return CarouselView.weighted(
          padding: model.padding?.parse,
          backgroundColor: model.backgroundColor.toColor(context),
          elevation: model.elevation,
          overlayColor: WidgetStateProperty.all(
            model.overlayColor.toColor(context),
          ),
          itemSnapping: model.itemSnapping ?? false,
          shrinkExtent: model.shrinkExtent ?? 0.0,
          scrollDirection: model.scrollDirection?.parse ?? Axis.horizontal,
          reverse: model.reverse ?? false,
          onTap: (index) => model.onTap?.parse(context),
          flexWeights: model.flexWeights ?? const <int>[],
          children: model.children?.parseList(context) ?? const <Widget>[],
        );
    }
  }
}
