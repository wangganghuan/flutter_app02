//房屋管理
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_float_button.dart';

import 'package:flutter_app02/pages/index/member/home/info/index.dart';

class BuildingManagementIndex extends StatelessWidget {
  const BuildingManagementIndex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CommonFloatButton("发布房源", () {
            Navigator.pushNamed(context, "/roomadd");
          }),
          appBar: AppBar(
            title: Text("房屋管理"),
            bottom: (TabBar(
              tabs: <Widget>[
                Tab(
                  text: ("已租"),
                ),
                Tab(
                  text: ("空置"),
                )
              ],
            )),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Info(showTitle: false),
                padding: EdgeInsets.only(top: 10),
              ),
              Container(
                child: Info(showTitle: false),
                padding: EdgeInsets.only(top: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
