import 'package:flutter/material.dart';
import 'package:palmkindle/themes/utils/color_swatch.dart';

extension BaseColors on Color {
  static const Color primaryColor = PalmColorPalletes.cyanSwatch;
  static const Color blackColor = PalmColorPalletes.blackSwatch;
  static const Color neutralColor = PalmColorPalletes.neutralSwatch;
  static const Color greenColor = PalmColorPalletes.greenCustomSwatch;
  static const Color redColor = PalmColorPalletes.redCustomSwatch;

  /// -------------------
  /// Primary Accent (pma)
  /// -------------------
  static Color get pmaSubtle => PalmColorPalletes.cyanSwatch.shade50;
  static Color get pmaMuted => PalmColorPalletes.cyanSwatch.shade200;
  static Color get pmaDim => PalmColorPalletes.cyanSwatch.shade500;
  static Color get pmaBold => PalmColorPalletes.cyanSwatch.shade700;
  static Color get pmaStrong => PalmColorPalletes.cyanSwatch.shade800;
  static Color get pmaIntense => PalmColorPalletes.cyanSwatch.shade900;

  /// --------------------
  /// Background Color (bg)
  /// ---------------------
  /// Foregrounds are semantic tokens with specific usage for text and icon colors.
  static Color get bgCanvas => PalmColorPalletes.blackSwatch.shade700;
  static Color get bgMuted => PalmColorPalletes.blackSwatch.shade600;
  static Color get bgSubtle => PalmColorPalletes.blackSwatch.shade500;

  static Color get bgSuccess => PalmColorPalletes.greenCustomSwatch.shade50;
  static Color get bgSuccessConstrast =>
      PalmColorPalletes.greenCustomSwatch.shade600;

  static Color get bgError => PalmColorPalletes.redCustomSwatch.shade50;
  static Color get bgErrorConstrast =>
      PalmColorPalletes.redCustomSwatch.shade600;
}
