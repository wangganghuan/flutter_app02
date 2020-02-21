//固定写法
//登陆
import '../index/member/log.dart';
//注册
import '../index/member/register.dart';
//整租
import '../index/member/home/tenancy/entire_tenancy.dart';
//合租
import '../index/member/home/tenancy/joint_tenancy.dart';
//地图找房
import '../index/member/home/tenancy/apartment_hunting.dart';
//去出租
import '../index/member/home/tenancy/rent_out.dart';
//设置
import 'package:flutter_app02/pages/index/member/mine/setting.dart';
//房屋管理
import 'package:flutter_app02/pages/index/member/mine/building_management/index.dart';
//发布房源
import 'package:flutter_app02/pages/index/member/mine/building_management/room_add.dart';

import 'package:flutter/material.dart';

final routes = {
  //登陆
  "/log": (context) => LogPage(),
  //注册
  "/register": (context) => RegisterPage(),
  //整租
  "/entiretenancy": (context) => EntireTenancy(),
  //合租
  "/jointtenancy": (context) => JointTenancy(),
  //地图找房
  "/apartmenthunting": (context) => ApartmentHunting(),
  //去出租
  "/rentout": (context) => RentOut(),
  //设置
  "/setting": (context) => MineSetting(),
  //房屋管理
  "/buildingmanagement": (context) => BuildingManagementIndex(),
  //发布房源
  "/roomadd": (context) => RoomAdd(),
};
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
