import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsNavigateActionParser
    extends PhlutsActionParser<PhlutsNavigateAction> {
  const PhlutsNavigateActionParser();

  @override
  String get actionType => ActionType.navigate.name;

  @override
  PhlutsNavigateAction getModel(Map<String, dynamic> json) =>
      PhlutsNavigateAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, PhlutsNavigateAction model) {
    Widget? widget;
    if (model.widgetJson != null) {
      widget = Phluts.fromJson(model.widgetJson, context);
    } else if (model.request != null) {
      widget = Phluts.fromNetwork(context: context, request: model.request!);
    } else if (model.assetPath != null) {
      widget = Phluts.fromAssets(model.assetPath!);
    } else if (model.routeName != null &&
        (model.navigationStyle == null ||
            model.navigationStyle == NavigationStyle.push ||
            model.navigationStyle == NavigationStyle.pushReplacement ||
            model.navigationStyle == NavigationStyle.pushAndRemoveAll)) {
      // If a routeName is provided and we're using a push-style navigation,
      // render the remote screen using the Phluts(routeName) widget.
      widget = Phluts(routeName: model.routeName!);
    }
    return _navigate(
      context: context,
      navigationStyle: model.navigationStyle ?? NavigationStyle.push,
      routeName: model.routeName,
      result: model.result,
      arguments: model.arguments,
      widget: widget,
    );
  }

  static Future<dynamic>? _navigate<T extends Object?>({
    required BuildContext context,
    NavigationStyle navigationStyle = NavigationStyle.push,
    Widget? widget,
    String? routeName,
    T? result,
    T? arguments,
  }) {
    switch (navigationStyle) {
      case NavigationStyle.push:
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => widget ?? const SizedBox()),
        );

      case NavigationStyle.pop:
        Navigator.pop(context, result);
        break;

      case NavigationStyle.pushReplacement:
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => widget ?? const SizedBox()),
          result: result,
        );

      case NavigationStyle.pushAndRemoveAll:
        return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => widget ?? const SizedBox()),
          ModalRoute.withName('/'),
        );

      case NavigationStyle.popAll:
        Navigator.popUntil(context, ModalRoute.withName('/'));
        break;

      case NavigationStyle.pushNamed:
        return Navigator.pushNamed(context, routeName!, arguments: arguments);

      case NavigationStyle.pushNamedAndRemoveAll:
        return Navigator.pushNamedAndRemoveUntil(
          context,
          routeName!,
          ModalRoute.withName('/'),
          arguments: arguments,
        );

      case NavigationStyle.pushReplacementNamed:
        return Navigator.pushReplacementNamed(
          context,
          routeName!,
          result: result,
          arguments: arguments,
        );
    }

    return null;
  }
}
