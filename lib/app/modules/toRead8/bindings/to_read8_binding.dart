import 'package:get/get.dart';

import '../controllers/to_read8_controller.dart';

class ToRead8Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead8Controller>(
      () => ToRead8Controller(),
    );
  }
}
