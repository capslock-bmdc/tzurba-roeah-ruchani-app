import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static const PRIMATY_COLOR = const Color(0xFF3C658E);
  static const ACCENT_COLOR = const Color(0xFF3EA1DA);

  static const TEXT_COLOR = const Color(0xFF000000);
  static const ERROR_COLOR = const Color(0xFFE53935);
  static const SUCCESS_COLOR = const Color(0xFF7CB342);
  static const BACKGROUND_COLOR = const Color(0xFFF9F9F9);
  static const DISABLED_COLOR = const Color(0xFFD2D2D2);
}

class ThemeUtil {
  getTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ThemeColors.PRIMATY_COLOR,
      accentColor: ThemeColors.ACCENT_COLOR,
      cursorColor: ThemeColors.TEXT_COLOR,
      backgroundColor: ThemeColors.BACKGROUND_COLOR,
      canvasColor: ThemeColors.BACKGROUND_COLOR,
      splashColor: ThemeColors.ACCENT_COLOR.withOpacity(0.2),
      highlightColor: ThemeColors.ACCENT_COLOR.withOpacity(0.1),
      disabledColor: ThemeColors.DISABLED_COLOR,
      textSelectionHandleColor: ThemeColors.PRIMATY_COLOR,
      textSelectionColor: ThemeColors.PRIMATY_COLOR.withOpacity(0.4),
      textTheme: GoogleFonts.rubikTextTheme(),
    );
  }
}

ThemeUtil themeUtil = new ThemeUtil();
