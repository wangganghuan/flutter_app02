import 'package:flutter/material.dart';
import './index/home_page.dart';
import './index/member_page.dart';
import './index/search_page.dart';
import './index/shopping_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //底部导航切换
  final List<BottomNavigationBarItem> _bottonTabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
    BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("分类")),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), title: Text("购物车")),
    BottomNavigationBarItem(
        icon: Icon(Icons.perm_identity), title: Text("会员中心")),
  ];
  //底部导航页面切换
  final List _TabBodies = [
    HomePage(),
    SearchPage(),
    ShoppingPage(),
    MemberPage()
  ];
  //底部导航选中的位置
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            //顶部
            title: Text("百姓生活+"),
          ),
          //内容部分
          body: this._TabBodies[_currentIndex],
          //底部导航
          bottomNavigationBar: BottomNavigationBar(
            //可以放多个按钮
            type: BottomNavigationBarType.fixed,
            //底部选中
            currentIndex: this._currentIndex,
            //选中颜色
            fixedColor: Colors.red,
            //底部导航切换
            items: this._bottonTabs,
            //点击事件
            onTap: (value) {
              setState(() {
                this._currentIndex = value;
                print(this._currentIndex);
              });
            },
          )),
    );
  }
}
