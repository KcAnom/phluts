import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_default_navigation_controller.g.dart';

/// A Phluts widget that provides a controller for managing navigation state
/// (current selected index) and exposes a `NavigationScope` to descendants.
///
/// This is the generic replacement for [PhlutsDefaultBottomNavigationController]
/// and works with any navigation widget — `bottomNavigationBar`,
/// `navigationBar`, etc. — combined with [PhlutsNavigationView] for the body.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDefaultNavigationController(
///   length: 3,
///   initialIndex: 0,
///   child: PhlutsScaffold(
///     appBar: PhlutsAppBar(title: PhlutsText('Navigation')),
///     body: PhlutsNavigationView(
///       children: const [
///         PhlutsCenter(child: PhlutsText('Home')),
///         PhlutsCenter(child: PhlutsText('Search')),
///         PhlutsCenter(child: PhlutsText('Profile')),
///       ],
///     ),
///     bottomNavigationBar: PhlutsNavigationBar(
///       destinations: [
///         PhlutsNavigationDestination(icon: PhlutsIcon(icon: 'home'), label: 'Home'),
///         PhlutsNavigationDestination(icon: PhlutsIcon(icon: 'search'), label: 'Search'),
///         PhlutsNavigationDestination(icon: PhlutsIcon(icon: 'account_circle'), label: 'Profile'),
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
///   "type": "defaultNavigationController",
///   "length": 3,
///   "initialIndex": 0,
///   "child": { "type": "scaffold", ... }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsDefaultNavigationController extends PhlutsWidget {
  /// Creates a [PhlutsDefaultNavigationController] with the specified properties.
  const PhlutsDefaultNavigationController({
    required this.length,
    this.initialIndex,
    required this.child,
  });

  /// The number of navigation destinations.
  ///
  /// Type: int
  final int length;

  /// The initial index of the selected destination.
  ///
  /// Type: int?
  final int? initialIndex;

  /// The child widget that will be wrapped by this controller.
  ///
  /// Type: PhlutsWidget
  final PhlutsWidget child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.defaultNavigationController.name;

  /// Creates a [PhlutsDefaultNavigationController] from JSON.
  factory PhlutsDefaultNavigationController.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDefaultNavigationControllerFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() =>
      _$PhlutsDefaultNavigationControllerToJson(this);
}
