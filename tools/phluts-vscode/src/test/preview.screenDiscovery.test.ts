import * as assert from 'assert';
import * as vscode from 'vscode';
import { chooseScreenDescriptor, discoverScreens } from '../preview/screenDiscovery';

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
    uri: vscode.Uri.parse('untitled:preview_test.dart'),
    getText: () => text,
    lineAt: (line: number) => ({ text: lines[line] }),
    offsetAt,
    positionAt,
  } as unknown as vscode.TextDocument;
}

suite('Preview screen discovery', () => {
  test('detects multiple @PhlutsScreen declarations', () => {
    const source = [
      '@PhlutsScreen(screenName: "home")',
      'PhlutsWidget homeScreen() {',
      "  return PhlutsText(data: 'home');",
      '}',
      '',
      '@PhlutsScreen(screenName: "details")',
      'PhlutsWidget detailsScreen() {',
      "  return PhlutsText(data: 'details');",
      '}',
    ].join('\n');

    const screens = discoverScreens(createMockDocument(source));
    assert.strictEqual(screens.length, 2);
    assert.strictEqual(screens[0].screenName, 'home');
    assert.strictEqual(screens[1].functionName, 'detailsScreen');
    assert.ok(screens.every((screen) => screen.runnerSupported));
  });

  test('marks parameterized screen as runner unsupported', () => {
    const source = [
      '@PhlutsScreen(screenName: "profile")',
      'PhlutsWidget profileScreen(String userId) {',
      "  return PhlutsText(data: userId);",
      '}',
    ].join('\n');

    const [screen] = discoverScreens(createMockDocument(source));
    assert.ok(screen);
    assert.strictEqual(screen.hasParameters, true);
    assert.strictEqual(screen.runnerSupported, false);
  });

  test('defaults to the first screen when cursor is not provided', () => {
    const source = [
      '@PhlutsScreen(screenName: "first")',
      'PhlutsWidget firstScreen() {',
      "  return PhlutsText(data: 'first');",
      '}',
      '',
      '@PhlutsScreen(screenName: "second")',
      'PhlutsWidget secondScreen() {',
      "  return PhlutsText(data: 'second');",
      '}',
    ].join('\n');

    const document = createMockDocument(source);
    const screens = discoverScreens(document);
    const selected = chooseScreenDescriptor(screens);

    assert.ok(selected);
    assert.strictEqual(selected?.screenName, 'first');
  });

  test('chooses screen containing cursor offset', () => {
    const source = [
      '@PhlutsScreen(screenName: "first")',
      'PhlutsWidget firstScreen() {',
      "  return PhlutsText(data: 'first');",
      '}',
      '',
      '@PhlutsScreen(screenName: "second")',
      'PhlutsWidget secondScreen() {',
      "  return PhlutsText(data: 'second');",
      '}',
    ].join('\n');

    const document = createMockDocument(source);
    const screens = discoverScreens(document);
    const cursorOffset = source.indexOf("data: 'second'");
    const selected = chooseScreenDescriptor(screens, cursorOffset);

    assert.ok(selected);
    assert.strictEqual(selected?.screenName, 'second');
  });
});
