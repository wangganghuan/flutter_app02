//发布房源
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_float_button.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_formltem.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_radio_formitem.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_select_form_item.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_title.dart';
import 'package:flutter_app02/commonality/common_input/issue/image_picker/common_image_picker.dart';

class RoomAdd extends StatefulWidget {
  RoomAdd({Key key}) : super(key: key);

  @override
  _RoomAddState createState() => _RoomAddState();
}

class _RoomAddState extends State<RoomAdd> {
  //租房方式
  int rentType = 0;
  //装修
  int decorationType = 0;
  //户型
  int roomType = 0;
  //楼层
  int floor = 0;
  //朝向
  int oriented = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatButton("提交", () {}),
        appBar: AppBar(
          title: Text("发布房源"),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              CommonTitle("房源信息"),
              CommonFormItem(
                contentBuilder: (context) {
                  return Container(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "请选择小区",
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                    ),
                  );
                },
                label: "小区",
              ),
              CommonFormItem(
                label: "租金",
                hinText: "请输入租金",
                suffixText: "元/月",
                controller: TextEditingController(),
              ),
              CommonFormItem(
                label: "大小",
                hinText: "请输入房屋大小",
                suffixText: "平方米",
                controller: TextEditingController(),
              ),
              CommonRadioFormitem(
                  label: "租房方式",
                  value: rentType,
                  options: ["合租", "单租"],
                  onChange: (index) {
                    setState(() {
                      rentType = index;
                    });
                  }),
              CommonSelectFormItem(
                label: "户型",
                value: roomType,
                onChange: (val) {
                  setState(() {
                    roomType = val;
                  });
                },
                options: ["一室", "二室", "三室", "四室"],
              ),
              CommonSelectFormItem(
                label: "楼层",
                value: floor,
                onChange: (val) {
                  setState(() {
                    floor = val;
                  });
                },
                options: [
                  "高层楼",
                  "中楼层",
                  "低楼层",
                ],
              ),
              CommonSelectFormItem(
                label: "朝向",
                value: oriented,
                onChange: (val) {
                  setState(() {
                    oriented = val;
                  });
                },
                options: ["东", "南", "西", "北"],
              ),
              CommonRadioFormitem(
                  label: "装修",
                  value: decorationType,
                  options: ["精装", "简装"],
                  onChange: (index) {
                    setState(() {
                      decorationType = index;
                    });
                  }),
              CommonTitle("房屋头像"),
              CommonImagePicker(onChange: (List<File> files) {}),
              CommonTitle("房屋标题"),
              CommonTitle("房屋配置"),
              CommonTitle("房屋描述")
            ],
          ),
        ),
      ),
    );
  }
}
