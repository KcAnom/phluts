/// Base exception class for all PHLUTS CLI errors
class PhlutsException implements Exception {
  final String message;
  final int? exitCode;
  final dynamic cause;

  const PhlutsException(this.message, {this.exitCode, this.cause});

  @override
  String toString() => 'PhlutsException: $message';
}
