import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812), //设计稿的尺寸
      minTextAdapt: true, //是否根据屏幕宽度自动缩放字体
      splitScreenMode: true, //是否支持分屏模式
      builder: (context, child) {
        return GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.LAYOUT, //初始路由路径
          getPages: AppPages.routes, //定义所有命名路由
          enableLog: true, //调试日志
          // theme: SaTheme().getTheme(), //主题配置
          theme: ThemeData(
            primaryColor: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue, // 导航栏背景色
              foregroundColor: Colors.black, // 导航栏文字和图标颜色
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.blue, // 底部导航栏背景色
              selectedItemColor: Colors.white, // 选中项颜色
              unselectedItemColor: Colors.grey, // 未选中项颜色
            ),
          ),
          defaultTransition: Transition.cupertino, // 切换动画模式
          popGesture: Get.isPopGestureEnable, //是否启用手势返回功能
          debugShowCheckedModeBanner: false, //去掉右上角debug图标
        );
      },
    ),
  );
}
