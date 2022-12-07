import 'package:get/get.dart';

import '../controllers/to_read13_controller.dart';

class ToRead13Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead13Controller>(
      () => ToRead13Controller(),
    );
  }
}
