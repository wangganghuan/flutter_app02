//我的  格子数据
import 'package:flutter/cupertino.dart';

class FunctionButtonItem {
  final String imageUrl;
  final String title;
  final Function onTapHandle;

  FunctionButtonItem(this.imageUrl, this.title, this.onTapHandle);
}

final List<FunctionButtonItem> gridList = [
  FunctionButtonItem("images/home_profile_record.png", "看房记录", null),
  FunctionButtonItem("images/home_profile_order.png", "我的订单", null),
  FunctionButtonItem("images/home_profile_favor.png", "我的收藏", null),
  FunctionButtonItem("images/home_profile_id.png", "身份认证", null),
  FunctionButtonItem("images/home_profile_message.png", "联系我们", null),
  FunctionButtonItem("images/home_profile_contract.png", "电子合同", null),
  FunctionButtonItem("images/home_profile_house.png", "房屋管理", (context) {
    bool isLogin = true;
    if (isLogin) {
      Navigator.pushNamed(context, "/buildingmanagement");
      return;
    }
    Navigator.pushNamed(context, "/log");
  }),
  FunctionButtonItem("images/home_profile_wallet.png", "钱包", null),
];
