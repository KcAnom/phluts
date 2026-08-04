/// Represents an annotated callable (screen or theme) discovered in Phluts DSL.
class PhlutsDslArtifact {
  final PhlutsDslArtifactType type;

  /// Function or getter name to invoke.
  final String callableName;

  /// Human-readable identifier (screenName or themeName).
  final String artifactName;

  /// Whether this callable should be read as a getter instead of invoked.
  final bool isGetter;

  const PhlutsDslArtifact({
    required this.type,
    required this.callableName,
    required this.artifactName,
    this.isGetter = false,
  });

  factory PhlutsDslArtifact.screen({
    required String functionName,
    required String screenName,
    bool isGetter = false,
  }) {
    return PhlutsDslArtifact(
      type: PhlutsDslArtifactType.screen,
      callableName: functionName,
      artifactName: screenName,
      isGetter: isGetter,
    );
  }

  factory PhlutsDslArtifact.theme({
    required String memberName,
    required String themeName,
    required bool isGetter,
  }) {
    return PhlutsDslArtifact(
      type: PhlutsDslArtifactType.theme,
      callableName: memberName,
      artifactName: themeName,
      isGetter: isGetter,
    );
  }

  String get logLabel =>
      type == PhlutsDslArtifactType.screen ? 'screen' : 'theme';

  String get resultKeyPrefix =>
      type == PhlutsDslArtifactType.screen ? 'screens' : 'themes';
}

enum PhlutsDslArtifactType { screen, theme }
