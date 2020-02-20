//资讯
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/index.dart';
import 'package:flutter_app02/pages/index/member/home/info/index.dart';

class ShoppingPage extends StatefulWidget {
  ShoppingPage({Key key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ConmminInput(
            onSearch: () {
              Navigator.of(context).pushNamed("/search");
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 10),
          children: <Widget>[
            Container(
              child: Info(showTitle: false),
            ),
            Container(
              child: Info(showTitle: false),
            ),
            Container(
              child: Info(showTitle: false),
            ),
            Container(
              child: Info(showTitle: false),
            ),
          ],
        ));
  }
}
