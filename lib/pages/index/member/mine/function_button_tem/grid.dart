//我的 ---格子布局

import 'package:flutter/material.dart';
import 'package:flutter_app02/pages/index/member/mine/function_button_tem/comtent.dart';
import 'package:flutter_app02/pages/index/member/mine/function_button_tem/dataList.dart';

class MineGrid extends StatelessWidget {
  const MineGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 1.0,
        runSpacing: 1.0,
        children: gridList.map((item) => MineComtent(item)).toList(),
      ),
    );
  }
}
