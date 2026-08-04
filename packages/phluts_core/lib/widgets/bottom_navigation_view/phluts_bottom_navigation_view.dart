import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_bottom_navigation_view.g.dart';

/// A Phluts model representing a custom Bottom Navigation view container.
///
/// This widget displays one of its `children` based on the active index
/// provided by a `BottomNavigationScope` (established by a
/// `PhlutsDefaultBottomNavigationController`). It is typically placed as the
/// `body` of a `Scaffold` while the bottom navigation bar controls the
/// current index.
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
///   "child": {
///     "type": "scaffold",
///     "appBar": {
///       "type": "appBar",
///       "title": { "type": "text", "data": "Bottom Navigation Screen" }
///     },
///     "body": {
///       "type": "bottomNavigationView",
///       "children": [
///         { "type": "center", "child": { "type": "text", "data": "Home" } },
///         { "type": "center", "child": { "type": "text", "data": "Search" } },
///         { "type": "center", "child": { "type": "text", "data": "Profile" } }
///       ]
///     },
///     "bottomNavigationBar": {
///       "type": "bottomNavigationBar",
///       "items": [
///         { "type": "navigationBarItem", "label": "Home", "icon": { "type": "icon", "iconType": "material", "icon": "home" } },
///         { "type": "navigationBarItem", "label": "Search", "icon": { "type": "icon", "iconType": "material", "icon": "search" } },
///         { "type": "navigationBarItem", "label": "Profile", "icon": { "type": "icon", "iconType": "material", "icon": "account_circle" } }
///       ]
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's `BottomNavigationBar` docs (`https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html`)
@Deprecated(
  'Use PhlutsNavigationView (type: "navigationView") instead. Will be removed in a future release.',
)
@JsonSerializable()
class PhlutsBottomNavigationView extends PhlutsWidget {
  /// Creates a [PhlutsBottomNavigationView].
  const PhlutsBottomNavigationView({required this.children});

  /// The list of pages that can be displayed.
  ///
  /// Type: [List] of [PhlutsWidget]
  final List<PhlutsWidget> children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.bottomNavigationView.name;

  /// Creates a [PhlutsBottomNavigationView] from a JSON map.
  factory PhlutsBottomNavigationView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBottomNavigationViewFromJson(json);

  /// Converts this [PhlutsBottomNavigationView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBottomNavigationViewToJson(this);
}
