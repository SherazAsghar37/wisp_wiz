import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/colours.dart';

abstract class AChipTheme {
  AChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colours.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: Colours.black),
    selectedColor: Colours.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colours.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colours.darkerGrey,
    labelStyle: TextStyle(color: Colours.white),
    selectedColor: Colours.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colours.white,
  );
}
