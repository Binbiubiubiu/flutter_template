import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/PickerLocalizationsDelegate.dart';
import './pages/login/login_page.dart';
import 'package:flutter_template/utils/vw_util.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './route/application.dart';
import './route/routes.dart';
import './state/i18n_state.dart';
import './state/pkg_state.dart';
import './style/theme.dart';
import './generated/i18n.dart';

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
      theme: defaultTheme,
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
      home: ScreenBuilder(
        child: LoginPage(),
      ),
    );
  }
}
