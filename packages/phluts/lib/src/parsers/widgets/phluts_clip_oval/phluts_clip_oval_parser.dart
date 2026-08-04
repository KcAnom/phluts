import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsClipOvalParser extends PhlutsParser<PhlutsClipOval> {
  const PhlutsClipOvalParser();

  @override
  String get type => WidgetType.clipOval.name;

  @override
  PhlutsClipOval getModel(Map<String, dynamic> json) =>
      PhlutsClipOval.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsClipOval model) {
    return ClipOval(
      clipBehavior: model.clipBehavior?.parse ?? Clip.antiAlias,
      child: model.child?.parse(context),
    );
  }
}
