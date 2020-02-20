//我的 ---头像
import 'package:flutter/material.dart';

//未登录
Widget _ontLoginBuilder(BuildContext context) {
  return Container(
    decoration: BoxDecoration(color: Colors.green),
    height: 95.0,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          width: 65.0,
          height: 65.0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbgbqv2nj30i20i2wen.jpg"),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "登陆/注册",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text("登陆后可以体验更多", style: TextStyle(color: Colors.white))
          ],
        )
      ],
    ),
  );
}

//登陆
Widget _logLoginBuilder(BuildContext context) {
  return Container(
    decoration: BoxDecoration(color: Colors.green),
    height: 95.0,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          width: 65.0,
          height: 65.0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbnovh8jj30hr0hrq3l.jpg"),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "已登陆用户名",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text("查看编辑个人资料", style: TextStyle(color: Colors.white))
          ],
        )
      ],
    ),
  );
}

class MineHeader extends StatelessWidget {
  const MineHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _logLoginBuilder(context) : _ontLoginBuilder(context);
  }
}
