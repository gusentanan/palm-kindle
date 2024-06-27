import 'package:flutter/material.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/utils/font_family.dart';

final baseTheme = ThemeData(
  useMaterial3: true,
  progressIndicatorTheme:
      ProgressIndicatorThemeData(color: BaseColors.pmaIntense),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: BaseColors.primaryColor,
  brightness: Brightness.light,
  fontFamily: FontFamily.golos,
  indicatorColor: BaseColors.primaryColor,
  textSelectionTheme:
      const TextSelectionThemeData(cursorColor: BaseColors.primaryColor),
  appBarTheme: AppBarTheme(
    surfaceTintColor: BaseColors.bgCanvas,
    backgroundColor: BaseColors.bgCanvas,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    surfaceTintColor: BaseColors.bgCanvas,
    backgroundColor: BaseColors.bgCanvas,
  ),
  dialogTheme: DialogTheme(
    surfaceTintColor: BaseColors.bgCanvas,
    backgroundColor: BaseColors.bgCanvas,
  ),
  cardTheme: CardTheme(surfaceTintColor: BaseColors.bgCanvas),
  bottomAppBarTheme: BottomAppBarTheme(surfaceTintColor: BaseColors.bgCanvas),
  colorScheme: const ColorScheme.light()
      .copyWith(
        outline: BaseColors.neutralColor,
        primary: BaseColors.primaryColor,
        onPrimary: BaseColors.primaryColor,
      )
      .copyWith(
        primary: BaseColors.primaryColor,
        secondary: BaseColors.pmaDim,
        brightness: Brightness.light,
      )
      .copyWith(surface: BaseColors.bgCanvas),
);
