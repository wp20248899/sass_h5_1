import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/layout_controller.dart';
import 'package:sass_h5_1/app/enums/bottomEnum.dart';

class LayoutView extends GetView<LayoutController> {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.actInx.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: bottomNavBarItems,
          onTap: controller.onTabTapped,
          currentIndex: controller.actInx.value,
          iconSize: 25.0,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
