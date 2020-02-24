//搜索
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/index.dart';
import 'package:flutter_app02/pages/index/member/search/filter/filter_drawer.dart';
import 'package:flutter_app02/pages/index/member/search/filter/index.dart';
import 'package:flutter_app02/pages/index/member/search/tab_search/content.dart';
import 'package:flutter_app02/pages/index/member/search/tab_search/dataList.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //抽屉
      endDrawer: FilterDrawer(),
      appBar: AppBar(
        actions: <Widget>[Container()],
        elevation: 0,
        title: ConmminInput(
          showLoaction: true,
          showMap: true,
          onSearch: () {
            Navigator.of(context).pushNamed("/log");
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () {},
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: FilterBar(
                  onChange: (data) {},
                ),
                height: 40,
              ),
              Expanded(
                child: ListView(
                  children:
                      dataList.map((item) => SearchContent(item)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
