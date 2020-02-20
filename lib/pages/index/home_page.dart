//首页

import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/index.dart';
import 'package:flutter_app02/pages/index/member/home/index_recommond.dart';
import 'package:flutter_app02/pages/index/member/home/info/index.dart';
import '../../commonality/commonality_slideshow.dart';
import '../index/member/home/index_navigator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ConmminInput(
            showLoaction: true,
            showMap: true,
            onSearch: () {
              Navigator.of(context).pushNamed("/log");
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                child: CommonSwiper(),
              ),
              Container(
                child: IndexNavigator(),
              ),
              Container(
                child: IndexRecommond(),
              ),
              Container(
                child: Info(
                  showTitle: true,
                ),
              )
            ],
          ),
        ));
  }
}
