import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/colors/phluts_brightness.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/theme/phluts_app_bar_theme/phluts_app_bar_theme.dart';
import 'package:phluts_core/foundation/theme/phluts_bottom_app_bar_theme/phluts_bottom_app_bar_theme.dart';
import 'package:phluts_core/foundation/theme/phluts_bottom_nav_bar_theme_data/phluts_bottom_nav_bar_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_bottom_sheet_theme_data/phluts_bottom_sheet_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_button_style/phluts_button_style.dart';
import 'package:phluts_core/foundation/theme/phluts_button_theme_data/phluts_button_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_card_theme_data/phluts_card_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_checkbox_theme_data/phluts_checkbox_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_chip_theme_data/phluts_chip_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_color_scheme/phluts_color_scheme.dart';
import 'package:phluts_core/foundation/theme/phluts_date_picker_theme_data/phluts_date_picker_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_dialog_theme_data/phluts_dialog_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_divider_theme_data/phluts_divider_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_drawer_theme_data/phluts_drawer_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_floating_action_button_theme_data/phluts_floating_action_button_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_icon_theme_data/phluts_icon_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_input_decoration_theme/phluts_input_decoration_theme.dart';
import 'package:phluts_core/foundation/theme/phluts_list_tile_theme_data/phluts_list_tile_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_material_banner_theme_data/phluts_material_banner_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_material_color/phluts_material_color.dart';
import 'package:phluts_core/foundation/theme/phluts_navigation_bar_theme_data/phluts_navigation_bar_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_navigation_drawer_theme_data/phluts_navigation_drawer_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_scrollbar_theme_data/phluts_scrollbar_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_snack_bar_theme_data/phluts_snack_bar_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_tab_bar_theme_data/phluts_tab_bar_theme_data.dart';
import 'package:phluts_core/foundation/theme/phluts_text_theme/phluts_text_theme.dart';
import 'package:phluts_core/foundation/theme/phluts_tool_tip_theme_data/phluts_tool_tip_theme_data.dart';

part 'phluts_theme.g.dart';

/// A Phluts model representing Flutter's [ThemeData].
///
/// Defines the complete theme for the application, including colors, typography,
/// iconography, and component themes for all Material widgets.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTheme(
///   brightness: PhlutsBrightness.light,
///   colorScheme: PhlutsColorScheme(
///     brightness: PhlutsBrightness.light,
///     primary: '#2196F3',
///     onPrimary: '#FFFFFF',
///   ),
///   textTheme: PhlutsTextTheme(...),
///   appBarTheme: PhlutsAppBarTheme(...),
///   useMaterial3: true,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "brightness": "light",
///   "useMaterial3": true,
///   "colorScheme": {
///     "brightness": "light",
///     "primary": "#2196F3",
///     "onPrimary": "#FFFFFF"
///   },
///   "textTheme": {...},
///   "appBarTheme": {...},
///   "buttonTheme": {...}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsTheme implements PhlutsElement {
  /// Creates a [PhlutsTheme] with the given properties.
  const PhlutsTheme({
    // GENERAL CONFIGURATION
    this.applyElevationOverlayColor,
    this.inputDecorationTheme,
    this.materialTapTargetSize,
    // this.platform,
    this.scrollbarTheme,
    this.useMaterial3,
    // COLOR
    this.colorScheme,
    this.brightness,
    this.colorSchemeSeed,
    // [colorScheme] is the preferred way to configure colors. The [Color] properties
    // listed below (as well as primarySwatch) will gradually be phased out, see
    // https://github.com/flutter/flutter/issues/91772.
    this.canvasColor,
    this.cardColor,
    this.disabledColor,
    this.dividerColor,
    this.focusColor,
    this.highlightColor,
    this.hintColor,
    this.hoverColor,
    this.primaryColor,
    this.primaryColorDark,
    this.primaryColorLight,
    this.primarySwatch,
    this.scaffoldBackgroundColor,
    this.secondaryHeaderColor,
    this.shadowColor,
    this.splashColor,
    this.unselectedWidgetColor,
    // TYPOGRAPHY & ICONOGRAPHY
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.iconTheme,
    this.primaryIconTheme,
    this.primaryTextTheme,
    this.textTheme,
    // COMPONENT THEMES
    this.appBarTheme,
    this.bannerTheme,
    this.bottomAppBarTheme,
    this.bottomNavigationBarTheme,
    this.bottomSheetTheme,
    this.buttonTheme,
    this.cardTheme,
    this.checkboxTheme,
    this.chipTheme,
    this.datePickerTheme,
    this.dialogTheme,
    this.dividerTheme,
    this.drawerTheme,
    // DropdownMenuThemeData? dropdownMenuTheme,
    this.elevatedButtonTheme,
    // ExpansionTileThemeData? expansionTileTheme,
    this.filledButtonTheme,
    this.floatingActionButtonTheme,
    this.iconButtonTheme,
    this.listTileTheme,
    // MenuBarThemeData? menuBarTheme,
    this.menuButtonTheme,
    // MenuThemeData? menuTheme,
    this.navigationBarTheme,
    this.navigationDrawerTheme,
    // NavigationRailThemeData? navigationRailTheme,
    this.outlinedButtonTheme,
    // PopupMenuThemeData? popupMenuTheme,
    // ProgressIndicatorThemeData? progressIndicatorTheme,
    // RadioThemeData? radioTheme,
    // SearchBarThemeData? searchBarTheme,
    // SearchViewThemeData? searchViewTheme,
    this.segmentedButtonTheme,
    // SliderThemeData? sliderTheme,
    this.snackBarTheme,
    // SwitchThemeData? switchTheme,
    this.tabBarTheme,
    this.textButtonTheme,
    // TextSelectionThemeData? textSelectionTheme,
    // TimePickerThemeData? timePickerTheme,
    // ToggleButtonsThemeData? toggleButtonsTheme,
    this.tooltipTheme,
  });

  // GENERAL CONFIGURATION
  /// Whether to apply elevation overlay color.
  final bool? applyElevationOverlayColor;

  /// The theme for input decorations (text fields, etc.).
  final PhlutsInputDecorationTheme? inputDecorationTheme;

  /// The minimum size of tap targets.
  final PhlutsMaterialTapTargetSize? materialTapTargetSize;

  // final PhlutsTargetPlatform? platform;

  /// The theme for scrollbars.
  final PhlutsScrollbarThemeData? scrollbarTheme;

  /// Whether to use Material 3 design.
  final bool? useMaterial3;

  // COLOR
  /// The color scheme for the theme.
  ///
  /// This is the preferred way to configure colors. The individual color
  /// properties below (as well as primarySwatch) will gradually be phased out.
  final PhlutsColorScheme? colorScheme;

  /// The brightness of the theme (light or dark).
  final PhlutsBrightness? brightness;

  /// A seed color used to generate the color scheme.
  final String? colorSchemeSeed;

  // [colorScheme] is the preferred way to configure colors. The [Color] properties
  // listed below (as well as primarySwatch) will gradually be phased out, see
  // https://github.com/flutter/flutter/issues/91772.

  /// The default color of [Material] when it is used within this theme.
  final String? canvasColor;

  /// The default color of [Card] widgets.
  final String? cardColor;

  /// The color to use for disabled widgets.
  final String? disabledColor;

  /// The color to use for dividers.
  final String? dividerColor;

  /// The color to use for input fields that have the input focus.
  final String? focusColor;

  /// The highlight color for widgets.
  final String? highlightColor;

  /// The color to use for hint text or placeholder text.
  final String? hintColor;

  /// The color to use for widgets when they are being hovered over.
  final String? hoverColor;

  /// The primary color of the theme.
  final String? primaryColor;

  /// A darker version of the primary color.
  final String? primaryColorDark;

  /// A lighter version of the primary color.
  final String? primaryColorLight;

  /// A swatch of primary colors with different shades.
  final PhlutsMaterialColor? primarySwatch;

  /// The default color of the [Scaffold] background.
  final String? scaffoldBackgroundColor;

  /// The color of the header in a [DataTable].
  final String? secondaryHeaderColor;

  /// The default shadow color for [Material] widgets.
  final String? shadowColor;

  /// The splash color for widgets.
  final String? splashColor;

  /// The color to use for unselected widgets.
  final String? unselectedWidgetColor;

  // TYPOGRAPHY & ICONOGRAPHY
  /// The default font family for text in the theme.
  final String? fontFamily;

  /// The fallback font families to use when [fontFamily] is not available.
  final List<String>? fontFamilyFallback;

  /// The package name for the font family.
  final String? package;

  /// The default theme for icons.
  final PhlutsIconThemeData? iconTheme;

  /// The theme for primary icons.
  final PhlutsIconThemeData? primaryIconTheme;

  /// The text theme for primary text.
  final PhlutsTextTheme? primaryTextTheme;

  /// The default text theme for the application.
  final PhlutsTextTheme? textTheme;

  // COMPONENT THEMES
  /// The theme for [AppBar] widgets.
  final PhlutsAppBarTheme? appBarTheme;

  // Note: Many theme classes are currently in phluts package, will be migrated later
  // Using Map for now to avoid circular dependency

  /// The theme for [MaterialBanner] widgets.
  final PhlutsMaterialBannerThemeData? bannerTheme;

  /// The theme for [BottomAppBar] widgets.
  final PhlutsBottomAppBarThemeData? bottomAppBarTheme;

  /// The theme for [BottomNavigationBar] widgets.
  final PhlutsBottomNavBarThemeData? bottomNavigationBarTheme;

  /// The theme for [BottomSheet] widgets.
  final PhlutsBottomSheetThemeData? bottomSheetTheme;

  /// The theme for Material buttons.
  final PhlutsButtonThemeData? buttonTheme;

  /// The theme for [Card] widgets.
  final PhlutsCardThemeData? cardTheme;

  /// The theme for [Checkbox] widgets.
  final PhlutsCheckboxThemeData? checkboxTheme;

  /// The theme for [Chip] widgets.
  final PhlutsChipThemeData? chipTheme;

  /// The theme for date picker dialogs.
  final PhlutsDatePickerThemeData? datePickerTheme;

  /// The theme for [Dialog] widgets.
  final PhlutsDialogThemeData? dialogTheme;

  /// The theme for [Divider] widgets.
  final PhlutsDividerThemeData? dividerTheme;

  /// The theme for [Drawer] widgets.
  final PhlutsDrawerThemeData? drawerTheme;

  // DropdownMenuThemeData? dropdownMenuTheme,

  /// The theme for [ElevatedButton] widgets.
  final PhlutsButtonStyle? elevatedButtonTheme;

  // ExpansionTileThemeData? expansionTileTheme,

  /// The theme for [FilledButton] widgets.
  final PhlutsButtonStyle? filledButtonTheme;

  /// The theme for [FloatingActionButton] widgets.
  final PhlutsFloatingActionButtonThemeData? floatingActionButtonTheme;

  /// The theme for [IconButton] widgets.
  final PhlutsButtonStyle? iconButtonTheme;

  /// The theme for [ListTile] widgets.
  final PhlutsListTileThemeData? listTileTheme;

  // MenuBarThemeData? menuBarTheme,

  /// The theme for [MenuButton] widgets.
  final PhlutsButtonStyle? menuButtonTheme;

  // MenuThemeData? menuTheme,

  /// The theme for [NavigationBar] widgets.
  final PhlutsNavigationBarThemeData? navigationBarTheme;

  /// The theme for [NavigationDrawer] widgets.
  final PhlutsNavigationDrawerThemeData? navigationDrawerTheme;

  // NavigationRailThemeData? navigationRailTheme,

  /// The theme for [OutlinedButton] widgets.
  final PhlutsButtonStyle? outlinedButtonTheme;

  // PopupMenuThemeData? popupMenuTheme,
  // ProgressIndicatorThemeData? progressIndicatorTheme,
  // RadioThemeData? radioTheme,
  // SearchBarThemeData? searchBarTheme,
  // SearchViewThemeData? searchViewTheme,

  /// The theme for [SegmentedButton] widgets.
  final PhlutsButtonStyle? segmentedButtonTheme;

  // SliderThemeData? sliderTheme,

  /// The theme for [SnackBar] widgets.
  final PhlutsSnackBarThemeData? snackBarTheme;

  // SwitchThemeData? switchTheme,

  /// The theme for [TabBar] widgets.
  final PhlutsTabBarThemeData? tabBarTheme;

  /// The theme for [TextButton] widgets.
  final PhlutsButtonStyle? textButtonTheme;

  // TextSelectionThemeData? textSelectionTheme,
  // TimePickerThemeData? timePickerTheme,
  // ToggleButtonsThemeData? toggleButtonsTheme,

  /// The theme for [Tooltip] widgets.
  final PhlutsTooltipThemeData? tooltipTheme;

  /// Creates a [PhlutsTheme] from JSON.
  factory PhlutsTheme.fromJson(Map<String, dynamic> json) =>
      _$PhlutsThemeFromJson(json);

  /// Converts this theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsThemeToJson(this);
}

/// A utility class providing access to Material text theme styles.
///
/// This class provides convenient access to Material Design text theme styles
/// for use in Phluts widgets. It offers a fluent API to access all Material
/// text theme variants.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// final style = PhlutsThemeData.textTheme.displayLarge;
/// final bodyStyle = PhlutsThemeData.textTheme.bodyMedium;
/// final titleStyle = PhlutsThemeData.textTheme.titleLarge;
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "style": {
///     "type": "theme",
///     "textTheme": "displayLarge"
///   }
/// }
/// ```
/// {@end-tool}
class PhlutsThemeData {
  /// Creates a [PhlutsThemeData] instance.
  const PhlutsThemeData._();

  /// Access to all Material text theme styles.
  ///
  /// Provides easy access to Material Design text theme styles through a
  /// fluent API. Use this to reference standard Material text styles in your
  /// Phluts widgets.
  ///
  /// Example:
  /// ```dart
  /// PhlutsText(
  ///   data: 'Hello',
  ///   style: PhlutsThemeData.textTheme.bodyMedium,
  /// )
  /// ```
  static const PhlutsThemeTextStyles textTheme = PhlutsThemeTextStyles();
}
