//我的---格子内容
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';
import 'package:flutter_app02/pages/index/member/mine/function_button_tem/dataList.dart';

class MineComtent extends StatelessWidget {
  final FunctionButtonItem data;
  const MineComtent(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.33,
      child: GestureDetector(
        onTap: () {
          if (data.onTapHandle != null) data.onTapHandle(context);
        },
        child: Column(
          children: <Widget>[
            Container(
              child: CommonImage(data.imageUrl),
              padding: EdgeInsets.only(top: 20, bottom: 20),
            ),
            Text(
              data.title,
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
