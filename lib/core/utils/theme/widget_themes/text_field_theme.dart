import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/colours.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';

abstract class ATextFormFieldTheme {
  ATextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colours.black,
    suffixIconColor: Colours.black,
    filled: true,

    // constraints: const BoxConstraints.expand(height: AppSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSizes.fontSizeMd,
      color: Colours.black,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSizes.fontSizeSm,
      color: Colours.hitTextColor,
      fontWeight: FontWeight.w400,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colours.black.withValues(alpha: 0.8),
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: AppSizes.lg,
      horizontal: AppSizes.xxl,
    ),

    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: Colours.lightTextFieldFillColor,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: Colours.lightTextFieldFillColor,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colours.enabledBorderColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colours.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: Colours.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colours.hitTextColorDark,
    suffixIconColor: Colours.hitTextColorDark,
    // constraints: const BoxConstraints.expand(height: AppSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSizes.fontSizeMd,
      color: Colours.white,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSizes.fontSizeSm,
      color: Colours.hitTextColorDark,
      fontWeight: FontWeight.w400,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colours.white.withValues(alpha: 0.8),
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: AppSizes.lg,
      horizontal: AppSizes.xxl,
    ),

    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: Colours.darkTextFieldFillColor,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: Colours.darkTextFieldFillColor,
      ),
    ),
    filled: true,
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colours.enabledBorderColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colours.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: Colours.warning),
    ),
  );
}
