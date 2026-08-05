import 'package:phluts/phluts_core.dart';

@PhlutsThemeRef(name: "movie_app_dark")
PhlutsTheme get darkTheme => _buildTheme(
  brightness: PhlutsBrightness.dark,
  colorScheme: PhlutsColorScheme(
    brightness: PhlutsBrightness.dark,
    primary: '#95E183',
    onPrimary: '#050608',
    secondary: '#95E183',
    onSecondary: '#FFFFFF',
    surface: '#050608',
    onSurface: '#FFFFFF',
    onSurfaceVariant: '#65FFFFFF',
    error: '#FF6565',
    onError: '#050608',
    outline: '#08FFFFFF',
  ),
);

PhlutsTheme _buildTheme({
  required PhlutsBrightness brightness,
  required PhlutsColorScheme colorScheme,
}) {
  return PhlutsTheme(
    brightness: brightness,
    colorScheme: colorScheme,
    textTheme: _buildTextTheme(),
    filledButtonTheme: _buildFilledButtonTheme(),
    outlinedButtonTheme: _buildOutlinedButtonTheme(),
    dividerTheme: _buildDividerTheme(),
  );
}

PhlutsTextTheme _buildTextTheme() {
  return PhlutsTextTheme(
    displayLarge: _textStyle(
      fontSize: 48,
      fontWeight: PhlutsFontWeight.w700,
      height: 1.1,
    ),
    displayMedium: _textStyle(
      fontSize: 40,
      fontWeight: PhlutsFontWeight.w700,
      height: 1.1,
    ),
    displaySmall: _textStyle(
      fontSize: 34,
      fontWeight: PhlutsFontWeight.w700,
      height: 1.1,
    ),
    headlineLarge: _textStyle(
      fontSize: 30,
      fontWeight: PhlutsFontWeight.w700,
      height: 1.3,
    ),
    headlineMedium: _textStyle(
      fontSize: 26,
      fontWeight: PhlutsFontWeight.w700,
      height: 1.3,
    ),
    headlineSmall: _textStyle(
      fontSize: 23,
      fontWeight: PhlutsFontWeight.w700,
      height: 1.3,
    ),
    titleLarge: _textStyle(
      fontSize: 20,
      fontWeight: PhlutsFontWeight.w500,
      height: 1.3,
    ),
    titleMedium: _textStyle(
      fontSize: 18,
      fontWeight: PhlutsFontWeight.w500,
      height: 1.3,
    ),
    titleSmall: _textStyle(
      fontSize: 16,
      fontWeight: PhlutsFontWeight.w500,
      height: 1.3,
    ),
    labelLarge: _textStyle(
      fontSize: 16,
      fontWeight: PhlutsFontWeight.w700,
      height: 1.3,
    ),
    labelMedium: _textStyle(
      fontSize: 14,
      fontWeight: PhlutsFontWeight.w600,
      height: 1.3,
    ),
    labelSmall: _textStyle(
      fontSize: 12,
      fontWeight: PhlutsFontWeight.w500,
      height: 1.3,
    ),
    bodyLarge: _textStyle(
      fontSize: 18,
      fontWeight: PhlutsFontWeight.w400,
      height: 1.5,
    ),
    bodyMedium: _textStyle(
      fontSize: 16,
      fontWeight: PhlutsFontWeight.w400,
      height: 1.5,
    ),
    bodySmall: _textStyle(
      fontSize: 14,
      fontWeight: PhlutsFontWeight.w400,
      height: 1.5,
    ),
  );
}

PhlutsButtonStyle _buildFilledButtonTheme() {
  return PhlutsButtonStyle(
    minimumSize: PhlutsSize(120, 40),
    textStyle: _textStyle(
      fontSize: 16,
      fontWeight: PhlutsFontWeight.w500,
      height: 1.3,
    ),
    padding: PhlutsEdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
    shape: PhlutsRoundedRectangleBorder(
      borderRadius: PhlutsBorderRadius.all(8),
    ),
  );
}

PhlutsButtonStyle _buildOutlinedButtonTheme() {
  return PhlutsButtonStyle(
    minimumSize: PhlutsSize(120, 40),
    textStyle: _textStyle(
      fontSize: 16,
      fontWeight: PhlutsFontWeight.w500,
      height: 1.3,
    ),
    padding: PhlutsEdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
    side: PhlutsBorderSide(color: '#95E183', width: 1.0),
    shape: PhlutsRoundedRectangleBorder(
      borderRadius: PhlutsBorderRadius.all(8),
    ),
  );
}

PhlutsDividerThemeData _buildDividerTheme() {
  return PhlutsDividerThemeData(color: '#24FFFFFF', thickness: 1);
}

PhlutsCustomTextStyle _textStyle({
  required double fontSize,
  required PhlutsFontWeight fontWeight,
  required double height,
  double? letterSpacing,
}) {
  return PhlutsCustomTextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    letterSpacing: letterSpacing,
  );
}
