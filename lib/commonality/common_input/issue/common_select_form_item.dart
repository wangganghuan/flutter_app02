//

import "package:flutter/material.dart";
import 'package:flutter_app02/commonality/common_input/issue/common_formltem.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_picker/index.dart';

class CommonSelectFormItem extends StatelessWidget {
  final String label;
  final int value;
  final List<String> options;
  final Function(int) onChange;
  const CommonSelectFormItem(
      {Key key, this.label, this.value, this.options, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      //头部
      label: label,
      //中间组件
      contentBuilder: (context) {
        return GestureDetector(
          //点击空白区域 也可以执行点击事件
          behavior: HitTestBehavior.translucent,
          //打开底部弹框
          onTap: () {
            var result = CommonPicker.showPicker(
                context: context, options: options, value: value);
            result.then((selectedValue) {
              if (value != selectedValue &&
                  selectedValue != null &&
                  onChange != null) {
                onChange(selectedValue);
              }
            });
          },
          child: Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //显示内容
                Text(
                  options[value],
                  style: TextStyle(fontSize: 16.0),
                ),
                //图标
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
        );
      },
    );
  }
}
