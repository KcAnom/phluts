import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_drag_start_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_physics_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_axis_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsPageViewParser extends PhlutsParser<PhlutsPageView> {
  const PhlutsPageViewParser();

  @override
  PhlutsPageView getModel(Map<String, dynamic> json) =>
      PhlutsPageView.fromJson(json);

  @override
  String get type => WidgetType.pageView.name;

  @override
  Widget parse(BuildContext context, PhlutsPageView model) {
    return _PhlutsPageViewWidget(model: model);
  }
}

class _PhlutsPageViewWidget extends StatefulWidget {
  const _PhlutsPageViewWidget({required this.model});

  final PhlutsPageView model;

  @override
  State<_PhlutsPageViewWidget> createState() => _PhlutsPageViewWidgetState();
}

class _PhlutsPageViewWidgetState extends State<_PhlutsPageViewWidget> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: widget.model.initialPage ?? 0,
      viewportFraction: widget.model.viewportFraction ?? 1.0,
      keepPage: widget.model.keepPage ?? true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: widget.model.scrollDirection?.parse ?? Axis.horizontal,
      reverse: widget.model.reverse ?? false,
      controller: _pageController,
      physics: widget.model.physics?.parse,
      pageSnapping: widget.model.pageSnapping ?? true,
      onPageChanged: (int index) {
        widget.model.onPageChanged?.parse(context);
      },
      itemBuilder: (context, index) {
        final child = widget.model.children?[index];
        return child?.parse(context) ?? const SizedBox();
      },
      itemCount: widget.model.children?.length,
      dragStartBehavior:
          widget.model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      allowImplicitScrolling: widget.model.allowImplicitScrolling ?? false,
      restorationId: widget.model.restorationId,
      clipBehavior: widget.model.clipBehavior?.parse ?? Clip.hardEdge,
      padEnds: widget.model.padEnds ?? true,
    );
  }
}
