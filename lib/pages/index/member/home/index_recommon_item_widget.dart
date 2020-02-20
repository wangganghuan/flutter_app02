//首页---房屋推荐--内容
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';
import 'package:flutter_app02/pages/index/member/home/index_recommondcontent.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600);

class IndexRecommonItemWidget extends StatelessWidget {
  final IndexRecommondContent data;
  const IndexRecommonItemWidget(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  data.title,
                  style: textStyle,
                ),
                Text(data.gubTitle, style: textStyle)
              ],
            ),
            CommonImage(
              data.imageRUri,
              width: 55.0,
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
