//抽屉
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_title.dart';
import 'package:flutter_app02/pages/index/member/search/filter/data.dart';
import 'package:flutter_app02/pages/index/member/search/filter/scopoed_model_helper.dart';
import 'package:flutter_app02/scoped_model/room_filter.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataList = ScopedModelHelper.getModel<FilterBarModel>(context).dataList;
    roomTypeList = dataList["roomTypeList"];
    orientedList = dataList["orientedList"];
    floorList = dataList["floorList"];
    var selectedIds = ScopedModelHelper.getModel<FilterBarModel>(context)
        .selectedList
        .toList();
    _onChange(String val) {
      ScopedModelHelper.getModel<FilterBarModel>(context)
          .selectedListToggleItem(val);
    }

    ;
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            CommonTitle("户型"),
            FilterDrawerItem(
              list: roomTypeList,
              selectedIds: selectedIds,
              onChang: _onChange,
            ),
            CommonTitle("朝向"),
            FilterDrawerItem(
              list: orientedList,
              selectedIds: selectedIds,
              onChang: _onChange,
            ),
            CommonTitle("楼层"),
            FilterDrawerItem(
              list: floorList,
              selectedIds: selectedIds,
              onChang: _onChange,
            ),
          ],
        ),
      ),
    );
  }
}

class FilterDrawerItem extends StatelessWidget {
  final List<GeneralType> list;
  final List<String> selectedIds;
  final ValueChanged<String> onChang;
  const FilterDrawerItem({
    Key key,
    this.list,
    this.selectedIds,
    this.onChang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10,
        children: list.map((item) {
          var isActive = selectedIds.contains(item.id);
          return GestureDetector(
            onTap: () {
              if (onChang != null) {
                onChang(item.id);
              }
            },
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  color: isActive ? Colors.green : Colors.white,
                  border: Border.all(width: 1.0, color: Colors.green)),
              alignment: Alignment.center,
              child: Text(
                item.name,
                style: TextStyle(color: isActive ? Colors.white : Colors.green),
              ),
            ),
            behavior: HitTestBehavior.translucent,
          );
        }).toList(),
      ),
    );
  }
}
