//房屋配置 数据
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/common_check_button.dart';
import 'package:flutter_app02/commonality/common_input/config.dart';

class RoomApplianceItem {
  final String title;
  final int iconPoint;
  final bool isChenckd;

  const RoomApplianceItem(this.title, this.iconPoint, this.isChenckd);
}

const List<RoomApplianceItem> _dataList = [
  RoomApplianceItem("衣柜", 0xe918, false),
  RoomApplianceItem("洗衣机", 0xe917, false),
  RoomApplianceItem("空调", 0xe90d, false),
  RoomApplianceItem("天然气", 0xe90f, false),
  RoomApplianceItem("冰箱", 0xe907, false),
  RoomApplianceItem("暖气", 0xe910, false),
  RoomApplianceItem("电视", 0xe908, false),
  RoomApplianceItem("热水器", 0xe912, false),
  RoomApplianceItem("宽带", 0xe90e, false),
  RoomApplianceItem("沙发", 0xe913, false),
];

class RommAppliance extends StatefulWidget {
  final ValueChanged<List<RoomApplianceItem>> onChange;
  RommAppliance({Key key, this.onChange}) : super(key: key);

  @override
  _RommApplianceState createState() => _RommApplianceState();
}

class _RommApplianceState extends State<RommAppliance> {
  List<RoomApplianceItem> list = _dataList;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runSpacing: 30.0,
        children: list
            .map((tiem) => GestureDetector(
                  onTap: () {
                    setState(() {
                      list = list
                          .map((item) => item == tiem
                              ? RoomApplianceItem(
                                  tiem.title, tiem.iconPoint, !tiem.isChenckd)
                              : item)
                          .toList();
                      if (widget.onChange != null) {
                        widget.onChange(list);
                      }
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          IconData(
                            tiem.iconPoint,
                            fontFamily: Config.commonIcon,
                          ),
                          size: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(tiem.title),
                        ),
                        CommonCheckButton(tiem.isChenckd)
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class RoomApplicanList extends StatelessWidget {
  final List<String> list;
  const RoomApplicanList({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 是否存在内容
    var showList =
        _dataList.where((item) => list.contains(item.title)).toList();

    if (showList.length == 0) {
      return Container(
        padding: EdgeInsets.only(left: 10.0),
        child: Text("暂无房屋配置信息"),
      );
    }
    return Container(
      child: Wrap(
        runSpacing: 30.0,
        children: showList
            .map((tiem) => Container(
                  width: MediaQuery.of(context).size.width / 5,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        IconData(
                          tiem.iconPoint,
                          fontFamily: Config.commonIcon,
                        ),
                        size: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(tiem.title),
                      ),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
