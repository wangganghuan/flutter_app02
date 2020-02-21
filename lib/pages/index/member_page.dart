//我的
import 'package:flutter/material.dart';
import 'package:flutter_app02/pages/index/member/home/info/index.dart';
import 'package:flutter_app02/pages/index/member/mine/advertising.dart';
import 'package:flutter_app02/pages/index/member/mine/function_button_tem/grid.dart';

import 'package:flutter_app02/pages/index/member/mine/header.dart';

class MemberPage extends StatefulWidget {
  MemberPage({Key key}) : super(key: key);

  @override
  _MemberPageState createState() => _MemberPageState();
}

Widget _ontLoginBuilder(BuildContext context) {}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("我的"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/setting");
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            //头像
            MineHeader(),
            //格子
            MineGrid(),
            //广告
            MineAdvertising(),
            //资讯
            Info(showTitle: true),
          ],
        ),
      ),
    );
  }
}
