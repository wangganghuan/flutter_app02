//输入框
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  //头部
  final String label;
  //内容部分
  final Widget Function(BuildContext contex) contentBuilder;
  final Widget suffix;
  //尾部内容
  final String suffixText;
  //占位符内容
  final String hinText;
  final ValueChanged onChanged;
  //输入框内容
  final TextEditingController controller;

  const CommonFormItem(
      {Key key,
      this.label,
      this.contentBuilder,
      this.suffix,
      this.suffixText,
      this.hinText,
      this.onChanged,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1.0, color: Theme.of(context).dividerColor))),
      child: Row(
        children: <Widget>[
          //头部
          Container(
            width: 100,
            child: Text(
              label,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // 输入框或者选择框
          Expanded(
            child: contentBuilder != null
                ? contentBuilder(context)
                : TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        hintText: hinText, border: InputBorder.none),
                  ),
          ),
          //尾部
          if (suffix != null)
            suffix,
          if (suffix == null && suffixText != null)
            Text(suffixText)
        ],
      ),
    );
  }
}
