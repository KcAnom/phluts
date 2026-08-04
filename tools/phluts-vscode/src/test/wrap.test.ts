import * as assert from 'assert';
import * as vscode from 'vscode';
import { buildWrappedExpression } from '../wrap/applyWrapEdit';
import { findWrappableExpression } from '../wrap/findWrappableExpression';
import { widgetCatalogByClass } from '../generated/widgetCatalog';
import { validateCustomWrapperName } from '../wrap/pickCustomWrapper';
import { templateFromWidgetCatalog } from '../wrap/wrapperTemplates';

function createMockDocument(text: string): vscode.TextDocument {
  const lines = text.split('\n');

  function offsetAt(position: vscode.Position): number {
    let offset = 0;
    for (let line = 0; line < position.line; line += 1) {
      offset += lines[line].length + 1;
    }

    return offset + position.character;
  }

  function positionAt(offset: number): vscode.Position {
    let remaining = offset;
    for (let line = 0; line < lines.length; line += 1) {
      const lineLength = lines[line].length;
      if (remaining <= lineLength) {
        return new vscode.Position(line, remaining);
      }

      remaining -= lineLength + 1;
    }

    return new vscode.Position(lines.length - 1, lines.at(-1)?.length ?? 0);
  }

  return {
    languageId: 'dart',
    uri: vscode.Uri.parse('untitled:mock.dart'),
    getText: (range?: vscode.Range) => {
      if (!range) {
        return text;
      }

      const start = offsetAt(range.start);
      const end = offsetAt(range.end);
      return text.slice(start, end);
    },
    lineAt: (line: number) => ({ text: lines[line] }),
    offsetAt,
    positionAt,
  } as unknown as vscode.TextDocument;
}

suite('Wrap utilities', () => {
  test('finds nearest Phluts widget at cursor', () => {
    const source = "final widget = PhlutsPadding(child: PhlutsText(data: 'Hello'));";
    const document = createMockDocument(source);
    const cursorOffset = source.indexOf('PhlutsText') + 5;
    const cursorPosition = document.positionAt(cursorOffset);

    const target = findWrappableExpression(
      document,
      new vscode.Range(cursorPosition, cursorPosition),
    );

    assert.ok(target);
    assert.strictEqual(target?.widgetName, 'PhlutsText');
    assert.strictEqual(target?.expression, "PhlutsText(data: 'Hello')");
  });

  test('returns undefined when selection is not on phluts widget', () => {
    const source = "final widget = Text('Hello');";
    const document = createMockDocument(source);
    const cursorOffset = source.indexOf('Text') + 2;
    const cursorPosition = document.positionAt(cursorOffset);

    const target = findWrappableExpression(
      document,
      new vscode.Range(cursorPosition, cursorPosition),
    );

    assert.strictEqual(target, undefined);
  });

  test('builds wrapped expression with child property (single-line)', () => {
    // baseIndent='  ' simulates widget on a line with 2-space indent
    // First line should NOT include baseIndent (replacement starts mid-line)
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'PhlutsContainer',
        title: 'Wrap with PhlutsContainer',
        childMode: 'child',
        beforeChildArgs: [],
      },
      "PhlutsText(data: 'Hello')",
      '  ',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      "PhlutsContainer(\n    child: PhlutsText(data: 'Hello'),\n  )",
    );
  });

  test('builds wrapped expression with multiline child (preserves relative indent)', () => {
    // Simulates expression captured mid-line: first line has no indent,
    // rest lines have document indent that gets dedented.
    const inner = `PhlutsAlign(
  alignment: PhlutsAlignmentDirectional.center,
  child: PhlutsCenter(child: PhlutsText(data: 'Hi')),
)`;
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'PhlutsWidget',
        title: 'Wrap with Phluts widget',
        childMode: 'child',
        beforeChildArgs: [],
      },
      inner,
      '    ',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      `PhlutsWidget(
      child: PhlutsAlign(
        alignment: PhlutsAlignmentDirectional.center,
        child: PhlutsCenter(child: PhlutsText(data: 'Hi')),
      ),
    )`,
    );
  });

  test('builds wrapped expression with beforeChildArgs (e.g. PhlutsPadding)', () => {
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'PhlutsPadding',
        title: 'Wrap with PhlutsPadding',
        childMode: 'child',
        beforeChildArgs: ['padding: PhlutsEdgeInsets.all(8)'],
      },
      "PhlutsCenter(child: PhlutsText(data: 'Hi'))",
      '  ',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      "PhlutsPadding(\n    padding: PhlutsEdgeInsets.all(8),\n    child: PhlutsCenter(child: PhlutsText(data: 'Hi')),\n  )",
    );
  });

  test('builds wrapped expression with children property', () => {
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'PhlutsColumn',
        title: 'Wrap with PhlutsColumn',
        childMode: 'children',
        beforeChildArgs: [],
      },
      "PhlutsText(data: 'Hello')",
      '',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      "PhlutsColumn(\n  children: [\n    PhlutsText(data: 'Hello'),\n  ],\n)",
    );
  });

  test('custom wrapper validator accepts and rejects correctly', () => {
    assert.strictEqual(validateCustomWrapperName('PhlutsColumn'), undefined);
    assert.ok(validateCustomWrapperName('Column'));
    assert.ok(validateCustomWrapperName('PhlutsText'));
    assert.ok(validateCustomWrapperName('PhlutsUnknownWidget'));
  });

  test('template generation chooses children mode when available', () => {
    const widget = widgetCatalogByClass.get('PhlutsColumn');
    assert.ok(widget);

    const template = templateFromWidgetCatalog(widget!);
    assert.ok(template);
    assert.strictEqual(template?.childMode, 'children');
  });
});
