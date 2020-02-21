//单选按钮
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_input/issue/common_formltem.dart';

class CommonRadioFormitem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int value;
  final ValueChanged<int> onChange;
  const CommonRadioFormitem(
      {Key key, this.label, this.options, this.value, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contentBuilder: (context) {
        return Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // List.generate方法可以返回索引
          children: List.generate(
              //需要的长度
              options.length,
              (index) => Row(
                    children: <Widget>[
                      Radio(
                        value: index,
                        groupValue: value,
                        onChanged: onChange,
                      ),
                      Text(options[index])
                    ],
                  )).toList(),
        ));
      },
    );
  }
}
