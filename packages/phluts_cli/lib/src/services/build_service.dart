import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:phluts_cli/src/utils/string_utils.dart';
import 'package:phluts_core/core/phluts_options.dart';

import '../exceptions/build_exception.dart';
import '../models/phluts_dsl_artifact.dart';
import '../utils/console_logger.dart';
import '../utils/file_utils.dart';

/// Service for building Dart widget definitions to JSON for Phluts SDUI
class BuildService {
  /// Build the project from Dart to JSON using analyzer + isolate execution
  Future<void> build({String? projectPath}) async {
    // Determine project root (directory containing pubspec.yaml)
    final projectDir =
        projectPath ?? _findProjectRoot() ?? Directory.current.path;

    // Load build configuration from lib/default_phluts_options.dart (with defaults)
    final options = await _loadBuildConfigFromOptions(projectDir);

    ConsoleLogger.info('Building Phluts project...');
    ConsoleLogger.debug('Project directory: $projectDir');
    ConsoleLogger.info('Source directory: ${options.sourceDir}');
    ConsoleLogger.info('Output directory: ${options.outputDir}');

    // Ensure output directory exists
    final outputDirPath = path.join(projectDir, options.outputDir);
    await Directory(outputDirPath).create(recursive: true);

    // Clear the output directory before generating new files
    await _clearOutputDirectory(outputDirPath);
    final screensOutputDir = path.join(outputDirPath, 'screens');
    final themesOutputDir = path.join(outputDirPath, 'themes');
    await Directory(screensOutputDir).create(recursive: true);
    await Directory(themesOutputDir).create(recursive: true);

    // Find all .dart files in the source directory
    final sourceDirPath = path.join(projectDir, options.sourceDir);
    final sourceDir = Directory(sourceDirPath);
    if (!await sourceDir.exists()) {
      throw const BuildException(
        'Source directory does not exist. Run "phluts init" first.',
      );
    }

    final dartFiles = await _findDartFiles(sourceDirPath);
    if (dartFiles.isEmpty) {
      throw const BuildException('No .dart files found in source directory.');
    }

    ConsoleLogger.info('Found ${dartFiles.length} .dart file(s) to process');

    int functionsProcessed = 0;
    int functionsFailed = 0;
    int themesProcessed = 0;
    int themesFailed = 0;
    final failedFiles = <String>[];
    final generatedResults = <String, Map<String, dynamic>>{};

    for (final filePath in dartFiles) {
      final relativePath = path.relative(filePath, from: projectDir);
      ConsoleLogger.debug('Processing: $relativePath');
      try {
        final sourceFile = File(filePath);
        final analysis = await _analyzePhlutsFile(sourceFile);
        final phlutsScreenArtifacts = analysis.screenArtifacts;
        final phlutsThemeArtifacts = analysis.themeArtifacts;

        if (phlutsScreenArtifacts.isEmpty && phlutsThemeArtifacts.isEmpty) {
          ConsoleLogger.debug(
            'No @PhlutsScreen or @PhlutsThemeRef annotations found in $relativePath',
          );
          continue;
        }

        if (phlutsScreenArtifacts.isNotEmpty) {
          ConsoleLogger.info(
            'Found ${phlutsScreenArtifacts.length} @PhlutsScreen annotated function(s) in $relativePath',
          );

          await _processArtifacts(
            projectDir: projectDir,
            sourceFile: sourceFile,
            relativePath: relativePath,
            artifacts: phlutsScreenArtifacts,
            outputDir: screensOutputDir,
            generatedResults: generatedResults,
            onSuccess: () => functionsProcessed++,
            onFailure: () {
              functionsFailed++;
              failedFiles.add(relativePath);
            },
          );
        }

        if (phlutsThemeArtifacts.isNotEmpty) {
          ConsoleLogger.info(
            'Found ${phlutsThemeArtifacts.length} @PhlutsThemeRef definition(s) in $relativePath',
          );

          await _processArtifacts(
            projectDir: projectDir,
            sourceFile: sourceFile,
            relativePath: relativePath,
            artifacts: phlutsThemeArtifacts,
            outputDir: themesOutputDir,
            generatedResults: generatedResults,
            onSuccess: () => themesProcessed++,
            onFailure: () {
              themesFailed++;
              failedFiles.add(relativePath);
            },
          );
        }
      } catch (e) {
        functionsFailed++;
        failedFiles.add(relativePath);
        final message = e is BuildException ? e.message : e.toString();
        ConsoleLogger.error('$relativePath: $message');
      }
    }

    // Log build results based on success/failure status
    final totalProcessed = functionsProcessed + themesProcessed;
    final totalFailed = functionsFailed + themesFailed;

    if (totalProcessed > 0) {
      if (totalFailed > 0) {
        ConsoleLogger.warning('Build completed with errors.');
      } else {
        ConsoleLogger.success('✓ Build completed successfully!');
      }
      ConsoleLogger.info(
        'Screens → processed: $functionsProcessed, failed: $functionsFailed | Themes → processed: $themesProcessed, failed: $themesFailed',
      );
      if (failedFiles.isNotEmpty) {
        ConsoleLogger.warning(
          'Failed files:\n${failedFiles.map((f) => '         - $f').join('\n')}',
        );
        throw BuildException(
          '$totalFailed file(s) failed to build. Fix the errors above and try again.',
        );
      }
    } else if (totalFailed > 0) {
      throw BuildException(
        'Build failed: $totalFailed file(s) failed to process.\n'
        '  Failed: ${failedFiles.join(', ')}',
      );
    } else {
      throw const BuildException(
        'No @PhlutsScreen or @PhlutsThemeRef annotations found. Add annotations to your screen widgets or themes.',
      );
    }
  }

  /// Find all .dart files in the source directory recursively
  Future<List<String>> _findDartFiles(String sourceDir) async {
    final dartFiles = <String>[];
    final dir = Directory(sourceDir);

    await for (final entity in dir.list(recursive: true, followLinks: false)) {
      if (entity is File && entity.path.endsWith('.dart')) {
        // Skip hidden directories and build directories
        if (!entity.path.contains('/.') && !entity.path.contains('.build')) {
          dartFiles.add(entity.path);
        }
      }
    }

    return dartFiles;
  }

  /// Load build configuration from lib/default_phluts_options.dart with sensible defaults
  Future<PhlutsOptions> _loadBuildConfigFromOptions(String projectDir) async {
    final optionsPath = path.join(
      projectDir,
      'lib',
      'default_phluts_options.dart',
    );
    if (!await FileUtils.fileExists(optionsPath)) {
      throw const BuildException(
        'Could not find default_phluts_options.dart. Run "phluts init" first.',
      );
    }

    try {
      final content = await FileUtils.readFile(optionsPath);

      final name =
          RegExp(r"name:\s*'([^']*)'").firstMatch(content)?.group(1) ?? 'Phluts';

      final description =
          RegExp(r"description:\s*'([^']*)'").firstMatch(content)?.group(1) ??
          'Phluts';

      final projectId =
          RegExp(r"projectId:\s*'([^']*)'").firstMatch(content)?.group(1) ??
          'phluts';

      final sourceDir =
          RegExp(r"sourceDir:\s*'([^']*)'").firstMatch(content)?.group(1) ??
          'phluts';

      final outputDir =
          RegExp(r"outputDir:\s*'([^']*)'").firstMatch(content)?.group(1) ??
          'phluts/.build';

      return PhlutsOptions(
        name: name,
        description: description,
        projectId: projectId,
        sourceDir: sourceDir,
        outputDir: outputDir,
      );
    } catch (e) {
      // If parsing fails, use defaults
      ConsoleLogger.error('Failed to parse build options, using defaults: $e');
      return const PhlutsOptions(
        name: 'Phluts',
        description: 'Phluts',
        projectId: 'phluts',
        sourceDir: 'phluts',
        outputDir: 'phluts/.build',
      );
    }
  }

  /// Forbidden imports that pull in Flutter and cannot be compiled with `dart run`.
  static const _forbiddenImports = [
    'package:phluts/phluts.dart',
    'package:flutter/',
  ];

  /// Validates that a phluts source file does not import Flutter-dependent packages.
  /// Returns a non-null error message when a forbidden import is found.
  String? _validateImports(String content, String filePath) {
    for (final line in content.split('\n')) {
      final trimmed = line.trim();
      if (!trimmed.startsWith('import ')) continue;
      for (final forbidden in _forbiddenImports) {
        if (trimmed.contains(forbidden)) {
          return 'imports "$forbidden" which requires Flutter and cannot be '
              'compiled by the CLI. Use "package:phluts/phluts_core.dart" instead.';
        }
      }
    }
    return null;
  }

  /// Analyze a Dart file and return annotated screen + theme information
  Future<_PhlutsFileAnalysis> _analyzePhlutsFile(File file) async {
    final screenArtifacts = <PhlutsDslArtifact>[];
    final themeArtifacts = <PhlutsDslArtifact>[];

    try {
      // Read and parse the file manually to find @PhlutsScreen annotated functions
      final content = await file.readAsString();

      // Validate imports before doing any expensive work
      final importError = _validateImports(content, file.path);
      if (importError != null) {
        throw BuildException(importError);
      }

      // Use dart analyze command to check if the file is valid Dart code
      final analyzeResult = Process.runSync(
        'dart',
        ['analyze', '--format=json', file.path],
        runInShell: Platform
            .isWindows, // Use shell on Windows for proper PATH resolution
      );

      if (analyzeResult.exitCode != 0) {
        ConsoleLogger.debug('Dart analyze failed for ${file.path}');
        if (ConsoleLogger.isVerbose) {
          ConsoleLogger.debug('Analyze output: ${analyzeResult.stdout}');
          ConsoleLogger.debug('Analyze errors: ${analyzeResult.stderr}');
        }
      }
      final phlutsScreenFunctions = _extractDslArtifacts(
        content,
        type: PhlutsDslArtifactType.screen,
      );
      screenArtifacts.addAll(phlutsScreenFunctions);
      final phlutsThemeDefinitions = _extractDslArtifacts(
        content,
        type: PhlutsDslArtifactType.theme,
      );
      themeArtifacts.addAll(phlutsThemeDefinitions);

      for (final phlutsScreenFunction in phlutsScreenFunctions) {
        ConsoleLogger.debug(
          'Found @PhlutsScreen annotated function: ${phlutsScreenFunction.callableName} -> ${phlutsScreenFunction.artifactName}',
        );
      }

      for (final themeDefinition in phlutsThemeDefinitions) {
        ConsoleLogger.debug(
          'Found @PhlutsThemeRef definition: ${themeDefinition.callableName} -> ${themeDefinition.artifactName} (getter: ${themeDefinition.isGetter})',
        );
      }
    } on BuildException {
      rethrow;
    } catch (e, stackTrace) {
      ConsoleLogger.debug('Error analyzing ${file.path}: $e');
      if (ConsoleLogger.isVerbose) {
        ConsoleLogger.debug('Stack trace: $stackTrace');
      }
    }

    return _PhlutsFileAnalysis(
      screenArtifacts: screenArtifacts,
      themeArtifacts: themeArtifacts,
    );
  }

  List<PhlutsDslArtifact> _extractDslArtifacts(
    String content, {
    required PhlutsDslArtifactType type,
  }) {
    final artifacts = <PhlutsDslArtifact>[];
    final annotationName = type == PhlutsDslArtifactType.screen
        ? 'PhlutsScreen'
        : 'PhlutsThemeRef';
    final parameterName = type == PhlutsDslArtifactType.screen
        ? 'screenName'
        : 'name';
    final callablePrefixPattern = type == PhlutsDslArtifactType.screen
        ? r'(?:PhlutsWidget\s+)?'
        : r'(?:PhlutsTheme\s+)?';
    final annotationPattern =
        "@$annotationName\\s*\\(\\s*(?:$parameterName:\\s*)?([\"'])([^\"']+)\\1[^)]*\\)\\s*";
    const spacerPattern = r'(?:/\*[\s\S]*?\*/|//[^\n]*\n|\s)*';

    final getterPattern = RegExp(
      '$annotationPattern$spacerPattern${callablePrefixPattern}get\\s+(\\w+)\\s*(?:=>|\\{)',
      multiLine: true,
      dotAll: true,
    );

    final functionPattern = RegExp(
      '$annotationPattern$spacerPattern$callablePrefixPattern(\\w+)\\s*\\([^)]*\\)\\s*(?:=>|\\{)',
      multiLine: true,
      dotAll: true,
    );

    PhlutsDslArtifact createArtifact(
      String memberName,
      String artifactName,
      bool isGetter,
    ) {
      return type == PhlutsDslArtifactType.screen
          ? PhlutsDslArtifact.screen(
              functionName: memberName,
              screenName: artifactName,
              isGetter: isGetter,
            )
          : PhlutsDslArtifact.theme(
              memberName: memberName,
              themeName: artifactName,
              isGetter: isGetter,
            );
    }

    void addDefinition({
      required String? artifactName,
      required String? memberName,
      required bool isGetter,
    }) {
      if (artifactName == null || memberName == null) return;
      if (artifacts.any(
        (definition) => definition.artifactName == artifactName,
      )) {
        final label = type == PhlutsDslArtifactType.screen ? 'Screen' : 'Theme';
        throw BuildException(
          'Duplicate $label name "$artifactName" found. ${label}s must be unique.',
        );
      }
      artifacts.add(createArtifact(memberName, artifactName, isGetter));
    }

    for (final match in getterPattern.allMatches(content)) {
      addDefinition(
        artifactName: match.group(2),
        memberName: match.group(3),
        isGetter: true,
      );
    }

    for (final match in functionPattern.allMatches(content)) {
      addDefinition(
        artifactName: match.group(2),
        memberName: match.group(3),
        isGetter: false,
      );
    }

    return artifacts;
  }

  /// Execute a specific callable (function or getter) and retrieve its toJson()
  Future<Map<String, dynamic>?> _convertCallableToJson(
    File file,
    String callableName,
    String projectDir, {
    bool isGetter = false,
  }) async {
    ConsoleLogger.debug(
      'Converting ${isGetter ? 'getter' : 'function'} $callableName to JSON',
    );
    final scriptContent = _createWrapperScript(
      file,
      callableName,
      projectDir,
      isGetter: isGetter,
    );

    // Create a temporary file in the project directory for proper dependency resolution
    final tempFile = File(
      path.join(
        projectDir,
        '.phluts_temp_${DateTime.now().millisecondsSinceEpoch}.dart',
      ),
    );

    try {
      await tempFile.writeAsString(scriptContent);
      final result = await _executeFileInProject(tempFile, projectDir);
      if (result == null) return null;
      return result;
    } finally {
      // Ensure cleanup even if execution fails
      try {
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      } catch (_) {
        // Ignore cleanup errors
      }
    }
  }

  String _createWrapperScript(
    File originalFile,
    String callableName,
    String projectDir, {
    required bool isGetter,
  }) {
    // Use relative path from project root to the original file
    final relativePath = path.relative(originalFile.path, from: projectDir);
    // Convert backslashes to forward slashes for Dart imports
    final dartImportPath = relativePath.replaceAll('\\', '/');
    final invocation = isGetter ? 'src.$callableName' : 'src.$callableName()';

    return '''
import 'dart:convert';
import '$dartImportPath' as src;

Future<void> main(List<String> args) async {
  try {
    final result = await Future.sync(() => $invocation);
    final json = (result as dynamic).toJson();
    print(jsonEncode(json));
  } catch (e, st) {
    print(jsonEncode({'error': e.toString(), 'stackTrace': st.toString()}));
  }
}
''';
  }

  Future<void> _processArtifacts({
    required String projectDir,
    required File sourceFile,
    required String relativePath,
    required List<PhlutsDslArtifact> artifacts,
    required String outputDir,
    required Map<String, Map<String, dynamic>> generatedResults,
    required void Function() onSuccess,
    required void Function() onFailure,
  }) async {
    for (final artifact in artifacts) {
      try {
        final json = await _convertCallableToJson(
          sourceFile,
          artifact.callableName,
          projectDir,
          isGetter: artifact.isGetter,
        );

        if (json == null) continue;
        final cleaned = _cleanJson(json);
        if (cleaned == null) continue;

        final fileName = artifact.artifactName;
        final outputFilePath = path.join(outputDir, '$fileName.json');
        final jsonString = const JsonEncoder.withIndent('  ').convert(cleaned);
        await FileUtils.writeFile(outputFilePath, jsonString);
        generatedResults['${artifact.resultKeyPrefix}/$fileName.json'] =
            cleaned as Map<String, dynamic>;
        ConsoleLogger.info('✓ Generated ${artifact.logLabel}: $fileName.json');
        onSuccess();
      } catch (e) {
        onFailure();
        ConsoleLogger.error(
          'Failed to process ${artifact.logLabel} ${artifact.callableName} in $relativePath: $e',
        );
      }
    }
  }

  Future<Map<String, dynamic>?> _executeFileInProject(
    File scriptFile,
    String projectDir,
  ) async {
    try {
      // Execute Dart file in project context for proper dependency resolution
      final result =
          await Process.run(
            'dart',
            ['run', path.basename(scriptFile.path)],
            workingDirectory: projectDir,
            runInShell: Platform
                .isWindows, // Use shell on Windows for proper PATH resolution
          ).timeout(
            const Duration(seconds: 60),
            onTimeout: () {
              throw Exception('Script execution timed out after 60 seconds');
            },
          );

      final stdout = result.stdout.toString();
      final stderr = result.stderr.toString();

      if (stdout.isNotEmpty) {
        try {
          // Extract JSON from stdout - build hooks may print text before/after the JSON
          final jsonString = _extractJson(stdout);
          if (jsonString == null) {
            ConsoleLogger.debug('No JSON found in output: $stdout');
            throw const FormatException('No valid JSON object found in output');
          }
          final decoded = jsonDecode(jsonString);
          if (decoded is Map) {
            final decodedMap = decoded.cast<String, dynamic>();
            // Check if it's an error response
            if (decodedMap.containsKey('error')) {
              final errorMessage =
                  decodedMap['error']?.toString() ?? 'Unknown error';
              final errorDetails = decodedMap['details']?.toString();
              final errorStack = decodedMap['stackTrace']?.toString();

              ConsoleLogger.error('Function execution failed: $errorMessage');
              if (errorDetails != null) {
                ConsoleLogger.error('Error details: $errorDetails');
              }
              if (errorStack != null && ConsoleLogger.isVerbose) {
                ConsoleLogger.error('Stack trace: $errorStack');
              }
              ConsoleLogger.debug('Full error response: $decodedMap');

              throw Exception(
                'Function execution failed: $errorMessage${errorDetails != null ? ' - $errorDetails' : ''}',
              );
            }
            return decodedMap;
          }
        } catch (e) {
          if (e is Exception) rethrow;
          ConsoleLogger.debug('Failed to parse JSON output: $e');
          ConsoleLogger.debug('Raw output: $stdout');
        }
      }

      if (result.exitCode != 0) {
        ConsoleLogger.debug(
          'Dart execution failed with exit code ${result.exitCode}',
        );
        if (ConsoleLogger.isVerbose) {
          ConsoleLogger.debug('stderr: $stderr');
        }
        throw Exception(_summariseCompilationError(stderr));
      }
      return null;
    } catch (e) {
      ConsoleLogger.debug('Error executing script: $e');
      rethrow;
    }
  }

  /// Recursively removes null values, empty arrays, and empty objects from JSON
  dynamic _cleanJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      final cleanedMap = <String, dynamic>{};
      for (final entry in json.entries) {
        final cleanedValue = _cleanJson(entry.value);
        if (cleanedValue != null && cleanedValue != [] && cleanedValue != {}) {
          cleanedMap[entry.key] = cleanedValue;
        }
      }
      return cleanedMap.isEmpty ? null : cleanedMap;
    } else if (json is List) {
      final cleanedList = json
          .map(_cleanJson)
          .where((item) => item != null && item != [] && item != {})
          .toList();
      return cleanedList.isEmpty ? null : cleanedList;
    } else if (json is String) {
      return StringUtils.fixCharacterEncoding(json);
    }
    return json;
  }

  /// Clear the output directory of all existing files
  Future<void> _clearOutputDirectory(String outputDirPath) async {
    try {
      final outputDir = Directory(outputDirPath);
      if (await outputDir.exists()) {
        ConsoleLogger.debug('Clearing output directory: $outputDirPath');

        // Get all files in the directory
        final files = await outputDir.list().toList();
        int deletedCount = 0;

        for (final entity in files) {
          if (entity is File) {
            await entity.delete();
            deletedCount++;
          } else if (entity is Directory) {
            await entity.delete(recursive: true);
            deletedCount++;
          }
        }

        if (deletedCount > 0) {
          ConsoleLogger.debug(
            'Cleared $deletedCount file(s) from output directory',
          );
        }
      }
    } catch (e) {
      ConsoleLogger.debug('Warning: Could not clear output directory: $e');
      // Don't throw an error - just log a warning and continue
    }
  }

  String? _findProjectRoot() {
    var current = Directory.current;
    while (true) {
      final pubspecFile = File(path.join(current.path, 'pubspec.yaml'));
      if (pubspecFile.existsSync()) {
        return current.path;
      }
      final parent = current.parent;
      if (parent.path == current.path) break;
      current = parent;
    }
    return null;
  }

  /// Distils a potentially huge compilation stderr into a short, actionable message.
  String _summariseCompilationError(String stderr) {
    // Detect Flutter-related compilation errors
    final flutterIndicators = [
      "isn't a type",
      'package:flutter/',
      'widgets/',
      'material/',
      'cupertino/',
    ];

    final looksLikeFlutterError = flutterIndicators.any(
      (indicator) => stderr.contains(indicator),
    );

    if (looksLikeFlutterError) {
      return 'Compilation failed: the file (or one of its dependencies) requires Flutter.\n'
          '       Phluts screen/theme files must use only pure-Dart packages.\n'
          '       Replace "import \'package:phluts/phluts.dart\'" with '
          '"import \'package:phluts/phluts_core.dart\'" and try again.';
    }

    // For non-Flutter errors, extract the first meaningful error line
    final lines = stderr.split('\n').where((l) => l.trim().isNotEmpty);
    final firstError = lines.firstWhere(
      (l) => l.contains('Error:'),
      orElse: () =>
          lines.isNotEmpty ? lines.first : 'Unknown compilation error',
    );

    return firstError.trim();
  }

  /// Extract JSON object from stdout that may contain build hook output or other text.
  /// Finds the first complete JSON object (matching braces) in the string.
  String? _extractJson(String output) {
    final startIndex = output.indexOf('{');
    if (startIndex == -1) return null;

    // Find matching closing brace by counting brace depth
    int depth = 0;
    bool inString = false;
    bool escape = false;

    for (int i = startIndex; i < output.length; i++) {
      final char = output[i];

      if (escape) {
        escape = false;
        continue;
      }

      if (char == '\\' && inString) {
        escape = true;
        continue;
      }

      if (char == '"') {
        inString = !inString;
        continue;
      }

      if (inString) continue;

      if (char == '{') {
        depth++;
      } else if (char == '}') {
        depth--;
        if (depth == 0) {
          return output.substring(startIndex, i + 1);
        }
      }
    }

    return null; // No complete JSON object found
  }
}

/// Simple container for annotated artifacts discovered in a file.
class _PhlutsFileAnalysis {
  final List<PhlutsDslArtifact> screenArtifacts;
  final List<PhlutsDslArtifact> themeArtifacts;

  const _PhlutsFileAnalysis({
    required this.screenArtifacts,
    required this.themeArtifacts,
  });
}
