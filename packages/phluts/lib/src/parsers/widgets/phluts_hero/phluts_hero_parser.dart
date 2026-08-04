import 'package:flutter/widgets.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/animation/phluts_rect_tween_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsHeroParser extends PhlutsParser<PhlutsHero> {
  const PhlutsHeroParser();

  @override
  String get type => WidgetType.hero.name;

  @override
  PhlutsHero getModel(Map<String, dynamic> json) => PhlutsHero.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsHero model) {
    return Hero(
      tag: model.tag,
      createRectTween: model.createRectTween != null
          ? (_, _) => model.createRectTween!.parse(context)
          : null,
      flightShuttleBuilder: model.flightShuttleBuilder != null
          ? (
              flightContext,
              animation,
              flightDirection,
              fromHeroContext,
              toHeroContext,
            ) {
              final widget = model.flightShuttleBuilder!.parse(flightContext);
              return widget ?? const SizedBox();
            }
          : null,
      placeholderBuilder: model.placeholderBuilder != null
          ? (context, heroSize, child) {
              final widget = model.placeholderBuilder!.parse(context);
              return widget ?? const SizedBox();
            }
          : null,
      transitionOnUserGestures: model.transitionOnUserGestures ?? false,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
