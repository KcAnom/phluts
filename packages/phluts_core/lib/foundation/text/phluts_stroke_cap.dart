/// Stroke cap styles for line endings.
///
/// Mirrors Flutter's [StrokeCap] values.
enum PhlutsStrokeCap {
  /// Flat end at the edge of the path.
  butt,

  /// Rounded end with a semicircle extension.
  round,

  /// Square end that extends half the stroke width beyond the end.
  square,
}
