import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsBadgeParser extends PhlutsParser<PhlutsBadge> {
  const PhlutsBadgeParser();

  @override
  String get type => WidgetType.badge.name;

  @override
  PhlutsBadge getModel(Map<String, dynamic> json) => PhlutsBadge.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsBadge model) {
    // Handle count property (Badge.count equivalent)
    Widget? label;
    if (model.count != null) {
      // Validate count and maxCount (matching Flutter's assertions)
      assert(model.count! >= 0, 'count must be non-negative');
      final maxCount = model.maxCount ?? 999;
      assert(maxCount > 0, 'maxCount must be positive');

      // Create label from count (matching Flutter's Badge.count logic)
      final labelText = model.count! > maxCount
          ? '$maxCount+'
          : '${model.count}';
      label = Text(labelText);
    } else {
      // Use explicit label if count is not provided
      label = model.label?.parse(context);
    }

    return Badge(
      backgroundColor: model.backgroundColor?.toColor(context),
      textColor: model.textColor?.toColor(context),
      smallSize: model.smallSize,
      largeSize: model.largeSize,
      textStyle: model.textStyle?.parse(context),
      padding: model.padding?.parse,
      alignment: model.alignment?.parse,
      offset: model.offset?.parse,
      label: label,
      isLabelVisible: model.isLabelVisible ?? true,
      child: model.child?.parse(context),
    );
  }
}
