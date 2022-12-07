import 'package:get/get.dart';

import '../controllers/to_read10_controller.dart';

class ToRead10Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead10Controller>(
      () => ToRead10Controller(),
    );
  }
}
