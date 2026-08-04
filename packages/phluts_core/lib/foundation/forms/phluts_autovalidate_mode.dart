/// Mirrors Flutter's [AutovalidateMode] for form fields.
enum PhlutsAutovalidateMode {
  /// Validation is disabled.
  disabled,

  /// Validation occurs after every build.
  always,

  /// Validation occurs after user interaction.
  onUserInteraction,
}
