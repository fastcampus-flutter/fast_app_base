import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/round_button_theme.dart';
import '../../../../common/widget/w_round_button.dart';

class StockFragment extends StatelessWidget {
  final bool isShowBackButton;

  const StockFragment({
    Key? key,
    this.isShowBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isShowBackButton) const BackButton(),
            Expanded(
              child: Container(
                color: Colors.green.withOpacity(0.2),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(),
                      RoundButton(
                        text: '즐겨찾기 화면 띄우기',
                        onTap: () => Nav.push(
                            const StockFragment(isShowBackButton: true),
                            context: context),
                        theme: RoundButtonTheme.blue,
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
