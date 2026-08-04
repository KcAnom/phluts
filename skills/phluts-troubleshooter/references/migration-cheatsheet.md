# Migration Cheatsheet

## JSON to Dart Mapping

- `type: "text"` -> `PhlutsText(...)`
- `type: "container"` -> `PhlutsContainer(...)`
- `actionType: "navigate"` -> `PhlutsNavigateAction(...)`
- `actionType: "setValue"` -> `PhlutsSetValueAction(...)`

## Strategy

1. Migrate one screen at a time.
2. Keep generated json under version control only when required.
3. Run `phluts build` after each migrated screen.
