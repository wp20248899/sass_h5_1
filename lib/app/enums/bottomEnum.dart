import 'package:flutter/material.dart';
import 'package:sass_h5_1/app/modules/deposit/views/deposit_view.dart';
import 'package:sass_h5_1/app/modules/discount/views/discount_view.dart';
import 'package:sass_h5_1/app/modules/home/views/home_view.dart';
import 'package:sass_h5_1/app/modules/kefu/views/kefu_view.dart';
import 'package:sass_h5_1/app/modules/my/views/my_view.dart';
import 'package:sass_h5_1/app/routes/app_pages.dart';

// 底部导航切换的菜单组件
final pages = <Widget>[
  const HomeView(),
  const DiscountView(),
  const KefuView(),
  const DepositView(),
  const MyView(),
];

// 导航标题
final titles = <String>['首页', '优惠', '存款', '客服', '我的'];

// 底部菜单需要显示的组所有的子项
final List<BottomNavigationBarItem> bottomNavBarItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
  const BottomNavigationBarItem(icon: Icon(Icons.view_list), label: '优惠'),
  const BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: '存款'),
  const BottomNavigationBarItem(icon: Icon(Icons.phone_in_talk), label: '客服'),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
];

// 定义TabItemData类型
class TabItemData {
  final String icon;
  final String? title;
  final String route;
  final Widget view;
  TabItemData({
    this.title,
    required this.icon,
    required this.route,
    required this.view,
  });
}

List<TabItemData> list = [
  TabItemData(icon: 'home', route: Routes.HOME, view: HomeView(), title: "首页"),
  TabItemData(
    icon: 'discount',
    route: Routes.DISCOUNT,
    view: DiscountView(),
    title: '优惠',
  ),
  TabItemData(
    icon: 'deposit',
    route: Routes.DEPOSIT,
    view: DepositView(),
    title: '存款',
  ),
  TabItemData(icon: 'kefu', route: Routes.KEFU, view: KefuView(), title: '客服'),
  TabItemData(icon: 'my', route: Routes.MY, view: MyView(), title: '我的'),
];
