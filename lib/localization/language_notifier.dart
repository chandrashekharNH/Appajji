import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageNotifier extends ChangeNotifier {
  static const String _languageCodeKey = 'language_code';

  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  LanguageNotifier() {
    _loadSavedLanguage();
  }

  /// Load saved language from local storage
  Future<void> _loadSavedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_languageCodeKey);

    if (code != null) {
      _locale = Locale(code);
      notifyListeners();
    }
  }

  /// Change language and save it
  Future<void> changeLanguage(Locale locale) async {
    _locale = locale;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageCodeKey, locale.languageCode);

    notifyListeners();
  }
}