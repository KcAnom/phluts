import * as vscode from 'vscode';
import { SETTINGS } from '../core/constants';
import { isPhlutsDslDocument } from '../core/isPhlutsDslDocument';

interface SimpleSnippet {
  prefix: string;
  description: string;
  body: string[];
}

const SIMPLE_SNIPPETS: readonly SimpleSnippet[] = [
  {
    prefix: 'phluts screen',
    description: 'Create a new Phluts screen',
    body: [
      "import 'package:phluts_core/phluts_core.dart';",
      '',
      '@PhlutsScreen(screenName: "${1/(^[A-Z])|([A-Z])/${1:/downcase}${2:+_}${2:/downcase}/g}")',
      'PhlutsWidget ${1:screenName}() {',
      '  return PhlutsScaffold(',
      '    body: PhlutsAlign(',
      '      alignment: PhlutsAlignmentDirectional.center,',
      '      child: PhlutsPadding(',
      '        padding: PhlutsEdgeInsets.all(8),',
      "        child: PhlutsCenter(child: PhlutsText(data: '${3:Hello, world!}')),",
      '      ),',
      '    ),',
      '  );',
      '}',
    ],
  },
  {
    prefix: 'phluts theme',
    description: 'Create a new Phluts theme',
    body: [
      "import 'package:phluts_core/phluts_core.dart';",
      '',
      '@PhlutsThemeRef(name: "${1/(^[A-Z])|([A-Z])/${1:/downcase}${2:+_}${2:/downcase}/g}")',
      'PhlutsTheme get ${1:lightTheme} => PhlutsTheme(',
      '  brightness: PhlutsBrightness.light,',
      '  useMaterial3: true,',
      ');',
    ],
  },
];

const PHLUTS_SNIPPET_QUERY_REGEX = /(?:^|\s)(phluts(?:\s+[a-z]*)?)$/i;

export class PhlutsSnippetCompletionProvider implements vscode.CompletionItemProvider {
  provideCompletionItems(
    document: vscode.TextDocument,
    position: vscode.Position,
  ): vscode.CompletionItem[] {
    if (document.languageId !== 'dart') {
      return [];
    }

    const config = vscode.workspace.getConfiguration();
    if (!config.get<boolean>(SETTINGS.enableSnippets, true)) {
      return [];
    }

    if (!isPhlutsDslDocument(document)) {
      return [];
    }

    const linePrefix = document.lineAt(position.line).text.slice(0, position.character);
    const match = linePrefix.match(PHLUTS_SNIPPET_QUERY_REGEX);

    if (!match) {
      return [];
    }

    const typedPrefix = (match[1] ?? '').toLowerCase();
    const startCharacter = linePrefix.length - typedPrefix.length;
    const replaceRange = new vscode.Range(
      new vscode.Position(position.line, startCharacter),
      position,
    );

    return SIMPLE_SNIPPETS
      .filter((entry) => entry.prefix.startsWith(typedPrefix))
      .map((entry) => {
        const item = new vscode.CompletionItem(
          entry.prefix,
          vscode.CompletionItemKind.Snippet,
        );

        item.detail = entry.description;
        item.insertText = new vscode.SnippetString(entry.body.join('\n'));
        item.range = replaceRange;
        item.filterText = entry.prefix;
        item.sortText = entry.prefix;
        return item;
      });
  }
}
