//搜索头部
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_picker/index.dart';
import 'package:flutter_app02/pages/index/member/search/filter/item.dart';
import 'package:flutter_app02/pages/index/member/search/filter/scopoed_model_helper.dart';
import 'package:flutter_app02/pages/index/member/search/tab_search/dataList.dart';
import 'package:flutter_app02/scoped_model/room_filter.dart';
import 'package:scoped_model/scoped_model.dart';

import 'data.dart';

class FilterBar extends StatefulWidget {
  //添加点击事件
  final ValueChanged<FilterBarResult> onChange;
  FilterBar({Key key, this.onChange}) : super(key: key);

  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  bool ifAreaActive = false;
  bool ifRentTypeActive = false;
  bool ifPriceActive = false;
  bool ifFilterActive = false;
  String areaId = "";
  String renTtypeId = "";
  String priceId = "";
  List<String> filterId = [];
  _onChange() {
    var selectedList =
        ScopedModelHelper.getModel<FilterBarModel>(context).selectedList;
    if (widget.onChange != null) {
      widget.onChange(FilterBarResult(
          areaId: areaId,
          priceId: priceId,
          rentTypeId: renTtypeId,
          moreIds: selectedList.toList()));
    }
  }

//区域
  _onAreaChange(context) {
    setState(() {
      this.ifAreaActive = !this.ifAreaActive;
    });

    var result = CommonPicker.showPicker(
        context: context,
        value: 0,
        options: areaList.map((item) => item.name).toList());
    result.then((index) {
      if (index == null) return;
      setState(() {
        areaId = areaList[index].id;
      });
      _onChange();
    }).whenComplete(() {
      setState(() {
        ifAreaActive = false;
      });
    });
  }

//方式
  _onRentType(context) {
    setState(() {
      this.ifRentTypeActive = !this.ifRentTypeActive;
    });
    var result = CommonPicker.showPicker(
        context: context,
        value: 0,
        options: rentTypeList.map((item) => item.name).toList());
    result.then((index) {
      if (index == null) return;
      setState(() {
        renTtypeId = rentTypeList[index].id;
      });
      _onChange();
    }).whenComplete(() {
      setState(() {
        ifRentTypeActive = false;
      });
    });
  }

//租金
  _onPrice(context) {
    setState(() {
      this.ifPriceActive = !this.ifPriceActive;
    });
    var result = CommonPicker.showPicker(
        context: context,
        value: 0,
        options: priceList.map((item) => item.name).toList());
    result.then((index) {
      if (index == null) return;
      setState(() {
        areaId = priceList[index].id;
      });
      _onChange();
    }).whenComplete(() {
      setState(() {
        ifPriceActive = false;
      });
    });
  }

//筛选
  _onFilter(context) {
    Scaffold.of(context).openEndDrawer();
  }

  _getData() {
    Map<String, List<GeneralType>> dataList = Map<String, List<GeneralType>>();
    dataList["roomTypeList"] = roomTypeList;
    dataList["orientedList"] = orientedList;
    dataList["floorList"] = floorList;
    ScopedModelHelper.getModel<FilterBarModel>(context).dataList = dataList;
  }

  @override
  void initState() {
    Timer.run(_getData);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _onChange();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.0,
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black12, width: 1.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Item(
            title: "区域",
            isActive: ifAreaActive,
            onTap: _onAreaChange,
          ),
          Item(
            title: "方式",
            isActive: ifRentTypeActive,
            onTap: _onRentType,
          ),
          Item(
            title: "租金",
            isActive: ifPriceActive,
            onTap: _onPrice,
          ),
          Item(
            title: "筛选",
            isActive: ifFilterActive,
            onTap: _onFilter,
          )
        ],
      ),
    );
  }
}
