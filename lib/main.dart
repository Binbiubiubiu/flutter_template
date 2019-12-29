import 'package:flutter/material.dart';
import 'package:flutter_template/examples/i18n.dart';
import 'package:flutter_template/state/i18n_state.dart';
import 'package:provider/provider.dart';
import './generated/i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<I18nState>(create: (context) => I18nState()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Locale locale = Provider.of<I18nState>(context).value;

    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        primaryColor: Color(0xFFFF4700),
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: S.delegate.resolution(fallback: defaultLocale),
      home: Builder(builder: (context) {
        return Localizations.override(
          context: context,
          locale: locale,
          child: I18nExample(),
        );
      }),
    );
  }
}
