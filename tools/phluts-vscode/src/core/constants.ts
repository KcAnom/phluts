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

export const WRAP_PRESET_IDS = [
  'PhlutsContainer',
  'PhlutsPadding',
  'PhlutsCenter',
  'PhlutsAlign',
  'PhlutsSizedBox',
  'PhlutsExpanded',
] as const;

export type WrapPresetId = (typeof WRAP_PRESET_IDS)[number];
