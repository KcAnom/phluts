# Action Recipes

## Navigation

- Preferred: use `PhlutsNavigator` helpers.
- Push Phluts screen: `PhlutsNavigator.pushPhluts('screen_name')`
- Pop current route: `PhlutsNavigator.pop()`
- Replace route: `PhlutsNavigator.pushReplacementPhluts('screen_name')`

## Forms

- Validate before submit: `PhlutsFormValidate`
- Read values: `PhlutsGetFormValue`
- Update state: `PhlutsSetValueAction`

## Network

- Request API data: `PhlutsNetworkRequest`
- Pair with `PhlutsDynamicView` for templated list rendering.

## Utilities

- Sequence actions: `PhlutsMultiAction`
- Add delay for staged transitions: `PhlutsDelayAction`
