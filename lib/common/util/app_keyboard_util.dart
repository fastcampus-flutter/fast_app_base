import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:keyboard_utils_plugin/keyboard_listener.dart' as k;
import 'package:keyboard_utils_plugin/keyboard_utils.dart';

class AppKeyboardUtil {
  static void hide(BuildContext context) {
    FocusScope.of(context).unfocus();
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void show(BuildContext context, FocusNode node) {
    FocusScope.of(context).unfocus();
    Timer(const Duration(milliseconds: 1), () {
      FocusScope.of(context).requestFocus(node);
    });
  }
}

mixin KeyboardDetector<T extends StatefulWidget> on State<T> {
  final keyboardUtils = KeyboardUtils();
  int? subscribingId;
  bool isKeyboardOn = false;
  final bool useDefaultKeyboardDetectorInit = true;

  @override
  void initState() {
    if (useDefaultKeyboardDetectorInit) {
      initKeyboardDetector();
    }
    super.initState();
  }

  @override
  void dispose() {
    disposeKeyboardDetector();
    super.dispose();
  }

  initKeyboardDetector(
      {final Function(double)? willShowKeyboard,
      final Function()? willHideKeyboard}) {
    subscribingId = keyboardUtils.add(
        listener: k.KeyboardListener(willHideKeyboard: () {
      if (willHideKeyboard != null) {
        willHideKeyboard();
      }
      setState(() {
        isKeyboardOn = false;
      });
    }, willShowKeyboard: (value) {
      if (willShowKeyboard != null) {
        willShowKeyboard(value);
      }
      setState(() {
        isKeyboardOn = true;
      });
    }));
  }

  disposeKeyboardDetector() {
    keyboardUtils.unsubscribeListener(subscribingId: subscribingId);
  }
}
