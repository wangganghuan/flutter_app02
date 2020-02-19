import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';

import 'package:flutter_app02/pages/index/member/search/tab_search/dataList.dart';

var alignment = Alignment.centerLeft;

class SearchContent extends StatelessWidget {
  final RoomListItemData data;
  const SearchContent(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      height: 100,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CommonImage(
              data.imageUri,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: alignment,
                  child: Text(
                    data.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  alignment: alignment,
                  child: Text(
                    data.subTitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Row(
                  children: data.tage
                      .map((value) => Container(
                            alignment: alignment,
                            child: Text("${value},"),
                          ))
                      .toList(),
                ),
                Container(
                  alignment: alignment,
                  child: Text(
                    "${data.price}元/月",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
