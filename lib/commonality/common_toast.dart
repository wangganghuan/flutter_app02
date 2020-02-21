//弹出框
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommonToast {
  CommonToast(String s, Null Function() param1);

  static showToast(String msg) {
    Fluttertoast.showToast(
        //提示内容
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        //显示的位置
        gravity: ToastGravity.CENTER,
        //时间
        timeInSecForIos: 1,
        //背景颜色
        backgroundColor: Colors.black,
        //文字颜色
        textColor: Colors.red,
        //字体大小
        fontSize: 20.0);
  }
}
