import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/colours.dart';
import 'package:wisp_wiz/core/utils/theme/color_scheme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/appbar_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/bottom_navigation_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/chip_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/text_field_theme.dart';
import 'package:wisp_wiz/core/utils/theme/widget_themes/text_theme.dart';

abstract class AAppTheme {
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Neometric',
    // disabledColor: Colours.buttonDisabled,
    brightness: Brightness.light,
    primaryColor: Colours.primary,
    textTheme: ATextTheme.lightTextTheme,
    chipTheme: AChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colours.lightBG,
    colorScheme: AColorScheme.lightColorScheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    checkboxTheme: ACheckboxTheme.lightCheckboxTheme,
    // hoverColor: Colours.primaryAccent,
    secondaryHeaderColor: Colours.black,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,
    cardColor: Colours.lightCardColor,

    bottomNavigationBarTheme:
        ABottomNavigationTheme.lightBottomNavigationBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Neometric',
    // disabledColor: Colours.buttonDisabled,
    brightness: Brightness.dark,
    primaryColor: Colours.primary,
    textTheme: ATextTheme.darkTextTheme,
    chipTheme: AChipTheme.darkChipTheme,
    colorScheme: AColorScheme.darkColorScheme,
    // hoverColor: Colours.darkAccent,
    secondaryHeaderColor: Colours.white,
    scaffoldBackgroundColor: Colours.darkBG,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    checkboxTheme: ACheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme,
    cardColor: Colours.darkCardColor,
    bottomNavigationBarTheme:
        ABottomNavigationTheme.darkBottomNavigationBarTheme,
  );
}
