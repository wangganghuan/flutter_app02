//搜索条
import 'package:flutter/material.dart';
import 'package:flutter_app02/commonality/common_lmage.dart';

class ConmminInput extends StatefulWidget {
  //展示位置按钮
  final bool showLoaction;
  //回退按钮函数
  final Function goBackCallback;
  //搜索框输入值
  final String inputValue;
  //搜索框默认值
  final String defaultIputValue;
  //取消按钮
  final Function onCancel;
  //展示地图按钮
  final bool showMap;
  //用户点击搜索框触发
  final Function onSearch;
  //用户输入搜索词后，点击键盘的搜索键触发
  final ValueChanged<String> onSearchSubit;
  ConmminInput(
      {Key key,
      this.showLoaction,
      this.goBackCallback,
      this.inputValue = "",
      this.defaultIputValue = "请输入搜索词",
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubit})
      : super(key: key);

  @override
  _ConmminInputState createState() => _ConmminInputState();
}

class _ConmminInputState extends State<ConmminInput> {
  String _searchWord = "";
  TextEditingController _controller;
  //失去焦点 1
  FocusNode _focus;
  //删除方法
  _onClean() {
    setState(() {
      _controller.clear();
      _searchWord = "";
    });
  }

  @override
  void initState() {
    //初始化_controller
    _controller = TextEditingController(text: widget.inputValue);
    //失去焦点 2 实例化
    _focus = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          //北京按钮
          if (widget.showLoaction != null)
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.room,
                      color: Colors.green,
                      size: 16,
                    ),
                    Text(
                      "北京",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),

          //返回按钮
          if (widget.goBackCallback != null)
            GestureDetector(
              onTap: widget.goBackCallback,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.black87,
                ),
              ),
            ),
          //输入框
          Expanded(
            child: Container(
              height: 36.0,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(17.0)),
              child: TextField(
                //失去焦点3
                focusNode: _focus,
                //搜索点击事件触发
                onTap: () {
                  if (widget.onSearchSubit == null) {
                    //失去焦点4
                    _focus.unfocus();
                  }
                  widget.onSearch();
                },
                //用户输入搜索词后，点击键盘的搜索键触发
                onSubmitted: widget.onSearchSubit,
                //键盘确定键 改变为搜索键
                textInputAction: TextInputAction.search,
                controller: _controller,
                //当输入框该变
                onChanged: (String value) {
                  setState(() {
                    _searchWord = value;
                  });
                },
                decoration: InputDecoration(

                    //输入框前面图标
                    icon: Padding(
                      child: Icon(
                        Icons.search,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.only(left: 8.0, top: 4),
                    ),
                    border: InputBorder.none,
                    hintText: widget.defaultIputValue,
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.only(top: 0, left: -10.0),
                    //输入框后面图标
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _onClean();
                      },
                      child: Icon(
                        Icons.clear,
                        size: 18.0,
                        color:
                            _searchWord == "" ? Colors.grey[200] : Colors.grey,
                      ),
                    )),
              ),
            ),
          ),
          //取消
          if (widget.onCancel != null)
            GestureDetector(
              onTap: widget.onCancel,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "取消",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          //地图显示
          if (widget.showMap != null)
            GestureDetector(
              onTap: () {},
              child: CommonImage("images/icons/widget_search_bar_map.png"),
            )
        ],
      ),
    );
  }
}
