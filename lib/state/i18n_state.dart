import 'package:flutter/material.dart';

class I18nState extends ChangeNotifier {
  Locale value = Locale('zh', '');

  updateLocale(Locale locale) {
    value = locale;
    notifyListeners();
  }
}
