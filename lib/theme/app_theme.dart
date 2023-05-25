import 'package:flutter/material.dart';

abstract class AppTheme {
  static const primaryColor = Color(0xFF556600);

  static final listTileTheme = ListTileThemeData(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    subtitleTextStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xFF46483C),
    ),
    tileColor: const Color(0xFFFCF9F1),
  );
}
