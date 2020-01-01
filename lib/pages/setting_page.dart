import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:flutter_template/generated/i18n.dart';
import 'package:flutter_template/state/i18n_state.dart';
import 'package:flutter_template/state/pkg_state.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
//    final pkg = Provider.of<PkgState>(context);
    var localeName = Provider.of<I18nState>(context).localeName;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: null,
        title: Text("app版本信息"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
//            ListTile(
//              dense: true,
//              leading: Icon(Icons.settings),
//              title: Text("App名称"),
//              trailing: Text(pkg.appName),
//            ),
//            Divider(),
//            ListTile(
//              dense: true,
//              leading: Icon(Icons.settings),
//              title: Text("版本"),
//              trailing: Text(pkg.version),
//            ),
//            Divider(),
            ListTile(
              dense: true,
              onTap: () {
                showPicker(context);
              },
              leading: Icon(Icons.settings),
              title: Text("语言"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(localeName),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showPicker(BuildContext context) {
    var pickerData = ["简体中文", "English"];
    var langOps = ["zh", "en"];

    var selected =
        pickerData.indexOf(Provider.of<I18nState>(context).localeName);

    Picker picker = new Picker(
        selecteds: [selected < 0 ? 0 : selected],
        adapter: PickerDataAdapter<String>(pickerdata: pickerData),
        changeToFirst: true,
        textAlign: TextAlign.left,
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {
//          print(langOps[0]);
//          print(picker.getSelectedValues()[0]);

          Provider.of<I18nState>(context).updateLocale(
            Locale(langOps[value[0]], ""),
            picker.getSelectedValues()[0],
          );
        });
    picker.show(_scaffoldKey.currentState);
  }
}
