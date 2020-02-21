//设置
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_toast.dart';

class MineSetting extends StatelessWidget {
  const MineSetting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("设置"),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                child: Text("退出登陆"),
                onPressed: () {
                  CommonToast.showToast("已退出登陆");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
