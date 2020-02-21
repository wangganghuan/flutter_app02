import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';

const List<String> defautImages = [
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg",
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg",
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg"
];
var imageWidth = 750.0;
var imageHeight = 424.0;
var imageWidthHeightRatio = imageWidth / imageHeight;

class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChange;
  CommonImagePicker({Key key, this.onChange}) : super(key: key);

  @override
  _CommonImagePickerState createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 10 * 4) / 3;
    var height = width / imageWidthHeightRatio;
    //图片点击添加图片
    Widget addButton = Container(
      width: width,
      height: height,
      color: Colors.grey,
      child: Center(
        child: Text("+",
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w100)),
      ),
    );

    Widget wrapper(String imageUri) {
      return CommonImage(
        imageUri,
        width: width,
        height: height,
        fit: BoxFit.fill,
      );
    }

    List<Widget> list = defautImages.map((item) => wrapper(item)).toList()
      ..add(addButton);

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        children: list,
      ),
    );
  }
}
