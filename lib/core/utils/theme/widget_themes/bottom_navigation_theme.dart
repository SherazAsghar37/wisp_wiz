import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/colours.dart';

abstract class ABottomNavigationTheme {
  ABottomNavigationTheme._(); // To avoid creating instances

  /// Light Theme
  static final lightBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: Colours.lightBottomNavBarBg,
    selectedItemColor: Colours.black,
    unselectedItemColor: Colours.white,
    selectedIconTheme: const IconThemeData(color: Colours.white),
    unselectedIconTheme: const IconThemeData(color: Colours.black),
    showSelectedLabels: true,
    showUnselectedLabels: false,
  );

  /// Dark Theme
  static final darkBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: Colours.darkBottomNavBarBg,
    selectedItemColor: Colours.white,
    unselectedItemColor: Colours.white,
    selectedIconTheme: const IconThemeData(color: Colours.white),
    unselectedIconTheme: const IconThemeData(color: Colours.white),
    showSelectedLabels: true,
    showUnselectedLabels: false,
  );
}
