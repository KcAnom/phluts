/// Annotation to mark methods that return theme definitions.
///
/// This annotation is used to identify Phluts theme builders so the framework can
/// register them and apply the correct theme at runtime.
///
/// Example usage:
/// ```dart
/// @PhlutsThemeConfig(themeName: 'darkTheme')
/// ThemeData buildDarkTheme() {
///   return ThemeData.dark();
/// }
/// ```
class PhlutsThemeRef {
  /// Creates a [PhlutsThemeRef] with the given theme name.
  const PhlutsThemeRef({required this.name});

  /// The identifier for this theme.
  final String name;
}
