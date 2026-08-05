export const EXTENSION_ID = 'phluts-vscode';

export const COMMANDS = {
  wrapWithPhlutsContainer: 'phluts-vscode.wrapWithPhlutsContainer',
  wrapWithPhlutsPadding: 'phluts-vscode.wrapWithPhlutsPadding',
  wrapWithPhlutsCenter: 'phluts-vscode.wrapWithPhlutsCenter',
  wrapWithPhlutsAlign: 'phluts-vscode.wrapWithPhlutsAlign',
  wrapWithPhlutsSizedBox: 'phluts-vscode.wrapWithPhlutsSizedBox',
  wrapWithPhlutsExpanded: 'phluts-vscode.wrapWithPhlutsExpanded',
  wrapWithPhlutsWidget: 'phluts-vscode.wrapWithPhlutsWidget',
  regenerateCatalog: 'phluts-vscode.regenerateCatalog',
  previewOpen: 'phluts-vscode.preview.open',
  previewRefresh: 'phluts-vscode.preview.refresh',
  previewStop: 'phluts-vscode.preview.stop',
  previewSelectScreen: 'phluts-vscode.preview.selectScreen',
  removePhlutsWidget: 'phluts-vscode.removePhlutsWidget',
} as const;

export const SETTINGS = {
  enableWrapQuickFix: 'phlutsVscode.enableWrapQuickFix',
  wrapPresets: 'phlutsVscode.wrapPresets',
  enableSnippets: 'phlutsVscode.enableSnippets',
  previewEnable: 'phlutsVscode.preview.enable',
  previewAutoRefreshOnSave: 'phlutsVscode.preview.autoRefreshOnSave',
  previewJsonStrategy: 'phlutsVscode.preview.jsonStrategy',
  previewBuildCommand: 'phlutsVscode.preview.buildCommand',
  previewOutputDirCandidates: 'phlutsVscode.preview.outputDirCandidates',
  previewHostPort: 'phlutsVscode.preview.hostPort',
  previewStartupTimeoutMs: 'phlutsVscode.preview.startupTimeoutMs',
} as const;

/// Directories searched for `<screenName>.json` after a fallback build.
///
/// The CLI writes `<outputDir>/screens/<name>.json` and
/// `<outputDir>/themes/<name>.json` — never `<outputDir>/<name>.json` — so the
/// nested forms must come first. Without them the build-fallback path could
/// never find its own output, which is the only path available for screens the
/// runner does not support and the fallback for every runner failure under the
/// default strategy.
///
/// Must stay in sync with the `phlutsVscode.preview.outputDirCandidates`
/// default in package.json, which VS Code reads directly and which cannot
/// reference this constant. `preview.jsonResolver.test.ts` asserts they agree.
export const DEFAULT_OUTPUT_DIR_CANDIDATES = [
  'phluts/.build/screens',
  'phluts/.build/themes',
  'phluts/.build',
  'build/screens',
  'build',
] as const;

export const WRAP_PRESET_IDS = [
  'PhlutsContainer',
  'PhlutsPadding',
  'PhlutsCenter',
  'PhlutsAlign',
  'PhlutsSizedBox',
  'PhlutsExpanded',
] as const;

export type WrapPresetId = (typeof WRAP_PRESET_IDS)[number];
