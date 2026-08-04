# Project Layout

## Minimum Expected Structure

```text
<project-root>/
  lib/
    main.dart
    default_phluts_options.dart
  phluts/
    hello_world.dart
  pubspec.yaml
```

## Required Signals

- `main.dart` calls `Phluts.initialize(...)`.
- `phluts/` contains at least one file with `@PhlutsScreen(...)`.
- `default_phluts_options.dart` defines `PhlutsOptions` with project details.

## Recommended Generated Output

```text
phluts/.build/
  <screen-name>.json
```
