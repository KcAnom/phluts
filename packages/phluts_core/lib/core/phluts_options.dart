/// Immutable configuration for Phluts projects and exports.
///
/// Use `PhlutsOptions` to describe your project's identity and where Phluts
/// should read source files and write generated output.
///
/// Example:
/// ```dart
/// const options = PhlutsOptions(
///   name: 'MyProject',
///   projectId: 'my_project_id',
///   // apiKey: '...optional...',
///   // Override paths if needed (absolute or relative to your project root):
///   // sourceDir: '/phluts/',
///   // outputDir: '/phluts/.build',
/// );
/// ```
class PhlutsOptions {
  /// Creates a [PhlutsOptions] with the given configuration.
  const PhlutsOptions({
    required this.name,
    this.description,
    required this.projectId,
    this.sourceDir = '/phluts/',
    this.outputDir = '/phluts/.build',
  });

  /// Human‑readable project name.
  final String name;

  /// Optional short description of the project.
  final String? description;

  /// Unique identifier for the project, used by tooling and integrations.
  final String projectId;

  /// Directory path where Phluts source files are located.
  ///
  /// Can be absolute or relative to your project root.
  final String sourceDir;

  /// Directory path where Phluts generates build artifacts.
  ///
  /// Can be absolute or relative to your project root.
  final String outputDir;
}
