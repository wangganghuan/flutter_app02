//房屋推荐布局
import 'package:flutter/material.dart';
import 'package:flutter_app02/pages/index/member/home/index_recommon_item_widget.dart';
import 'index_recommondcontent.dart';

class IndexRecommond extends StatelessWidget {
  final List<IndexRecommondContent> dataList;
  const IndexRecommond({Key key, this.dataList = indexRecommendDta})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "房屋推荐",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Text("更多", style: TextStyle(color: Colors.black54)),
                )
              ],
            ),
          ),
          Wrap(
            //上下
            runSpacing: 10,
            //左右
            spacing: 10,
            children: indexRecommendDta
                .map((item) => IndexRecommonItemWidget(item))
                .toList(),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
