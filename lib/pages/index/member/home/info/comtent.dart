//资讯---内容
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';
import 'package:flutter_app02/pages/index/member/home/info/data.dart';

var textStyle = TextStyle(color: Colors.black54);

class InfoComtent extends StatelessWidget {
  final InfoItem data;
  const InfoComtent(
    this.data, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print(11);
            },
            child: Container(
              child: CommonImage(
                data.imageUri,
                width: 120,
                height: 90.0,
              ),
              padding: EdgeInsets.only(right: 10),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    data.title,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        data.source,
                        style: textStyle,
                      ),
                    ),
                    Container(
                      child: Text(data.time, style: textStyle),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
