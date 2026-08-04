# Setup Checklist

## Prerequisites

1. Confirm Flutter SDK is installed (`flutter --version`).
2. Confirm Dart SDK is installed (`dart --version`).
3. Confirm project has `pubspec.yaml`.
4. Confirm Phluts CLI is installed (`phluts --version`) or install it first.

## Install Phluts CLI

macOS/Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/PhlutsDev/install/main/install.sh | bash
```

Windows PowerShell:

```powershell
irm https://raw.githubusercontent.com/PhlutsDev/install/main/install.ps1 | iex
```

## First-Time Setup Flow

1. `phluts login`
2. `phluts init`
3. Add or update `phluts/*.dart` screen definitions.
4. `phluts build`
5. `phluts deploy`

## Success Criteria

- `lib/default_phluts_options.dart` exists and contains a project id.
- `phluts/` directory exists with at least one `@PhlutsScreen` function.
- Build output is generated in `phluts/.build`.
