import 'package:flutter/material.dart';

class I18nState extends ChangeNotifier {
  Locale _locale = Locale('zh', '');
  String _name = "中文";

  get locale => _locale;
  get localeName => _name;

  updateLocale(Locale locale, String name) {
    _locale = locale;
    _name = name;
    notifyListeners();
  }
}
