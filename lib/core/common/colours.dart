import 'package:flutter/material.dart';

abstract class Colours {
  // App theme colors
  static const Color primary = Color(0xFF3F65FA);
  static const Color secondary = Color(0xFFEE3936);

  // Background colors
  static const Color lightBG = Color(0xFFE3E5E6);
  static const Color darkBG = Color(0xFF151515);

  // Background Container colors
  static const Color lightContainer = Color(0xFFF9F9F9);
  static const Color darkContainer = Color(0xFF1C1C1C);

  // Cards colors
  static const Color lightCardColor = Color(0xFFFEFEFE);
  static const Color darkCardColor = Color(0xFF4A4A4A);

  // Bottom Navbar colors
  static const Color lightBottomNavBarBg = white;
  static const Color darkBottomNavBarBg = darkCardColor;
  // Button colors
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = secondary;

  // Text Field colors
  static const Color lightTextFieldFillColor = lightCardColor;
  static const Color hitTextColor = Color(0xFFb6b6b6);
  static const Color enabledBorderColor = hitTextColor;
  static const Color darkTextFieldFillColor = darkCardColor;
  static const Color hitTextColorDark = Color(0xFF87918d);

  //Icons color
  static const Color iconPrimary = Color(0xFF90e476);
  static const Color iconSecondary = Color(0xFF6C757D);

  // Border colors
  static const Color borderPrimary = Color(0xFF515f59);
  static const Color borderPrimaryLight = Color(0xFFd3d3d3);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
