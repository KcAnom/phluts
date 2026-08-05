import * as assert from 'assert';
import * as os from 'node:os';
import * as path from 'node:path';
import { promises as fs } from 'node:fs';
import {
  expandWorkspacePathTokens,
  readJsonFile,
  resolveScreenJsonPath,
} from '../preview/jsonResolver';
import { DEFAULT_OUTPUT_DIR_CANDIDATES } from '../core/constants';

suite('Preview JSON resolver', () => {
  // The CLI writes <outputDir>/screens/<name>.json. The previous fixture built
  // its file at <outputDir>/<name>.json and passed its own candidate list, so
  // it agreed with itself while the shipped defaults could not resolve
  // anything the CLI actually produced.
  test('shipped defaults resolve json at the layout the CLI writes', async () => {
    const workspace = await fs.mkdtemp(path.join(os.tmpdir(), 'phluts-vscode-json-'));
    const outputDir = path.join(workspace, 'phluts', '.build', 'screens');
    await fs.mkdir(outputDir, { recursive: true });
    const jsonPath = path.join(outputDir, 'hello_world.json');
    await fs.writeFile(jsonPath, '{"type":"text"}', 'utf8');

    const resolved = resolveScreenJsonPath(workspace, 'hello_world', [
      ...DEFAULT_OUTPUT_DIR_CANDIDATES,
    ]);
    assert.strictEqual(resolved, jsonPath);
  });

  test('shipped defaults also resolve a theme', async () => {
    const workspace = await fs.mkdtemp(path.join(os.tmpdir(), 'phluts-vscode-theme-'));
    const outputDir = path.join(workspace, 'phluts', '.build', 'themes');
    await fs.mkdir(outputDir, { recursive: true });
    const jsonPath = path.join(outputDir, 'app_theme.json');
    await fs.writeFile(jsonPath, '{"type":"theme"}', 'utf8');

    const resolved = resolveScreenJsonPath(workspace, 'app_theme', [
      ...DEFAULT_OUTPUT_DIR_CANDIDATES,
    ]);
    assert.strictEqual(resolved, jsonPath);
  });

  // package.json is what VS Code actually reads and cannot import the
  // constant, so the two literals can drift apart silently. They did.
  test('package.json default matches the shared constant', () => {
    const pkg = require('../../package.json') as {
      contributes: {
        configuration: {
          properties: Record<string, { default?: unknown }>;
        };
      };
    };
    const declared =
      pkg.contributes.configuration.properties[
        'phlutsVscode.preview.outputDirCandidates'
      ]?.default;
    assert.deepStrictEqual(declared, [...DEFAULT_OUTPUT_DIR_CANDIDATES]);
  });

  test('expandWorkspacePathTokens replaces workspace token', () => {
    const expanded = expandWorkspacePathTokens(
      '${workspaceFolder}/build/screens',
      '/tmp/demo',
    );
    assert.strictEqual(expanded, '/tmp/demo/build/screens');
  });

  test('readJsonFile parses object json', async () => {
    const tempDir = await fs.mkdtemp(path.join(os.tmpdir(), 'phluts-vscode-json-read-'));
    const jsonPath = path.join(tempDir, 'screen.json');
    await fs.writeFile(jsonPath, '{"type":"scaffold"}', 'utf8');

    const payload = await readJsonFile(jsonPath);
    assert.strictEqual(payload.type, 'scaffold');
  });
});
