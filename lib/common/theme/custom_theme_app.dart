import 'package:fast_app_base/app.dart';
import 'package:flutter/material.dart';

import '../data/preference/prefs.dart';
import 'custom_theme.dart';
import 'custom_theme_holder.dart';
import 'theme_util.dart';

class CustomThemeApp extends StatefulWidget {
  final Widget child;

  const CustomThemeApp({Key? key, required this.child}) : super(key: key);

  @override
  State<CustomThemeApp> createState() => _CustomThemeAppState();
}

class _CustomThemeAppState extends State<CustomThemeApp> {
  late CustomTheme theme = savedTheme ?? defaultTheme ?? systemTheme;
  final CustomTheme? defaultTheme = App.defaultTheme;

  void handleChangeTheme(CustomTheme theme) {
    setState(() => this.theme = theme);
  }

  @override
  Widget build(BuildContext context) {
    return CustomThemeHolder(
      changeTheme: handleChangeTheme,
      theme: theme,
      child: widget.child,
    );
  }

  CustomTheme? get savedTheme => Prefs.appTheme.get();

  CustomTheme get systemTheme {
    switch (ThemeUtil.systemBrightness) {
      case Brightness.dark:
        return CustomTheme.dark;
      case Brightness.light:
        return CustomTheme.light;
    }
  }
}