# Navigation Debug

## Quick Checks

- Validate `navigationStyle` matches intent (`push`, `pop`, `pushReplacement`, etc.).
- Validate route source: Phluts route, Flutter route, asset, or network.
- Validate `routeName` exists in target system.

## Preferred API

Use `PhlutsNavigator` helpers for clarity:

- `PhlutsNavigator.pushPhluts('screen_name')`
- `PhlutsNavigator.pushReplacementPhluts('screen_name')`
- `PhlutsNavigator.pop()`
