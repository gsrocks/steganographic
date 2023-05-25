import 'package:flutter/material.dart';
import 'package:steganographic/theme/color_schemes.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => getTheme(lightColorScheme);

  static ThemeData get darkTheme => getTheme(darkColorScheme);

  static ThemeData getTheme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      appBarTheme: getAppBarTheme(colorScheme),
      listTileTheme: getListTileTheme(colorScheme),
    );
  }

  static AppBarTheme getAppBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      backgroundColor: colorScheme.background,
    );
  }

  static ListTileThemeData getListTileTheme(ColorScheme colorScheme) {
    return ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      subtitleTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: colorScheme.onSurfaceVariant,
      ),
      tileColor: colorScheme.surface,
    );
  }
}
