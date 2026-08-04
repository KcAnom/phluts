## 1.5.0

- Added `PhlutsDefaultNavigationController`, `PhlutsNavigationBar`, `PhlutsNavigationView`, and `PhlutsNavigationDestination` models for Material 3 navigation.
- Added `mask` input formatter support.
- Added validator `options` for parameterized form validation rules.
- Added text decoration line support to `PhlutsTextStyle`.
- Added `floatingLabelBehavior` support to `PhlutsInputDecoration`.

## 1.4.0
  - Added new border option models for input decoration (`PhlutsInputBorder`, etc).
  - Added `copyWith` method to `PhlutsThemeTextStyle` model.

## 1.3.0

- Added `PhlutsSliverToBoxAdapter` widget model
- Added `PhlutsSliverPadding` widget model
- Added `PhlutsSliverSafeArea` widget model
- Added `PhlutsSliverOpacity` widget model
- Added `PhlutsSliverVisibility` widget model
- Added `PhlutsSliverList` widget model
- Added `PhlutsSliverFillRemaining` widget model
- Added `PhlutsSliverGrid` widget model

## 1.2.0

- Added `PhlutsBadge` widget model for displaying badges with labels or counts
- Added `PhlutsTooltip` widget model for tooltip functionality
- Added `PhlutsSelectableText` widget model for selectable text display
- Added `loadingWidget` and `errorWidget` properties to `PhlutsNetworkWidget` model
- Added `PhlutsTooltipThemeData` model for tooltip theme configuration
- Added `PhlutsThemeRef` annotation for Phluts Theme DSL support

## 1.1.0

- Added Phluts Theme and ThemeData classes to phluts_core
- Added `enabled`, `backgroundColor`, `side` & `innerRadius` in PhlutsRadio widget.
- Added `onChanged` in PhlutsRadioGroup widget.

## 1.0.0

- **New Features:**
  - Added PhlutsScreen annotation for marking methods that return PhlutsWidget instances
  - Added PhlutsBorder factory methods (.all() and .symmetric()) for convenient border creation
  - Added PhlutsBorderRadius factory constructors (.only(), .horizontal(), .vertical(), .circular())
  - Added PhlutsColor withOpacity() extension method for opacity manipulation
  - Added PhlutsSetValue widget for managing application state through key-value pairs
  - Added PhlutsLinearProgressIndicator widget
  - Added PhlutsDefaultBottomNavigationController widget

- **Enhancements:**
  - Migrated PhlutsAlign from packages/phluts to packages/phluts_core for DSL support
  - Migrated PhlutsDefaultBottomNavigationController from legacy Freezed model to new phluts_models system
  - Enhanced PhlutsSetValueAction with proper PhlutsAction type handling
  - Improved bottom navigation timing by deferring BottomNavigationScope access to build time

- **Bug Fixes:**
  - Fixed null child handling in PhlutsSetValue widget
  - Fixed timing issues in navigation parsers where InheritedWidget was accessed before creation
  - Fixed PhlutsSetValueAction.action type from Map to PhlutsAction
  - Fixed default gradient return value in PhlutsGradientParser to linearGradient

## 0.2.0

- Added phluts alignment geometry 
- Enhanced PhlutsTextStlye to support custom and material text theme
- Added propper logging
- Bug Fixes & improvements

## 0.1.0

- Initial release. Supports core functionalities and common interfaces for Phluts.
