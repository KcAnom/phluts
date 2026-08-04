import * as assert from 'assert';
import * as vscode from 'vscode';
import { findChildExpression, createRemoveWidgetEdit } from '../wrap/removeWidget';
import { findWrappableExpression } from '../wrap/findWrappableExpression';

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

suite('Remove Widget Utilities', () => {
    test('finds child expression in simple widget', () => {
        const expr = "PhlutsCenter(child: PhlutsText('Hello'))";
        const child = findChildExpression(expr);
        assert.strictEqual(child, "PhlutsText('Hello')");
    });

    test('finds child expression in multiline widget', () => {
        const expr = `PhlutsCenter(
        child: PhlutsText(
          'Hello'
        ),
      )`;
        const child = findChildExpression(expr);
        // It should capture the content essentially
        // My simple regex finds "PhlutsText(\n          'Hello'\n        )"
        // Let's see what the implementation does.
        assert.ok(child?.startsWith('PhlutsText'));
        assert.ok(child?.includes("'Hello'"));
    });

    test('returns undefined if no child', () => {
        const expr = "PhlutsSizedBox(width: 10)";
        const child = findChildExpression(expr);
        assert.strictEqual(child, undefined);
    });

    test('ignores child in nested widget', () => {
        // "child:" is present but inside another widget's args
        // PhlutsColumn(children: [PhlutsContainer(child: PhlutsText('Hi'))])
        // The outer widget has no "child:", only "children:". 
        // findChildExpression checks for top-level "child:".
        const expr = "PhlutsColumn(children: [PhlutsContainer(child: PhlutsText('Hi'))])";
        const child = findChildExpression(expr);
        assert.strictEqual(child, undefined);
    });

    test('handles complex nesting', () => {
        const expr = `PhlutsContainer(
            child: PhlutsRow(
                children: [PhlutsText('A')],
            ),
        )`;
        const child = findChildExpression(expr);
        // It matches content of child: ...
        // "PhlutsRow(\n                children: [PhlutsText('A')],\n            )"
        assert.ok(child?.startsWith('PhlutsRow'));
    });

    test('handles comments correctly', () => {
        const expr = `PhlutsPadding(
            // child: PhlutsText('Ignored'),
            child: PhlutsText('Real'),
        )`;
        const child = findChildExpression(expr);
        assert.strictEqual(child, "PhlutsText('Real')");
    });

    test('handles strings correctly', () => {
        const expr = `PhlutsColumn(
            children: [
                PhlutsText("child: Not Real"),
            ],
            child: PhlutsText("Real"),
        )`;
        const child = findChildExpression(expr);
        assert.strictEqual(child, 'PhlutsText("Real")');
    });
    test('create edit replaces widget with child', () => {
        const source =
            `  PhlutsCenter(
    child: PhlutsText('Hello'),
    )`;
        const doc = createMockDocument(source);
        const target = {
            widgetName: 'PhlutsCenter',
            range: new vscode.Range(new vscode.Position(0, 2), new vscode.Position(2, 3)),
            expression: source.trim()
        };

        const edit = createRemoveWidgetEdit(doc, target);
        const entries = edit.entries();
        assert.strictEqual(entries.length, 1);

        // Check replacement text (should be PhlutsText('Hello'))
        // Depending on reindent logic...
        // The mock logic for reindent might be tricky to test perfectly without full editor behavior,
        // but we can check the string content.
        const replacement = entries[0][1][0].newText;
        assert.ok(replacement.includes("PhlutsText('Hello')"));
    });
});
