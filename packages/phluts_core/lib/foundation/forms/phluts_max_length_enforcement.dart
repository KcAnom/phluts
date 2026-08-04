/// Mirrors Flutter's [MaxLengthEnforcement] for text input.
enum PhlutsMaxLengthEnforcement {
  /// Characters past the limit are still allowed, but the error is shown.
  none,

  /// Enforces the character limit at the platform level.
  enforced,
}
