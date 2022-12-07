import 'package:get/get.dart';

import '../controllers/to_read_controller.dart';

class ToReadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToReadController>(
      () => ToReadController(),
    );
  }
}
