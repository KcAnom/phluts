import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_type.dart';

const String _hashtag = "#";
const String _empty = "";
const String _transparencySeparator = "@";

extension ColorExt on String? {
  Color? toColor(BuildContext context) {
    if (this?.isEmpty ?? true) return null;

    // Extract transparency if specified
    String colorString = this!;
    int opacity = 255; // Default: fully opaque

    if (colorString.contains(_transparencySeparator)) {
      final parts = colorString.split(_transparencySeparator);
      colorString = parts[0];
      // Parse transparency percentage (0-100) and convert to alpha value (0-255)
      final opacityPercentage = int.tryParse(parts[1]);
      if (opacityPercentage != null &&
          opacityPercentage >= 0 &&
          opacityPercentage <= 100) {
        opacity = ((opacityPercentage) * 255 / 100).round();
      }
    }

    // Parse the color based on its format
    Color? parsedColor;
    if (colorString.startsWith(_hashtag)) {
      parsedColor = _parseHexColor(colorString, opacity);
    } else {
      // Try theme color first, then named color
      parsedColor = _parseThemeColor(colorString, context);
      parsedColor ??= _parseNameColor(colorString);
    }

    // Apply transparency if a valid color was parsed and transparency is not 255 (fully opaque)
    if (parsedColor != null && opacity != 255) {
      return parsedColor.withAlpha(opacity);
    }

    return parsedColor;
  }
}

Color? _parseThemeColor(String color, BuildContext context) {
  // Ex: primary
  PhlutsColorType colorType = PhlutsColorType.values.firstWhere(
    (e) => e.name == color,
    orElse: () => PhlutsColorType.none,
  );

  switch (colorType) {
    case PhlutsColorType.primary:
      return Theme.of(context).colorScheme.primary;
    case PhlutsColorType.onPrimary:
      return Theme.of(context).colorScheme.onPrimary;
    case PhlutsColorType.primaryContainer:
      return Theme.of(context).colorScheme.primaryContainer;
    case PhlutsColorType.onPrimaryContainer:
      return Theme.of(context).colorScheme.onPrimaryContainer;
    case PhlutsColorType.primaryFixed:
      return Theme.of(context).colorScheme.primaryFixed;
    case PhlutsColorType.primaryFixedDim:
      return Theme.of(context).colorScheme.primaryFixedDim;
    case PhlutsColorType.onPrimaryFixed:
      return Theme.of(context).colorScheme.onPrimaryFixed;
    case PhlutsColorType.onPrimaryFixedVariant:
      return Theme.of(context).colorScheme.onPrimaryFixedVariant;
    case PhlutsColorType.secondary:
      return Theme.of(context).colorScheme.secondary;
    case PhlutsColorType.onSecondary:
      return Theme.of(context).colorScheme.onSecondary;
    case PhlutsColorType.secondaryContainer:
      return Theme.of(context).colorScheme.secondaryContainer;
    case PhlutsColorType.onSecondaryContainer:
      return Theme.of(context).colorScheme.onSecondaryContainer;
    case PhlutsColorType.secondaryFixed:
      return Theme.of(context).colorScheme.secondaryFixed;
    case PhlutsColorType.secondaryFixedDim:
      return Theme.of(context).colorScheme.secondaryFixedDim;
    case PhlutsColorType.onSecondaryFixed:
      return Theme.of(context).colorScheme.onSecondaryFixed;
    case PhlutsColorType.onSecondaryFixedVariant:
      return Theme.of(context).colorScheme.onSecondaryFixedVariant;
    case PhlutsColorType.tertiary:
      return Theme.of(context).colorScheme.tertiary;
    case PhlutsColorType.onTertiary:
      return Theme.of(context).colorScheme.onTertiary;
    case PhlutsColorType.tertiaryContainer:
      return Theme.of(context).colorScheme.tertiaryContainer;
    case PhlutsColorType.onTertiaryContainer:
      return Theme.of(context).colorScheme.onTertiaryContainer;
    case PhlutsColorType.tertiaryFixed:
      return Theme.of(context).colorScheme.tertiaryFixed;
    case PhlutsColorType.tertiaryFixedDim:
      return Theme.of(context).colorScheme.tertiaryFixedDim;
    case PhlutsColorType.onTertiaryFixed:
      return Theme.of(context).colorScheme.onTertiaryFixed;
    case PhlutsColorType.onTertiaryFixedVariant:
      return Theme.of(context).colorScheme.onTertiaryFixedVariant;
    case PhlutsColorType.error:
      return Theme.of(context).colorScheme.error;
    case PhlutsColorType.onError:
      return Theme.of(context).colorScheme.onError;
    case PhlutsColorType.errorContainer:
      return Theme.of(context).colorScheme.errorContainer;
    case PhlutsColorType.onErrorContainer:
      return Theme.of(context).colorScheme.onErrorContainer;
    case PhlutsColorType.surface:
      return Theme.of(context).colorScheme.surface;
    case PhlutsColorType.onSurface:
      return Theme.of(context).colorScheme.onSurface;
    case PhlutsColorType.surfaceDim:
      return Theme.of(context).colorScheme.surfaceDim;
    case PhlutsColorType.surfaceBright:
      return Theme.of(context).colorScheme.surfaceBright;
    case PhlutsColorType.surfaceContainerLowest:
      return Theme.of(context).colorScheme.surfaceContainerLowest;
    case PhlutsColorType.surfaceContainerLow:
      return Theme.of(context).colorScheme.surfaceContainerLow;
    case PhlutsColorType.surfaceContainer:
      return Theme.of(context).colorScheme.surfaceContainer;
    case PhlutsColorType.surfaceContainerHigh:
      return Theme.of(context).colorScheme.surfaceContainerHigh;
    case PhlutsColorType.surfaceContainerHighest:
      return Theme.of(context).colorScheme.surfaceContainerHighest;
    case PhlutsColorType.onSurfaceVariant:
      return Theme.of(context).colorScheme.onSurfaceVariant;
    case PhlutsColorType.outline:
      return Theme.of(context).colorScheme.outline;
    case PhlutsColorType.outlineVariant:
      return Theme.of(context).colorScheme.outlineVariant;
    case PhlutsColorType.shadow:
      return Theme.of(context).colorScheme.shadow;
    case PhlutsColorType.scrim:
      return Theme.of(context).colorScheme.scrim;
    case PhlutsColorType.inverseSurface:
      return Theme.of(context).colorScheme.inverseSurface;
    case PhlutsColorType.onInverseSurface:
      return Theme.of(context).colorScheme.onInverseSurface;
    case PhlutsColorType.inversePrimary:
      return Theme.of(context).colorScheme.inversePrimary;
    case PhlutsColorType.surfaceTint:
      return Theme.of(context).colorScheme.surfaceTint;
    case PhlutsColorType.none:
      return null;
  }
}

Color _parseHexColor(String color, [int alpha = 255]) {
  // Ex: #000000 or #FF000000
  final buffer = StringBuffer();
  if (color.length == 6 || color.length == 7) {
    // Add alpha channel
    buffer.write(alpha.toRadixString(16).padLeft(2, '0'));
  }
  buffer.write(color.replaceFirst(_hashtag, _empty));
  int? intColor = int.tryParse(buffer.toString(), radix: 16);
  intColor = intColor ?? 0x00000000;
  return Color(intColor);
}

Color? _parseNameColor(String colorString) {
  String color;
  int? opacity;
  if (colorString.startsWith(PhlutsColors.white.name) ||
      colorString.startsWith(PhlutsColors.black.name)) {
    // Ex: black54
    color = colorString.substring(0, colorString.length - 2);
    opacity = int.tryParse(
      colorString.substring(colorString.length - 2, colorString.length),
    );
    if (opacity == null) {
      // Ex: black
      color = colorString;
    }
  } else {
    // Ex: red
    color = colorString;
  }

  PhlutsColors phlutsColor = PhlutsColors.values.firstWhere(
    (e) => e.name == color,
    orElse: () => PhlutsColors.transparent,
  );

  switch (phlutsColor) {
    case PhlutsColors.amber:
      return Colors.amber;
    case PhlutsColors.amberAccent:
      return Colors.amberAccent;
    case PhlutsColors.black:
      switch (opacity) {
        case 12:
          return Colors.black12;
        case 26:
          return Colors.black26;
        case 38:
          return Colors.black38;
        case 45:
          return Colors.black45;
        case 54:
          return Colors.black54;
        case 87:
          return Colors.black87;
        default:
          return Colors.black;
      }
    case PhlutsColors.blue:
      return Colors.blue;
    case PhlutsColors.blueAccent:
      return Colors.blueAccent;
    case PhlutsColors.blueGrey:
      return Colors.blueGrey;
    case PhlutsColors.brown:
      return Colors.brown;
    case PhlutsColors.cyan:
      return Colors.cyan;
    case PhlutsColors.cyanAccent:
      return Colors.cyanAccent;
    case PhlutsColors.deepOrange:
      return Colors.deepOrange;
    case PhlutsColors.deepOrangeAccent:
      return Colors.deepOrangeAccent;
    case PhlutsColors.deepPurple:
      return Colors.deepPurple;
    case PhlutsColors.deepPurpleAccent:
      return Colors.deepPurpleAccent;
    case PhlutsColors.green:
      return Colors.green;
    case PhlutsColors.greenAccent:
      return Colors.greenAccent;
    case PhlutsColors.grey:
      return Colors.grey;
    case PhlutsColors.indigo:
      return Colors.indigo;
    case PhlutsColors.indigoAccent:
      return Colors.indigoAccent;
    case PhlutsColors.lightBlue:
      return Colors.lightBlue;
    case PhlutsColors.lightBlueAccent:
      return Colors.lightBlueAccent;
    case PhlutsColors.lightGreen:
      return Colors.lightGreen;
    case PhlutsColors.lightGreenAccent:
      return Colors.lightGreenAccent;
    case PhlutsColors.lime:
      return Colors.lime;
    case PhlutsColors.limeAccent:
      return Colors.limeAccent;
    case PhlutsColors.orange:
      return Colors.orange;
    case PhlutsColors.orangeAccent:
      return Colors.orangeAccent;
    case PhlutsColors.pink:
      return Colors.pink;
    case PhlutsColors.pinkAccent:
      return Colors.pinkAccent;
    case PhlutsColors.purple:
      return Colors.purple;
    case PhlutsColors.purpleAccent:
      return Colors.purpleAccent;
    case PhlutsColors.red:
      return Colors.red;
    case PhlutsColors.redAccent:
      return Colors.redAccent;
    case PhlutsColors.teal:
      return Colors.teal;
    case PhlutsColors.tealAccent:
      return Colors.tealAccent;
    case PhlutsColors.transparent:
      return Colors.transparent;
    case PhlutsColors.white:
      switch (opacity) {
        case 10:
          return Colors.white10;
        case 12:
          return Colors.white12;
        case 24:
          return Colors.white24;
        case 30:
          return Colors.white30;
        case 38:
          return Colors.white38;
        case 54:
          return Colors.white54;
        case 60:
          return Colors.white60;
        case 70:
          return Colors.white70;
        default:
          return Colors.white;
      }
    case PhlutsColors.yellow:
      return Colors.yellow;
    case PhlutsColors.yellowAccent:
      return Colors.yellowAccent;
  }
}
