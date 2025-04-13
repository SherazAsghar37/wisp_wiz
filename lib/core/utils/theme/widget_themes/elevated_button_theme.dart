import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/colours.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
abstract class AElevatedButtonTheme {
  AElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colours.white,
      backgroundColor: Colours.primary,
      // disabledForegroundColor: Colours.black,
      // disabledBackgroundColor: Colours.buttonDisabled,
      side: const BorderSide(color: Colours.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colours.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colours.white,
      backgroundColor: Colours.primary,
      disabledForegroundColor: Colours.white,
      // disabledBackgroundColor: Colours.buttonDisabled,
      side: const BorderSide(color: Colours.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colours.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
    ),
  );
}
