import 'package:phluts_core/actions/navigate/phluts_navigate_action.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';

/// Ergonomic navigation API for Phluts.
///
/// Provides source-specific static factory methods for navigation actions,
/// making it clear what type of destination you're navigating to.
///
/// {@tool snippet}
/// Example usage:
/// ```dart
/// // Pop current route
/// onPressed: PhlutsNavigator.pop()
///
/// // Navigate to a Phluts screen
/// onPressed: PhlutsNavigator.pushPhluts('home_screen')
///
/// // Navigate to a Flutter route
/// onPressed: PhlutsNavigator.pushFlutter('/settings')
///
/// // Navigate with inline JSON
/// onPressed: PhlutsNavigator.pushJson({'type': 'text', 'data': 'Hello'})
///
/// // Navigate from asset file
/// onPressed: PhlutsNavigator.pushAsset('assets/screens/home.json')
///
/// // Navigate from network
/// onPressed: PhlutsNavigator.pushNetwork(PhlutsNetworkRequest(url: '...'))
/// ```
/// {@end-tool}
class PhlutsNavigator {
  /// Private constructor to prevent instantiation.
  const PhlutsNavigator._();

  /// Pops the current route off the navigator stack.
  ///
  /// Optionally pass a [result] to return to the previous route.
  static PhlutsNavigateAction pop({Map<String, dynamic>? result}) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pop,
      result: result,
    );
  }

  /// Pops all routes until the first route (root).
  static PhlutsNavigateAction popAll() {
    return const PhlutsNavigateAction(navigationStyle: NavigationStyle.popAll);
  }

  /// Pushes a Phluts screen onto the navigator stack.
  ///
  /// The [routeName] should match a route registered with Phluts.
  static PhlutsNavigateAction pushPhluts(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.push,
      routeName: routeName,
      arguments: arguments,
    );
  }

  /// Replaces the current route with a Phluts screen.
  static PhlutsNavigateAction pushReplacementPhluts(
    String routeName, {
    Map<String, dynamic>? result,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      routeName: routeName,
      result: result,
    );
  }

  /// Pushes a Phluts screen and removes all previous routes.
  static PhlutsNavigateAction pushAndRemoveAllPhluts(String routeName) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      routeName: routeName,
    );
  }

  /// Pushes a Flutter-defined named route onto the navigator stack.
  ///
  /// The [routeName] should match a route defined in your app's route table.
  static PhlutsNavigateAction pushFlutter(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushNamed,
      routeName: routeName,
      arguments: arguments,
    );
  }

  /// Replaces the current route with a Flutter-defined named route.
  static PhlutsNavigateAction pushReplacementFlutter(
    String routeName, {
    Map<String, dynamic>? result,
    Map<String, dynamic>? arguments,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushReplacementNamed,
      routeName: routeName,
      result: result,
      arguments: arguments,
    );
  }

  /// Pushes a Flutter-defined named route and removes all previous routes.
  static PhlutsNavigateAction pushAndRemoveAllFlutter(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushNamedAndRemoveAll,
      routeName: routeName,
      arguments: arguments,
    );
  }

  /// Pushes a screen defined by inline widget JSON.
  static PhlutsNavigateAction pushJson(Map<String, dynamic> widgetJson) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.push,
      widgetJson: widgetJson,
    );
  }

  /// Replaces the current route with a screen defined by inline widget JSON.
  static PhlutsNavigateAction pushReplacementJson(
    Map<String, dynamic> widgetJson, {
    Map<String, dynamic>? result,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      widgetJson: widgetJson,
      result: result,
    );
  }

  /// Pushes a screen defined by inline widget JSON and removes all previous
  /// routes.
  static PhlutsNavigateAction pushAndRemoveAllJson(
    Map<String, dynamic> widgetJson,
  ) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      widgetJson: widgetJson,
    );
  }

  /// Pushes a screen loaded from a local asset file.
  ///
  /// The [assetPath] should be the path to a JSON file in your assets.
  static PhlutsNavigateAction pushAsset(String assetPath) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.push,
      assetPath: assetPath,
    );
  }

  /// Replaces the current route with a screen loaded from a local asset file.
  static PhlutsNavigateAction pushReplacementAsset(
    String assetPath, {
    Map<String, dynamic>? result,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      assetPath: assetPath,
      result: result,
    );
  }

  /// Pushes a screen from an asset file and removes all previous routes.
  static PhlutsNavigateAction pushAndRemoveAllAsset(String assetPath) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      assetPath: assetPath,
    );
  }

  /// Pushes a screen loaded from a network request.
  static PhlutsNavigateAction pushNetwork(PhlutsNetworkRequest request) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.push,
      request: request,
    );
  }

  /// Replaces the current route with a screen loaded from a network request.
  static PhlutsNavigateAction pushReplacementNetwork(
    PhlutsNetworkRequest request, {
    Map<String, dynamic>? result,
  }) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      request: request,
      result: result,
    );
  }

  /// Pushes a screen from a network request and removes all previous routes.
  static PhlutsNavigateAction pushAndRemoveAllNetwork(
    PhlutsNetworkRequest request,
  ) {
    return PhlutsNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      request: request,
    );
  }
}
