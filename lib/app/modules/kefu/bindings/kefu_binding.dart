import 'package:get/get.dart';

import '../controllers/kefu_controller.dart';

class KefuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KefuController>(
      () => KefuController(),
    );
  }
}
