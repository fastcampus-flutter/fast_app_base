import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class PointButton extends StatelessWidget {
  final int point;

  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "내 포인트".text.color(context.appColors.lessImportant).gray100.bold.make(),
        emptyExpanded,
        "$point 원".text.white.bold.make(),
        width10,
        Arrow(
          color: context.appColors.lessImportant,
        ),
      ],
    );
  }
}
