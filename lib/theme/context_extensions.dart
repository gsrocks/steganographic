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

  bool get isLargeScreen {
    return MediaQuery.of(this).size.width >= 640;
  }

  bool get isPortrait {
    return MediaQuery.of(this).orientation == Orientation.portrait;
  }
}
