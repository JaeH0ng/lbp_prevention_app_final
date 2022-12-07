import 'package:get/get.dart';

import '../controllers/to_read6_controller.dart';

class ToRead6Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToRead6Controller>(
      () => ToRead6Controller(),
    );
  }
}
