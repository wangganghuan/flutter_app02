//底部弹框选择
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommonPicker {
  static Future<int> showPicker(
      {BuildContext context,
      List<String> options,
      int value,
      double height = 300.0}) {
    return showCupertinoModalPopup<int>(
        context: context,
        builder: (BuildContext context) {
          var textStyle =
              TextStyle(color: Colors.green, fontWeight: FontWeight.w600);
          var controller = FixedExtentScrollController(initialItem: value);
          return Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            height: height,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "取消",
                          style: textStyle,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      FlatButton(
                        child: Text(
                          "确定",
                          style: textStyle,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(controller.selectedItem);
                        },
                      )
                    ],
                  ),
                ),
                //内容部分
                Expanded(
                  child: CupertinoPicker(
                    //当前选中的第几个
                    scrollController: controller,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    itemExtent: 32.0,
                    onSelectedItemChanged: (value) {},
                    children: options.map((tiem) => Text(tiem)).toList(),
                  ),
                )
              ],
            ),
          );
        });
  }
}
