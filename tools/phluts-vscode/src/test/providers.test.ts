import * as assert from 'assert';
import * as vscode from 'vscode';
import { PhlutsSnippetCompletionProvider } from '../snippets/phlutsSnippetCompletionProvider';
import { PhlutsWrapCodeActionProvider } from '../wrap/phlutsWrapCodeActionProvider';

suite('Providers', () => {
  test('quick fix list appears on phluts widget expression', async () => {
    const source = "Widget build() => PhlutsText(data: 'Hello');";
    const document = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: source,
    });

    const provider = new PhlutsWrapCodeActionProvider();
    const offset = source.indexOf('PhlutsText') + 2;
    const position = document.positionAt(offset);
    const range = new vscode.Range(position, position);

    const actions = provider.provideCodeActions(document, range) as vscode.CodeAction[];
    const titles = actions.map((action) => action.title);

    assert.ok(titles.includes('Wrap with PhlutsContainer'));
    assert.ok(titles.includes('Wrap with PhlutsPadding'));
    assert.ok(titles.includes('Wrap with PhlutsCenter'));
    assert.ok(titles.includes('Wrap with PhlutsAlign'));
    assert.ok(titles.includes('Wrap with PhlutsSizedBox'));
    assert.ok(titles.includes('Wrap with PhlutsExpanded'));
    assert.ok(titles.includes('Wrap with Phluts widget'));
  });

  test('quick fix list does not appear on non-phluts constructors', async () => {
    const source = "Widget build() => Text('Hello');";
    const document = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: source,
    });

    const provider = new PhlutsWrapCodeActionProvider();
    const offset = source.indexOf('Text') + 1;
    const position = document.positionAt(offset);
    const range = new vscode.Range(position, position);

    const actions = provider.provideCodeActions(document, range) as vscode.CodeAction[];
    assert.strictEqual(actions.length, 0);
  });

  test('snippet provider only suggests in phluts dsl context', async () => {
    const provider = new PhlutsSnippetCompletionProvider();

    const dslSource = [
      "import 'package:phluts_core/phluts_core.dart';",
      'void buildPhluts() {',
      '  phluts ',
      '}',
    ].join('\n');

    const dslDocument = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: dslSource,
    });

    const dslPosition = dslDocument.positionAt(
      dslSource.indexOf('phluts ') + 'phluts '.length,
    );
    const dslItems = provider.provideCompletionItems(
      dslDocument,
      dslPosition,
    ) as vscode.CompletionItem[];

    assert.ok(dslItems.some((item) => item.label === 'phluts screen'));
    assert.ok(dslItems.some((item) => item.label === 'phluts theme'));
    assert.strictEqual(dslItems.length, 2);

    const plainSource = [
      'void notDsl() {',
      '  phluts theme',
      '}',
    ].join('\n');

    const plainDocument = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: plainSource,
    });

    const plainPosition = plainDocument.positionAt(
      plainSource.indexOf('phluts theme') + 'phluts theme'.length,
    );

    const plainItems = provider.provideCompletionItems(
      plainDocument,
      plainPosition,
    ) as vscode.CompletionItem[];

    assert.strictEqual(plainItems.length, 0);
  });
});
