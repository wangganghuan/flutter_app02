//房屋详情
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_title.dart';
import 'package:flutter_app02/commonality/common_tag.dart';
import 'package:flutter_app02/commonality/commonality_slideshow.dart';
import 'package:flutter_app02/pages/index/member/home/info/index.dart';
import 'package:flutter_app02/pages/index/member/mine/building_management/room_appliance.dart';
import 'package:flutter_app02/pages/index/member/search/roomDetailData.dart';
import 'package:share/share.dart';

class RoomDetail extends StatefulWidget {
  //传参
  final arguments;

  RoomDetail({Key key, this.arguments}) : super(key: key);

  @override
  _RoomDetailState createState() => _RoomDetailState();
}

class _RoomDetailState extends State<RoomDetail> {
  bool isLike = false;
  bool showAllText = false;
  RoomDetailData data;
  @override
  void initState() {
    super.initState();
    data = defaultData;
  }

  @override
  Widget build(BuildContext context) {
    if (data.title == null) return Container();
    bool showTextTool = data.subTitle.length > 100;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(data.title),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Share.share("https://www.xunleiyy.com/movie/id140883.html");
              },
              icon: Icon(Icons.share),
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                CommonSwiper(images: data.houseImgs),
                Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          data.price.toString(),
                          style: TextStyle(fontSize: 20.0, color: Colors.pink),
                        ),
                        Text("元/月(押一付三)",
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.pink))
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 6.0, bottom: 6.0),
                  child: Wrap(
                    spacing: 4.0,
                    children: data.tags.map((item) => CommonTag(item)).toList(),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 10.0,
                  endIndent: 10.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 6.0, bottom: 6.0),
                  child: Wrap(
                    runSpacing: 20.0,
                    children: <Widget>[
                      BaseInfoItem("面积：${data.size}平米"),
                      BaseInfoItem("楼层：${data.floor}平米"),
                      BaseInfoItem("户型：${data.roomType}平米"),
                      BaseInfoItem("装修：${data.fitment}平米"),
                    ],
                  ),
                ),
                CommonTitle(data.title),
                CommonTitle("服务配置"),
                RoomApplicanList(
                  list: data.applicances,
                ),
                CommonTitle("房屋概况"),
                Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(data.subTitle ?? "战无房屋概况",
                            maxLines: showAllText ? null : 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showAllText = !showAllText;
                                  });
                                },
                                child: showTextTool
                                    ? Row(
                                        children: <Widget>[
                                          Text(showAllText ? "收起" : "展开"),
                                          Icon(showAllText
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down)
                                        ],
                                      )
                                    : Container()),
                            GestureDetector(
                              child: Text("举报"),
                            )
                          ],
                        )
                      ],
                    )),
                CommonTitle("猜你喜欢"),
                Info(),
                Container(
                  height: 100,
                )
              ],
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              height: 100,
              bottom: 0,
              child: Container(
                color: Colors.grey[200],
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isLike = !isLike;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 40,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                isLike ? Icons.star : Icons.star_border,
                                color: isLike ? Colors.green : Colors.black,
                              ),
                              Text(
                                isLike ? "已收藏" : "收藏",
                                style: TextStyle(fontSize: 12.0),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          child: Text(
                            "联系房东",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          alignment: Alignment.center,
                          height: 50.0,
                          child: Text(
                            "预约看房",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BaseInfoItem extends StatelessWidget {
  final String content;

  const BaseInfoItem(
    this.content, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(fontSize: 16.0),
      ),
      width: (MediaQuery.of(context).size.width - 3 * 10) / 2,
    );
  }
}
