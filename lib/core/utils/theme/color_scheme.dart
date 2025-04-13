import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/colours.dart';

abstract class AColorScheme {
  AColorScheme._();

  static ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Colours.primary,
    onPrimary: Colours.white,
    secondary: Colours.secondary,
    onSecondary: Colours.white,
    error: Colours.error,
    onError: Colours.white,
    surface: Colours.lightContainer,
    onSurface: Colours.lightCardColor,
    inversePrimary: Colours.darkerGrey,
  );

  static ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Colours.primary,
    onPrimary: Colours.white,
    secondary: Colours.secondary,
    onSecondary: Colours.white,
    error: Colours.error,
    onError: Colours.white,
    surface: Colours.darkContainer,
    onSurface: Colours.darkCardColor,
    inversePrimary: Colours.darkerGrey,
  );
}
