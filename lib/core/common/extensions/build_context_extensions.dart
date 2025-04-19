import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';

extension BuildContextExtension on BuildContext {
  //sizes
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  bool get isDesktop =>
      MediaQuery.sizeOf(this).width >= AppSizes.desktopScreenSize;

  bool get isTablet =>
      MediaQuery.sizeOf(this).width < AppSizes.desktopScreenSize &&
      MediaQuery.sizeOf(this).width >= AppSizes.tabletScreenSize;

  bool get isMobile =>
      MediaQuery.sizeOf(this).width < AppSizes.tabletScreenSize;

  //theme
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => theme.colorScheme;
}
