//小元格
import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color color;

  final Color backgroundColor;

  const CommonTag.origin(this.title,
      {Key key, this.color = Colors.black, this.backgroundColor = Colors.blue})
      : super(key: key);

  factory CommonTag(String title) {
    switch (title) {
      case "近地铁":
        return CommonTag.origin(title,
            color: Colors.red, backgroundColor: Colors.red[50]);
      case "新上":
        return CommonTag.origin(title,
            color: Colors.black, backgroundColor: Colors.green);
      default:
        return CommonTag.origin(title);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.0),
      padding: EdgeInsets.only(left: 4.0, right: 4.0, bottom: 2.0),
      decoration: BoxDecoration(
          color: this.backgroundColor,
          borderRadius: BorderRadius.circular(8.0)),
      child: Text(
        this.title,
        style: TextStyle(fontSize: 10.0, color: this.color),
      ),
    );
  }
}
