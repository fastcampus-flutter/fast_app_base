import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {

  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackGround,
      child: Row(
        children: [
          width10,
          Image.asset(
            '$basePath/icon/toss.png',
            height: 38,
          ),
          emptyExpanded,
          width10,
          Image.asset(
            '$basePath/icon/map_point.png',
            height: 38,
          ),
          width10,
          Tap(
            onTap: (){
              setState(() => _showRedDot = !_showRedDot);
            },
            child: Stack(
              children: [
                Image.asset(
                  '$basePath/icon/notification.png',
                  height: 38,
                ),
                if(_showRedDot)
                  // 스택의 모양을 유지하면서 점을 배치
                  Positioned.fill(
                    child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
