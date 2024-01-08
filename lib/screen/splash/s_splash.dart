import 'package:after_layout/after_layout.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // TODO: implement afterFirstLayout
    delay(() {
      Nav.clearAllAndPush(
        const MainScreen(),
      );
    }, 1500.ms);
  }

  @override
  void initState() {
    // 값만 변경 가능, 화면적인 수정은 오류남 다른 방법은 with AfterLayoutMixin

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/image/splash/splash.png',
        width: 192,
        height: 192,
      ),
    );
  }
}
