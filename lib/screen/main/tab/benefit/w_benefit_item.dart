import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          benefit.imagePath,
          width: 50,
          height: 50,
        ),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subtitle.text.size(18).make(),
            height20,
            benefit.title.text
                .color(context.appColors.blueText)
                .size(16)
                .make(),
          ],
        ).pSymmetric(h: 20),
      ],
    );
  }
}
