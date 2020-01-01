import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class PkgState {
  PackageInfo pkgInfo;

  PkgState() {
    init();
  }

  init() async {
    pkgInfo = await PackageInfo.fromPlatform();
  }

  String get appName => pkgInfo?.appName ?? "";

  String get packageName => pkgInfo?.packageName ?? "";

  String get version => pkgInfo?.version ?? "";

  String get buildNumber => pkgInfo?.buildNumber ?? "";
}
