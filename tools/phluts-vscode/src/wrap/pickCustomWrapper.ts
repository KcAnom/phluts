import * as vscode from 'vscode';
import { widgetCatalogByClass } from '../generated/widgetCatalog';
import { templateFromWidgetCatalog } from './wrapperTemplates';

export async function pickCustomWrapperTemplate() {
  const value = await vscode.window.showInputBox({
    title: 'Wrap with Phluts widget',
    prompt: 'Enter a Phluts widget class name (example: PhlutsOpacity)',
    placeHolder: 'PhlutsContainer',
    validateInput: (input) => validateCustomWrapperName(input),
  });

  if (!value) {
    return undefined;
  }

  const widget = widgetCatalogByClass.get(value.trim());
  if (!widget) {
    return undefined;
  }

  return templateFromWidgetCatalog(widget);
}

export function validateCustomWrapperName(input: string): string | undefined {
  const value = input.trim();

  if (value.length === 0) {
    return undefined;
  }

  if (!value.startsWith('Phluts')) {
    return 'Widget name must start with "Phluts".';
  }

  const widget = widgetCatalogByClass.get(value);
  if (!widget) {
    return 'Unknown Phluts widget.';
  }

  if (!widget.supportsChild && !widget.supportsChildren) {
    return 'This widget does not support child or children wrapping.';
  }

  return undefined;
}
