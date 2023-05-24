import 'dart:io';
import 'dart:ui';

import 'package:steganographic/l10n/generated/app_localizations.dart';
import 'package:intl/intl.dart';

/// Provides access to localized project resources like strings and assets.
///
/// [ensureInitialized] must be called on app start to load resources.
class R {
  static AppLocalizations get strings => _currentStrings!;
  static AppLocalizations? _currentStrings;

  static Future<void> ensureInitialized() async {
    final currentLocale = _getCurrentLocale();
    if (_currentStrings == null ||
        Intl.defaultLocale != currentLocale.languageCode) {
      _currentStrings = await AppLocalizations.delegate.load(currentLocale);
      Intl.defaultLocale = currentLocale.languageCode;
    }
  }

  static Locale _getCurrentLocale() {
    Locale currentLocale = AppLocalizations.supportedLocales.first;
    final parts = Platform.localeName.split('_');
    final locale = Locale(parts.first, parts.last);
    if (AppLocalizations.delegate.isSupported(locale)) {
      currentLocale = locale;
    }
    return currentLocale;
  }
}
