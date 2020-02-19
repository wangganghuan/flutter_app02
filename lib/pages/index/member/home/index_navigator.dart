//轮播图下面内容
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';
import './index_navigatcontent.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItemList
            .map((item) => InkWell(
                  onTap: () {
                    item.onTap(context);
                  },
                  child: Column(
                    children: <Widget>[
                      CommonImage(
                        item.imageUri,
                        fit: BoxFit.fill,
                        width: 47.5,
                      ),
                      Text(
                        item.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
