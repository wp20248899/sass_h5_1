import 'package:get/get.dart';

class LayoutController extends GetxController {
  //TODO: Implement LayoutController
  final RxInt actInx = 0.obs;

  void onTabTapped(int index) {
    print('$index');
    actInx.value = index;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
