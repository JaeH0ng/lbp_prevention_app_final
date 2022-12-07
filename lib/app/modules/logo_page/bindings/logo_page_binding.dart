import 'package:get/get.dart';

import '../controllers/logo_page_controller.dart';

class LogoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogoPageController>(
      () => LogoPageController(),
    );
  }
}
