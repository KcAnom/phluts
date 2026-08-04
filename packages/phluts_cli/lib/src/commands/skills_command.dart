import 'package:args/command_runner.dart';
import 'skills/add_command.dart';

/// Command for managing Phluts AI agent skills
class SkillsCommand extends Command<int> {
  @override
  String get name => 'skills';

  @override
  String get description => 'Manage Phluts AI agent skills';

  SkillsCommand() {
    addSubcommand(AddCommand());
  }
}
