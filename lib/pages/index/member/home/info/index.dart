import 'package:flutter/material.dart';
import 'package:flutter_app02/pages/index/member/home/info/comtent.dart';
import 'package:flutter_app02/pages/index/member/home/info/data.dart';

class Info extends StatelessWidget {
  final List<InfoItem> dataList;
  final bool showTitle;
  const Info({Key key, this.dataList = infoData, this.showTitle = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          showTitle
              ? Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "最新资讯",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                )
              : Container(),
          Column(
            children: this.dataList.map((item) => InfoComtent(item)).toList(),
          )
        ],
      ),
    );
  }
}
