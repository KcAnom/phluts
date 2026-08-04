import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/foundation.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsTooltipThemeData].
///
/// Converts [PhlutsTooltipThemeData] to Flutter's [TooltipThemeData].
extension PhlutsTooltipThemeDataParser on PhlutsTooltipThemeData {
  TooltipThemeData parse(BuildContext context) {
    return TooltipThemeData(
      constraints: constraints?.parse,
      padding: padding?.parse,
      margin: margin?.parse,
      verticalOffset: verticalOffset,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      decoration: decoration?.parse(context),
      textStyle: textStyle?.parse(context),
      textAlign: textAlign?.parse,
      waitDuration: waitDuration?.parse,
      showDuration: showDuration?.parse,
      exitDuration: exitDuration?.parse,
      triggerMode: triggerMode?.parse,
      enableFeedback: enableFeedback,
    );
  }
}
