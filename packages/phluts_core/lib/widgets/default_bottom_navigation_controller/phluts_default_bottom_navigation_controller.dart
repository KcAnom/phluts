import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_default_bottom_navigation_controller.g.dart';

/// A Phluts model representing Flutter's DefaultTabController widget for bottom navigation.
///
/// This widget provides a controller for managing bottom navigation state and
/// establishes a BottomNavigationScope that can be accessed by child widgets
/// like PhlutsBottomNavigationView and PhlutsBottomNavigationBar.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDefaultBottomNavigationController(
///   length: 3,
///   initialIndex: 0,
///   child: PhlutsScaffold(
///     appBar: PhlutsAppBar(
///       title: PhlutsText('Bottom Navigation Screen'),
///     ),
///     body: PhlutsBottomNavigationView(
///       children: const [
///         PhlutsCenter(child: PhlutsText('Home')),
///         PhlutsCenter(child: PhlutsText('Search')),
///         PhlutsCenter(child: PhlutsText('Profile')),
///       ],
///     ),
///     bottomNavigationBar: PhlutsBottomNavigationBar(
///       items: [
///         PhlutsBottomNavigationBarItem(
///           icon: PhlutsIcon(icon: 'home'),
///           label: 'Home',
///         ),
///         PhlutsBottomNavigationBarItem(
///           icon: PhlutsIcon(icon: 'search'),
///           label: 'Search',
///         ),
///         PhlutsBottomNavigationBarItem(
///           icon: PhlutsIcon(icon: 'account_circle'),
///           label: 'Profile',
///         ),
///       ],
///     ),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "defaultBottomNavigationController",
///   "length": 3,
///   "initialIndex": 0,
///   "child": {
///     "type": "scaffold",
///     "appBar": {
///       "type": "appBar",
///       "title": {"type": "text", "data": "Bottom Navigation Screen"}
///     },
///     "body": {
///       "type": "bottomNavigationView",
///       "children": [
///         {"type": "center", "child": {"type": "text", "data": "Home"}},
///         {"type": "center", "child": {"type": "text", "data": "Search"}},
///         {"type": "center", "child": {"type": "text", "data": "Profile"}}
///       ]
///     },
///     "bottomNavigationBar": {
///       "type": "bottomNavigationBar",
///       "items": [
///         {
///           "type": "navigationBarItem",
///           "label": "Home",
///           "icon": {"type": "icon", "icon": "home"}
///         },
///         {
///           "type": "navigationBarItem",
///           "label": "Search",
///           "icon": {"type": "icon", "icon": "search"}
///         },
///         {
///           "type": "navigationBarItem",
///           "label": "Profile",
///           "icon": {"type": "icon", "icon": "account_circle"}
///         }
///       ]
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's DefaultTabController docs (https://api.flutter.dev/flutter/material/DefaultTabController-class.html)
@Deprecated(
  'Use PhlutsDefaultNavigationController (type: "defaultNavigationController") instead. Will be removed in a future release.',
)
@JsonSerializable()
class PhlutsDefaultBottomNavigationController extends PhlutsWidget {
  /// Creates a [PhlutsDefaultBottomNavigationController] with the specified properties.
  const PhlutsDefaultBottomNavigationController({
    required this.length,
    this.initialIndex,
    required this.child,
  });

  /// The number of tabs/bottom navigation items.
  ///
  /// Type: int
  final int length;

  /// The initial index of the selected tab.
  ///
  /// Type: int?
  final int? initialIndex;

  /// The child widget that will be wrapped by this controller.
  ///
  /// Type: PhlutsWidget
  final PhlutsWidget child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.defaultBottomNavigationController.name;

  /// Creates a [PhlutsDefaultBottomNavigationController] from JSON.
  factory PhlutsDefaultBottomNavigationController.fromJson(
    Map<String, dynamic> json,
  ) => _$PhlutsDefaultBottomNavigationControllerFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() =>
      _$PhlutsDefaultBottomNavigationControllerToJson(this);
}
