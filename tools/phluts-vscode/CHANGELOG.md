# Change Log

All notable changes to the "phluts-vscode" extension will be documented in this file.

## [0.3.0]

- Bump `phluts` dependency to ^1.4.0 for enhanced input decoration, `copyWith` support for text themes, and re-exported `phluts_core`.

## [0.2.0]

- Bug fixes & improvements

## [0.1.0]

### Live Preview
- Side-by-side preview panel for any `@PhlutsScreen` — updates on save.
- Android / iOS / Web device toggles with `TargetPlatform` simulation (scroll physics, page transitions, AppBar behavior).
- Theme discovery from `@PhlutsThemeRef` annotations with live theme selection dropdown.
- Multi-screen support with automatic cursor-based screen switching.
- Runner fast-path JSON generation (`screen().toJson()`) with build fallback.
- Automatic port recovery when the preview host port is in use.
- Mobile viewport frame with rounded border styling.

### Wrap Quick Fixes
- Cmd+. quick-fix wrapping for Phluts widgets in Dart files.
- Presets: `PhlutsContainer`, `PhlutsPadding`, `PhlutsCenter`, `PhlutsAlign`, `PhlutsSizedBox`, `PhlutsExpanded`.
- "Wrap with Phluts widget…" for any Phluts widget class.
- Auto-generated widget catalog from `packages/phluts_core`.

### Snippets
- `phluts screen` — new screen template.
- `phluts theme` — new theme template.
- Context-aware: only shown in Phluts DSL files.
