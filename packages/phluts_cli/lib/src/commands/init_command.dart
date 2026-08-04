import 'dart:io';

import 'package:interact/interact.dart';
import 'package:path/path.dart' as path;
import 'package:phluts_cli/src/models/project/project.dart';

import '../services/project_service.dart';
import '../utils/console_logger.dart';
import '../utils/file_utils.dart';
import 'base_command.dart';
import 'skills/add_command.dart';

/// Command for initializing a Phluts project from cloud projects
class InitCommand extends BaseCommand {
  final ProjectService _projectService = ProjectService();

  @override
  String get name => 'init';

  @override
  String get description => 'Initialize a Phluts project';

  @override
  bool get requiresAuth => true;

  InitCommand() {
    argParser.addOption(
      'directory',
      abbr: 'd',
      help: 'Target directory (defaults to current directory)',
    );
  }

  @override
  Future<int> execute() async {
    final targetDir =
        argResults?['directory'] as String? ?? Directory.current.path;

    ConsoleLogger.printPhlutsAscii();
    ConsoleLogger.info(
      'Initializing Phluts project in this directory: \n $targetDir',
    );
    // Ensure target directory exists
    final dir = Directory(targetDir);
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }

    // If already initialized, ask before overwriting
    if (await _isAlreadyInitialized(targetDir)) {
      final overwrite = Confirm(
        prompt:
            'This project already has phluts set up. Do you want to overwrite it?',
        defaultValue: false,
      ).interact();
      if (!overwrite) {
        ConsoleLogger.info('Skipped. No changes made.');
        return 0;
      }
    }

    // Select or create project
    Project? project = await _selectOrCreateProjectInteractively();
    if (project == null) {
      return 0;
    }

    ConsoleLogger.info('Initializing project: ${project.name}');

    // Ask before adding dependency
    final shouldAdd = Confirm(
      prompt: 'Add phluts dependency to pubspec.yaml?',
      defaultValue: true,
    ).interact();
    if (shouldAdd) {
      // Add phluts to pubspec.yaml
      await _addPhlutsToPubspecYaml(targetDir);
    } else {
      ConsoleLogger.info('Skipped adding phluts dependency.');
    }

    // Create phluts folder with hello world file
    await _createPhlutsFolder(targetDir);

    // Create default_phluts_options.dart configuration file
    await _createPhlutsConfigFile(targetDir, project);

    // Ask to install skills
    final shouldInstallSkills = Confirm(
      prompt:
          'Install Phluts agent skills? (Recommended for AI-assisted development)',
      defaultValue: true,
    ).interact();
    if (shouldInstallSkills) {
      ConsoleLogger.info('Installing skills...');
      final skillsExitCode = await AddCommand(
        targetDirectory: targetDir,
      ).execute();
      if (skillsExitCode != 0) {
        ConsoleLogger.warning(
          'Skills installation encountered an issue. '
          'You can retry later with: phluts skills add',
        );
      }
    }

    ConsoleLogger.success('✓ Project initialized successfully!');
    ConsoleLogger.info('Next steps:');
    ConsoleLogger.info('  1. Add your Phluts widgets definitions to /phluts');
    ConsoleLogger.info('  2. Run "phluts build" to convert Dart to JSON');
    ConsoleLogger.info('  3. Run "phluts deploy" to deploy to cloud');

    return 0;
  }

  /// Returns true if the directory already has phluts init artifacts.
  Future<bool> _isAlreadyInitialized(String targetDir) async {
    final phlutsDir = Directory(path.join(targetDir, 'phluts'));
    final optionsFile = File(
      path.join(targetDir, 'lib', 'default_phluts_options.dart'),
    );
    return await phlutsDir.exists() || await optionsFile.exists();
  }

  /// Add phluts to pubspec.yaml
  Future<void> _addPhlutsToPubspecYaml(String targetDir) async {
    final pubspecPath = path.join(targetDir, 'pubspec.yaml');
    if (!await File(pubspecPath).exists()) {
      ConsoleLogger.error(
        'pubspec.yaml not found in $targetDir. Please run this in a Flutter/Dart project directory.',
      );
      throw Exception('pubspec.yaml not found');
    }

    try {
      var code = await _run('flutter', ['pub', 'add', 'phluts'], targetDir);
      if (code != 0) {
        ConsoleLogger.warning(
          'flutter pub add failed (exit $code). Trying dart pub add...',
        );
        code = await _run('dart', ['pub', 'add', 'phluts'], targetDir);
        if (code != 0) {
          throw Exception('dart pub add phluts failed with exit $code');
        }
      }
      ConsoleLogger.success('✓ Added dependency: phluts');
    } on ProcessException catch (e) {
      // flutter may not be on PATH; try dart as fallback
      ConsoleLogger.warning(
        'Failed to run flutter: ${e.message}. Trying dart.',
      );
      try {
        final code = await _run('dart', ['pub', 'add', 'phluts'], targetDir);
        if (code != 0) {
          throw Exception('dart pub add phluts failed with exit $code');
        }
        ConsoleLogger.success('✓ Added dependency: phluts');
      } on ProcessException {
        // Both flutter and dart commands failed
        ConsoleLogger.error('Failed to manually add dependency: $e');
        ConsoleLogger.info(
          'Please manually add phluts to your dependencies in pubspec.yaml',
        );
      }
    }
  }

  // Prefer flutter pub add, fallback to dart pub add
  Future<int> _run(
    String executable,
    List<String> args,
    String targetDir,
  ) async {
    ConsoleLogger.info('Running: $executable ${args.join(' ')}');

    try {
      final result = await Process.run(
        executable,
        args,
        workingDirectory: targetDir,
        runInShell: Platform
            .isWindows, // Use shell on Windows for proper PATH resolution
      );

      if ((result.stdout as Object?).toString().isNotEmpty) {
        ConsoleLogger.plain(result.stdout.toString());
      }
      if ((result.stderr as Object?).toString().isNotEmpty) {
        ConsoleLogger.plain(result.stderr.toString());
      }
      return result.exitCode;
    } on ProcessException {
      rethrow;
    }
  }

  /// Create phluts folder with hello world file
  Future<void> _createPhlutsFolder(String targetDir) async {
    final phlutsFolderPath = path.join(targetDir, 'phluts');
    await Directory(phlutsFolderPath).create(recursive: true);

    // Create hello world file
    final helloWorldPath = path.join(phlutsFolderPath, 'hello_world.dart');
    await FileUtils.writeFile(helloWorldPath, '''
import 'package:phluts/phluts_core.dart';

@PhlutsScreen(screenName: "hello_world")
PhlutsWidget helloWorld() {
  return PhlutsScaffold(
    body: PhlutsCenter(
      child: PhlutsText(data: 'Hello, world!'),
    ),
  );
}
''');
  }

  /// Create phluts config file
  Future<void> _createPhlutsConfigFile(String targetDir, Project project) async {
    final phlutsConfigPath = path.join(
      targetDir,
      'lib/default_phluts_options.dart',
    );

    final dartConfig =
        '''
// This file is automatically generated by phluts init.

import 'package:phluts/phluts_core.dart';

/// Default [PhlutsOptions] for use with your phluts project.
///
/// Use this to initialize phluts **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'package:flutter/material.dart';
/// import 'package:phluts/phluts.dart';
/// import 'default_phluts_options.dart';
///
/// void main() {
///   Phluts.initialize(options: defaultPhlutsOptions);
///
///   runApp(...);
/// }
/// ```
PhlutsOptions get defaultPhlutsOptions => PhlutsOptions(
  name: '${project.name}',
  description: '${project.description}',
  projectId: '${project.id}',
);
''';

    await FileUtils.writeFile(phlutsConfigPath, dartConfig);
  }

  /// Offer a small menu to either use an existing cloud project or create a new one
  Future<Project?> _selectOrCreateProjectInteractively() async {
    final selection = Select(
      prompt: 'Please select an option:',
      options: const [
        'Use an existing project',
        'Create a new project',
        "Don't set up a default project",
      ],
    ).interact();

    switch (selection) {
      case 0:
        return await _projectService.selectProjectInteractively();
      case 1:
        final name = Input(
          prompt: 'Enter project name:',
          validator: (String input) {
            if (input.trim().isEmpty) {
              throw ValidationError('Project name is required');
            }
            return true;
          },
        ).interact();

        final description = Input(
          prompt: 'Enter project description (optional):',
          defaultValue: '',
        ).interact();
        try {
          return await _projectService.createProject(
            name: name.trim(),
            description: description.trim(),
          );
        } catch (e) {
          // Graceful fallback when creation is not implemented on server side
          ConsoleLogger.error("Failed to create project: $e");
          ConsoleLogger.info(
            'You can also run "phluts project create -n ${name.trim()} -d ${description.trim()}" and then re-run "phluts init".',
          );
          return null;
        }
      case 2:
        ConsoleLogger.info("Skipping project setup.");
        return null;
      default:
        ConsoleLogger.error("Invalid selection");
        return null;
    }
  }
}
