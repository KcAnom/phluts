import * as vscode from 'vscode';
import type { ThemeDescriptor } from './types';

/**
 * Regex to match `@PhlutsThemeRef(name: "themeName")` annotations followed by
 * either a getter (`PhlutsTheme get name => ...`) or a function (`PhlutsTheme name() { ... }`).
 *
 * Captures:
 *  [1] quote character (' or ")
 *  [2] theme name
 *  [3] 'get' keyword (present for getters, undefined for functions)
 *  [4] function/getter name
 */
const THEME_DECLARATION_REGEX =
    /@PhlutsThemeRef\s*\(\s*name\s*:\s*(['"])([^'"]+)\1[\s\S]*?\)\s*PhlutsTheme\s+(get\s+)?([A-Za-z_][A-Za-z0-9_]*)/g;

/**
 * Discover all `@PhlutsThemeRef` declarations in the given document.
 */
export function discoverThemesInDocument(document: vscode.TextDocument): ThemeDescriptor[] {
    const text = document.getText();
    const themes: ThemeDescriptor[] = [];

    for (const match of text.matchAll(THEME_DECLARATION_REGEX)) {
        const themeName = match[2];
        const isGetter = match[3] !== undefined;
        const functionOrGetterName = match[4];
        const annotationOffset = match.index;

        if (
            themeName === undefined ||
            functionOrGetterName === undefined ||
            annotationOffset === undefined
        ) {
            continue;
        }

        const topLevel = computeBraceDepthAt(text, annotationOffset) === 0;

        themes.push({
            themeName,
            filePath: document.uri.fsPath,
            functionOrGetterName,
            isGetter,
            topLevel,
        });
    }

    return themes;
}

/**
 * Discover all `@PhlutsThemeRef` declarations across the workspace.
 * Scans all `.dart` files in the given workspace root.
 */
export async function discoverThemesInWorkspace(
    workspaceRoot: string,
): Promise<ThemeDescriptor[]> {
    const pattern = new vscode.RelativePattern(workspaceRoot, '**/*.dart');
    const excludes = '{**/.*/**,.dart_tool/**,build/**,**/build/**}';
    const files = await vscode.workspace.findFiles(pattern, excludes, 500);

    const allThemes: ThemeDescriptor[] = [];

    for (const fileUri of files) {
        try {
            const document = await vscode.workspace.openTextDocument(fileUri);
            const themes = discoverThemesInDocument(document);
            allThemes.push(...themes);
        } catch {
            // Skip files that can't be opened
        }
    }

    return allThemes;
}

/**
 * Compute the brace depth at a given offset to determine if a declaration is top-level.
 * Skips strings and comments.
 */
function computeBraceDepthAt(text: string, targetOffset: number): number {
    type State = 'normal' | 'single' | 'double' | 'lineComment' | 'blockComment';
    let state: State = 'normal';
    let depth = 0;
    let escaped = false;

    for (let index = 0; index < targetOffset; index += 1) {
        const char = text[index];
        const next = text[index + 1];

        if (state === 'lineComment') {
            if (char === '\n') { state = 'normal'; }
            continue;
        }

        if (state === 'blockComment') {
            if (char === '*' && next === '/') { state = 'normal'; index += 1; }
            continue;
        }

        if (state === 'single') {
            if (!escaped && char === "'") { state = 'normal'; }
            escaped = !escaped && char === '\\';
            continue;
        }

        if (state === 'double') {
            if (!escaped && char === '"') { state = 'normal'; }
            escaped = !escaped && char === '\\';
            continue;
        }

        if (char === '/' && next === '/') { state = 'lineComment'; index += 1; continue; }
        if (char === '/' && next === '*') { state = 'blockComment'; index += 1; continue; }
        if (char === "'") { state = 'single'; escaped = false; continue; }
        if (char === '"') { state = 'double'; escaped = false; continue; }
        if (char === '{') { depth += 1; continue; }
        if (char === '}') { depth = Math.max(0, depth - 1); }
    }

    return depth;
}
