//搜索--内容
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';
import 'package:flutter_app02/commonality/common_tag.dart';

import 'package:flutter_app02/pages/index/member/search/tab_search/dataList.dart';

var alignment = Alignment.topLeft;

class SearchContent extends StatelessWidget {
  final RoomListItemData data;
  const SearchContent(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: Row(
        children: <Widget>[
          CommonImage(
            data.imageUri,
            width: 132.5,
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  data.subTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Wrap(
                  children: data.tage.map((item) => CommonTag(item)).toList(),
                ),
                Text(
                  "${data.price}元/月",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
