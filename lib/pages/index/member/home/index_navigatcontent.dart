//首页----数据轮播图下面内容
import 'package:flutter/material.dart';

class IndexNavigatorItem {
  final String title;
  final String imageUri;
  final Function(BuildContext context) onTap;
  IndexNavigatorItem(this.title, this.imageUri, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem("整租", "images/home_index_1.png", (BuildContext context) {
    Navigator.of(context).pushNamed("/entiretenancy");
  }),
  IndexNavigatorItem("合租", "images/home_index_2.png", (BuildContext context) {
    Navigator.of(context).pushNamed("/jointtenancy");
  }),
  IndexNavigatorItem("地图找房", "images/home_index_3.png", (BuildContext context) {
    Navigator.of(context).pushNamed("/apartmenthunting");
  }),
  IndexNavigatorItem("去出租", "images/home_index_4.png", (BuildContext context) {
    Navigator.of(context).pushNamed("/rentout");
  })
];
