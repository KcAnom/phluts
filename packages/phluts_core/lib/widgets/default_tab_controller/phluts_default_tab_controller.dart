import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_default_tab_controller.g.dart';

/// A Phluts model representing Flutter's [DefaultTabController] widget.
///
/// Provides a default [TabController] to descendant widgets, used with
/// [TabBar] and [TabBarView] to coordinate tab selection.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDefaultTabController(
///   length: 3,
///   initialIndex: 1,
///   child: PhlutsTabBarView(children: [/* ... */]),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "defaultTabController",
///   "length": 3,
///   "initialIndex": 1,
///   "child": { "type": "tabBarView", "children": [] }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's DefaultTabController documentation (`https://api.flutter.dev/flutter/material/DefaultTabController-class.html`)
@JsonSerializable()
class PhlutsDefaultTabController extends PhlutsWidget {
  /// Creates a [PhlutsDefaultTabController].
  const PhlutsDefaultTabController({
    required this.length,
    this.initialIndex,
    this.animationDuration,
    required this.child,
  });

  /// The number of tabs.
  final int length;

  /// The initial index of the selected tab.
  final int? initialIndex;

  /// The duration of the tab change animation.
  final PhlutsDuration? animationDuration;

  /// The subtree that has access to the provided [TabController].
  final PhlutsWidget child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.defaultTabController.name;

  /// Creates a [PhlutsDefaultTabController] from a JSON map.
  factory PhlutsDefaultTabController.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDefaultTabControllerFromJson(json);

  /// Converts this [PhlutsDefaultTabController] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDefaultTabControllerToJson(this);
}
