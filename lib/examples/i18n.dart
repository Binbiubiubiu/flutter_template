import 'package:flutter/material.dart';
import 'package:flutter_template/generated/i18n.dart';
import 'package:flutter_template/state/i18n_state.dart';
import 'package:provider/provider.dart';

class I18nExample extends StatefulWidget {
  @override
  _I18nExampleState createState() => _I18nExampleState();
}

const buttonText = {
  "en": "中文",
  "中文": "en",
};

const i18nOptions = {
  "en": "zh",
  "中文": "en",
};

class _I18nExampleState extends State<I18nExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Locale option = Locale(i18nOptions[S.of(context).lang], '');
          Provider.of<I18nState>(context).updateLocale(option);
        },
        child: Text(buttonText[S.of(context).lang]),
      ),
      body: Container(
        child: Center(
          child: Text(S.of(context).lang),
        ),
      ),
    );
  }
}
