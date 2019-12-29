import 'package:flutter/material.dart';

const defaultLocale = Locale('zh', '');

class I18nState extends ChangeNotifier {
  Locale value = defaultLocale;

  updateLocale(Locale locale) {
    value = locale;
    notifyListeners();
  }
}
