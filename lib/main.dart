import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/PickerLocalizationsDelegate.dart';
import 'package:flutter_template/pages/setting_page.dart';
import 'package:flutter_template/route/application.dart';
import 'package:flutter_template/route/routes.dart';
import 'package:flutter_template/state/i18n_state.dart';
import 'package:flutter_template/state/pkg_state.dart';
import 'package:provider/provider.dart';
import './generated/i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<PkgState>(create: (context) => PkgState()),
      ChangeNotifierProvider<I18nState>(create: (context) => I18nState()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Locale locale = Provider.of<I18nState>(context).locale;

    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        primaryColor: Color(0xFFFF4700),
      ),
      onGenerateTitle: (context) {
        return S.of(context).app_title;
      },
      onGenerateRoute: Application.router.generator,
      locale: locale,
      localizationsDelegates: [
        S.delegate,
        PickerLocalizationsDelegate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: S.delegate.resolution(fallback: locale),
      home: SettingPage(),
    );
  }
}
