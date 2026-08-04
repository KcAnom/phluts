import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_navigation_view.g.dart';

/// A Phluts widget that displays one of its `children` based on the active
/// index provided by a `NavigationScope` (established by a
/// [PhlutsDefaultNavigationController]).
///
/// Generic replacement for [PhlutsBottomNavigationView] — works with any
/// navigation widget (`bottomNavigationBar`, `navigationBar`, etc.).
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDefaultNavigationController(
///   length: 3,
///   child: PhlutsScaffold(
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
@JsonSerializable()
class PhlutsNavigationView extends PhlutsWidget {
  /// Creates a [PhlutsNavigationView].
  const PhlutsNavigationView({required this.children});

  /// The list of pages that can be displayed.
  ///
  /// Type: [List] of [PhlutsWidget]
  final List<PhlutsWidget> children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.navigationView.name;

  /// Creates a [PhlutsNavigationView] from a JSON map.
  factory PhlutsNavigationView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNavigationViewFromJson(json);

  /// Converts this [PhlutsNavigationView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNavigationViewToJson(this);
}
