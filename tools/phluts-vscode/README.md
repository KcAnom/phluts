# Phluts — Server-Driven UI for Flutter

Build and preview Server-Driven UI screens with the **Phluts** framework — directly inside VS Code.

## ✨ Features

### 🔴 Live Preview
Open a side-by-side preview of any `@PhlutsScreen` — updates on save, supports theme selection, and renders with Android/iOS/Web platform simulation.

![Phluts Live Preview](https://raw.githubusercontent.com/PhlutsDev/phluts/dev/tools/phluts-vscode/media/phluts_preview.png)


- **`Phluts: Open Preview`** — launch the preview panel for the active screen
- **Device toggles** — switch between Android, iOS, and Web viewports
- **Theme picker** — select any `@PhlutsThemeRef` theme to preview with

### 🔧 Wrap Quick Fixes
Place your cursor on any Phluts widget expression and press **Cmd+.** to wrap it:

- `PhlutsContainer`, `PhlutsPadding`, `PhlutsCenter`, `PhlutsAlign`, `PhlutsSizedBox`, `PhlutsExpanded`
- **Wrap with Phluts widget…** — type any Phluts widget class name

### 📝 Snippets
Type in a Phluts DSL context (files containing `@PhlutsScreen`, `@PhlutsThemeRef`, or `package:phluts_core`):

- `phluts screen` — new screen template
- `phluts theme` — new theme template

## ⚙️ Extension Settings

| Setting | Default | Description |
|---|---|---|
| `phlutsVscode.enableWrapQuickFix` | `true` | Enable wrap quick-fix actions |
| `phlutsVscode.wrapPresets` | All presets | Preset wrappers in quick-fix menu |
| `phlutsVscode.enableSnippets` | `true` | Enable `phluts screen`/`phluts theme` snippets |
| `phlutsVscode.preview.enable` | `true` | Enable preview commands |
| `phlutsVscode.preview.autoRefreshOnSave` | `true` | Refresh preview on save |
| `phlutsVscode.preview.jsonStrategy` | `runnerThenBuild` | JSON generation strategy |
| `phlutsVscode.preview.hostPort` | `47841` | Local preview host port |
| `phlutsVscode.preview.startupTimeoutMs` | `120000` | Host startup timeout |

## Requirements

- **Flutter SDK** with Dart `3.9.2+`
- A Flutter project using the [Phluts](https://phluts.dev) framework

## Commands

| Command | Description |
|---|---|
| `Phluts: Open Preview` | Open live preview panel |
| `Phluts: Select Preview Screen` | Switch to a different screen in the current file |
| `Phluts: Stop Preview` | Stop the preview host |
| `Phluts: Regenerate Catalog` | Rebuild widget catalog from `phluts_core` |

## Troubleshooting

If the preview doesn't start, open **Output → Phluts Preview** for detailed logs.

## Links

- [Phluts Documentation](https://phluts.dev)
- [GitHub Repository](https://github.com/PhlutsDev/phluts)
- [Report Issues](https://github.com/PhlutsDev/phluts/issues)

## License

[MIT](LICENSE)
