import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/colours.dart';

/// Custom Class for white & black Text Themes
abstract class ATextTheme {
  ATextTheme._(); // To avoid creating instances

  /// Customizable white Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colours.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colours.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colours.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colours.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colours.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colours.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colours.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colours.black,
    ),
    bodySmall: const TextStyle().copyWith(
      letterSpacing: 0.1,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colours.black.withValues(alpha: 0.5),
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colours.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colours.black.withValues(alpha: 0.5),
    ),
  );

  /// Customizable black Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colours.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colours.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colours.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colours.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colours.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colours.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colours.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colours.white,
    ),
    bodySmall: const TextStyle().copyWith(
      letterSpacing: 0.1,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colours.white.withValues(alpha: 0.5),
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colours.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colours.white.withValues(alpha: 0.5),
    ),
  );
}
