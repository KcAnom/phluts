import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsNetworkWidgetParser extends PhlutsParser<PhlutsNetworkWidget> {
  const PhlutsNetworkWidgetParser();

  @override
  String get type => WidgetType.networkWidget.name;

  @override
  PhlutsNetworkWidget getModel(Map<String, dynamic> json) =>
      PhlutsNetworkWidget.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsNetworkWidget model) {
    return Phluts.fromNetwork(
      context: context,
      request: model.request,
      loadingWidget: model.loadingWidget != null
          ? (context) =>
                model.loadingWidget!.parse(context) ??
                const Center(child: CircularProgressIndicator())
          : (context) => const Center(child: CircularProgressIndicator()),
      errorWidget: model.errorWidget != null
          ? (context, error) =>
                model.errorWidget!.parse(context) ?? const SizedBox()
          : null,
    );
  }
}
