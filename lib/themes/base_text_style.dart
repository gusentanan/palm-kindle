import 'package:flutter/material.dart';
import 'package:palmkindle/utils/font_family.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Display, Headline, Title, Body, Label
// Type. Large, Medium, Small
extension BaseTextStyle on TextStyle {
  static TextStyle displayLarge = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 57.sp,
    height: 64.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle displayMedium = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 45.sp,
    height: 52.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle displaySmall = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 36.sp,
    height: 44.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle headlineLarge = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 32.sp,
    height: 40.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 28.sp,
    height: 36.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 24.sp,
    height: 32.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle titleLarge = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 22.sp,
    height: 28.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 16.sp,
    height: 24.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 14.sp,
    height: 20.sp,
    letterSpacing: 0.1.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 16.sp,
    height: 24.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 14.sp,
    height: 20.sp,
    letterSpacing: 0.25.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 12.sp,
    height: 20.sp,
    letterSpacing: 0.4.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle labelLarge = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 14.sp,
    height: 20.sp,
    letterSpacing: 0.1.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle labelMedium = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 12.sp,
    height: 16.sp,
    letterSpacing: 0.5.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle labelSmall = TextStyle(
    fontFamily: FontFamily.golos,
    fontSize: 11.sp,
    height: 16.sp,
    letterSpacing: 0.1.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
