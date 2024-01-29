import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'common/data/preference/app_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  final bindings = WidgetsFlutterBinding.ensureInitialized();
  // 기존에 네이티브 스플래시 화면 보전, 두번 로딩되는 현상 때문에, 나중에 지워야됨
  FlutterNativeSplash.preserve(widgetsBinding: bindings);
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: const App()));
}
