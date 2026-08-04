import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/colors/phluts_blend_mode_parser.dart';
import 'package:phluts/src/parsers/foundation/effects/phluts_image_filter_parsers.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsBackdropFilterParser extends PhlutsParser<PhlutsBackdropFilter> {
  const PhlutsBackdropFilterParser();

  @override
  String get type => WidgetType.backdropFilter.name;

  @override
  PhlutsBackdropFilter getModel(Map<String, dynamic> json) =>
      PhlutsBackdropFilter.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsBackdropFilter model) {
    return BackdropFilter(
      filter: model.filter.parse,
      blendMode: (model.blendMode ?? PhlutsBlendMode.srcOver).parse,
      enabled: model.enabled ?? true,
      child: model.child?.parse(context) ?? const SizedBox(),
    );
  }
}
