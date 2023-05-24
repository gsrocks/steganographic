import 'package:flutter/material.dart';

extension ThemeContextExtension on BuildContext {
  ColorScheme get colors {
    return Theme.of(this).colorScheme;
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }
}
