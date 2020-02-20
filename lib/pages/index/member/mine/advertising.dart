import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';

class MineAdvertising extends StatelessWidget {
  const MineAdvertising({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
      child: CommonImage(
          "https://tva1.sinaimg.cn/large/006y8mN6ly1g6te62n8f4j30j603vgou.jpg"),
    );
  }
}
