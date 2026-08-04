import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

extension PhlutsWidgetParser on PhlutsWidget? {
  Widget? parse(BuildContext context) {
    if (this == null) {
      return null;
    }

    return Phluts.fromJson(this!.toJson(), context);
  }

  PreferredSizeWidget? parsePreferredSizeWidget(BuildContext context) {
    if (this == null) {
      return null;
    }

    final Widget? widget = Phluts.fromJson(this!.toJson(), context);

    return widget as PreferredSizeWidget?;
  }
}

extension PhlutsWidgetListParser on List<PhlutsWidget>? {
  List<Widget>? parseList(BuildContext context) {
    if (this == null) {
      return null;
    }

    return this!
        .map((e) => e.parse(context) ?? const SizedBox.shrink())
        .toList();
  }
}
