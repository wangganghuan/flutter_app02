import 'dart:io';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

const List<String> defautImages = [
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg",
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg",
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg"
];
var imageWidth = 750.0;
var imageHeight = 424.0;
var imageWidthHeightRatio = imageWidth / imageHeight;

class CommonImagePicker extends StatefulWidget {
  //点击事件
  final ValueChanged<List<File>> onChange;
  CommonImagePicker({Key key, this.onChange}) : super(key: key);

  @override
  _CommonImagePickerState createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  @override
  List<File> files = [];
  Widget build(BuildContext context) {
    _getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      }
      setState(() {
        files = files..add(image);
      });
      if (widget.onChange != null) {
        widget.onChange(files);
      }
    }

    var width = (MediaQuery.of(context).size.width - 10 * 4) / 3;
    var height = width / imageWidthHeightRatio;
    //图片点击添加图片
    Widget addButton = GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(color: Colors.grey),
          child: Center(
            child: Text("+",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w100)),
          ),
        ),
        onTap: () {
          _getImage();
        });

    Widget wrapper(File file) {
      return Stack(
        //超出部分显示
        overflow: Overflow.visible,
        children: <Widget>[
          Image.file(
            file,
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
          Positioned(
            right: -20.0,
            top: -20.0,
            child: IconButton(
              icon: Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  files = files..remove(file);
                  if (widget.onChange != null) {
                    widget.onChange(files);
                  }
                });
              },
            ),
          )
        ],
      );
    }

    List<Widget> list = files.map((item) => wrapper(item)).toList()
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
