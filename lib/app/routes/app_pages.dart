import 'package:get/get.dart';

import '../modules/deposit/bindings/deposit_binding.dart';
import '../modules/deposit/views/deposit_view.dart';
import '../modules/discount/bindings/discount_binding.dart';
import '../modules/discount/views/discount_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kefu/bindings/kefu_binding.dart';
import '../modules/kefu/views/kefu_view.dart';
import '../modules/layout/bindings/layout_binding.dart';
import '../modules/layout/views/layout_view.dart';
import '../modules/my/bindings/my_binding.dart';
import '../modules/my/views/my_view.dart';
import '../modules/notice/bindings/notice_binding.dart';
import '../modules/notice/views/notice_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const LAYOUT = Routes.LAYOUT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DISCOUNT,
      page: () => const DiscountView(),
      binding: DiscountBinding(),
    ),
    GetPage(name: _Paths.MY, page: () => const MyView(), binding: MyBinding()),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.DEPOSIT,
      page: () => const DepositView(),
      binding: DepositBinding(),
    ),
    GetPage(
      name: _Paths.NOTICE,
      page: () => const NoticeView(),
      binding: NoticeBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUT,
      page: () => const LayoutView(),
      binding: LayoutBinding(),
    ),
    GetPage(
      name: _Paths.KEFU,
      page: () => const KefuView(),
      binding: KefuBinding(),
    ),
  ];
}
