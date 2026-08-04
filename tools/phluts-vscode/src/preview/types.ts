export type PreviewJsonStrategy = 'runnerThenBuild' | 'runnerOnly' | 'buildOnly';

export type PreviewState = 'starting' | 'building' | 'ready' | 'rendered' | 'error';

export interface PreviewRenderMessage {
  type: 'phluts.preview.render';
  screenName: string;
  json: Record<string, unknown>;
  theme?: Record<string, unknown>;
  sourcePath: string;
  timestamp: string;
  requestId: string;
}

export interface PreviewPanelStateMessage {
  type: 'phluts.preview.state';
  state: PreviewState;
  message: string;
}

export interface PreviewRetryMessage {
  type: 'phluts.preview.retry';
}

export interface PreviewReadyEvent {
  type: 'phluts.preview.ready';
  message?: string;
  requestId?: string;
}

export interface PreviewRenderedEvent {
  type: 'phluts.preview.rendered';
  message?: string;
  requestId?: string;
  screenName?: string;
}

export interface PreviewErrorEvent {
  type: 'phluts.preview.error';
  message?: string;
  requestId?: string;
}

export interface PreviewLogEvent {
  type: 'phluts.preview.log';
  message: string;
}

export interface PreviewWebviewReadyEvent {
  type: 'phluts.preview.webview.ready';
}

export interface PreviewThemesMessage {
  type: 'phluts.preview.themes';
  themes: Array<{ themeName: string }>;
}

export interface PreviewSelectThemeMessage {
  type: 'phluts.preview.selectTheme';
  themeName: string | null;
}

export type PreviewOutboundMessage =
  | PreviewReadyEvent
  | PreviewRenderedEvent
  | PreviewErrorEvent
  | PreviewLogEvent;

export type PreviewWebviewMessage =
  | PreviewOutboundMessage
  | PreviewRetryMessage
  | PreviewWebviewReadyEvent
  | PreviewSelectThemeMessage;

export interface ScreenDescriptor {
  screenName: string;
  functionName: string;
  annotationOffset: number;
  functionOffset: number;
  functionEndOffset: number;
  hasParameters: boolean;
  topLevel: boolean;
  runnerSupported: boolean;
}

export interface JsonGenerationResult {
  source: 'runner' | 'build';
  json: Record<string, unknown>;
  jsonPath: string;
}

export interface ThemeDescriptor {
  themeName: string;
  filePath: string;
  functionOrGetterName: string;
  isGetter: boolean;
  topLevel: boolean;
}
