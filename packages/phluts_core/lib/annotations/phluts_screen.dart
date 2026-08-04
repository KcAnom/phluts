/// Annotation to mark methods that return PhlutsWidget instances.
///
/// This annotation is used to identify screen-level widgets in the Phluts framework.
/// Methods that return PhlutsWidget should be annotated with this to indicate
/// they represent screen definitions.
///
/// Example usage:
/// ```dart
/// @PhlutsScreen(screenName: 'home')
/// PhlutsWidget buildHomeScreen() {
///   return PhlutsWidget(jsonData: {'type': 'scaffold', 'body': '...'});
/// }
/// ```
class PhlutsScreen {
  /// Creates a [PhlutsScreen] annotation with the given screen name.
  const PhlutsScreen({required this.screenName});

  /// The name identifier for this screen.
  final String screenName;
}
