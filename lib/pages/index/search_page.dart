//搜索
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/index.dart';
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
      appBar: AppBar(
        title: ConmminInput(
          showLoaction: true,
          showMap: true,
          onSearch: () {
            Navigator.of(context).pushNamed("/search");
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text("filterBar"),
              height: 40,
            ),
            Expanded(
              child: ListView(
                children: dataList.map((item) => SearchContent(item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
