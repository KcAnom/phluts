import * as vscode from 'vscode';

const PHLUTS_ANNOTATION_REGEX = /@(PhlutsScreen|PhlutsThemeRef)\b/;
const PHLUTS_IMPORT_REGEX = /package:phluts_core\/phluts_core\.dart/;
const PHLUTS_PATH_SEGMENT_REGEX = /(^|\/)phluts(\/|$)/;

export function isPhlutsDslDocument(document: vscode.TextDocument): boolean {
  if (document.languageId !== 'dart') {
    return false;
  }

  const normalizedPath = document.uri.fsPath.replace(/\\/g, '/');
  if (PHLUTS_PATH_SEGMENT_REGEX.test(normalizedPath)) {
    return true;
  }

  const text = document.getText();
  return PHLUTS_ANNOTATION_REGEX.test(text) || PHLUTS_IMPORT_REGEX.test(text);
}
